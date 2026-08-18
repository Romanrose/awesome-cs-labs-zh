#!/usr/bin/env ruby
# frozen_string_literal: true

require "date"
require "net/http"
require "uri"
require "yaml"

CATALOG = ARGV.fetch(0, "catalog/index.yaml")
MAX_REDIRECTS = 5

def request(url, redirects = 0)
  raise "too many redirects" if redirects > MAX_REDIRECTS

  uri = URI.parse(url)
  client = Net::HTTP.new(uri.host, uri.port)
  client.use_ssl = uri.scheme == "https"
  client.open_timeout = 10
  client.read_timeout = 15
  response = client.request(Net::HTTP::Get.new(uri.request_uri, { "User-Agent" => "awesome-cs-labs-zh link checker" }))

  return response if !response.is_a?(Net::HTTPRedirection) || response["location"].nil?

  request(URI.join(uri, response["location"]).to_s, redirects + 1)
end

items = YAML.safe_load(File.read(CATALOG), permitted_classes: [Date], aliases: false)
errors = []
warnings = []

items.each do |item|
  { "url" => item["url"], "source_url" => item["source_url"] }.compact.each do |field, url|
    begin
      response = request(url)
      code = response.code.to_i
      message = "#{item['id']}.#{field}: HTTP #{code}"
      if code.between?(200, 399)
        puts "PASS #{message}"
      elsif %w[needs-check archived].include?(item["status"])
        warnings << message
      else
        errors << message
      end
    rescue StandardError => error
      message = "#{item['id']}.#{field}: #{error.class}: #{error.message}"
      if %w[needs-check archived].include?(item["status"])
        warnings << message
      else
        errors << message
      end
    end
  end
end

warnings.each { |message| warn "WARN #{message}" }
errors.each { |message| warn "FAIL #{message}" }
puts "link check: #{items.length} official entries checked, #{warnings.length} warning(s), #{errors.length} error(s)"
exit(errors.empty? ? 0 : 1)
