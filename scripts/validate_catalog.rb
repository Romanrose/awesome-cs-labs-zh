#!/usr/bin/env ruby
# frozen_string_literal: true

require "date"
require "uri"
require "yaml"

CATALOG = ARGV.fetch(0, "catalog/index.yaml")
REQUIRED_FIELDS = %w[
  id title subject institution kind level languages platforms url environment
  verification outputs status checked source_access
].freeze
ALLOWED_KINDS = %w[course judge lab platform project tutorial wiki].freeze
ALLOWED_LEVELS = %w[intro undergraduate advanced research].freeze
ALLOWED_STATUSES = %w[active seasonal archived needs-check].freeze
ALLOWED_SOURCE_ACCESS = %w[public course-provided external-sandbox not-applicable].freeze

def failure(message)
  warn "catalog validation failed: #{message}"
  exit 1
end

def valid_url?(value)
  uri = URI.parse(value)
  uri.is_a?(URI::HTTP) && !uri.host.nil?
rescue URI::InvalidURIError
  false
end

items = YAML.safe_load(File.read(CATALOG), permitted_classes: [Date], aliases: false)
failure("top-level value must be a list") unless items.is_a?(Array)

seen_ids = {}
items.each_with_index do |item, index|
  label = "record ##{index + 1}"
  failure("#{label} must be a mapping") unless item.is_a?(Hash)

  missing = REQUIRED_FIELDS.reject { |field| item.key?(field) }
  failure("#{label} is missing #{missing.join(', ')}") unless missing.empty?

  id = item["id"]
  failure("#{label} has invalid id #{id.inspect}") unless id.is_a?(String) && id.match?(/\A[a-z0-9]+(?:-[a-z0-9]+)*\z/)
  failure("duplicate id #{id}") if seen_ids.key?(id)
  seen_ids[id] = true

  %w[title subject institution].each do |field|
    failure("#{id}.#{field} must be a non-empty string") unless item[field].is_a?(String) && !item[field].strip.empty?
  end
  %w[languages platforms environment verification outputs].each do |field|
    failure("#{id}.#{field} must be a non-empty list") unless item[field].is_a?(Array) && !item[field].empty? && item[field].all? { |value| value.is_a?(String) && !value.empty? }
  end
  failure("#{id}.kind is not supported") unless ALLOWED_KINDS.include?(item["kind"])
  failure("#{id}.level is not supported") unless ALLOWED_LEVELS.include?(item["level"])
  failure("#{id}.status is not supported") unless ALLOWED_STATUSES.include?(item["status"])
  failure("#{id}.source_access is not supported") unless ALLOWED_SOURCE_ACCESS.include?(item["source_access"])
  failure("#{id}.url must be an http(s) URL") unless item["url"].is_a?(String) && valid_url?(item["url"])
  if item.key?("source_url")
    failure("#{id}.source_url must be an http(s) URL") unless item["source_url"].is_a?(String) && valid_url?(item["source_url"])
  end
  failure("#{id} is marked public without source_url") if item["source_access"] == "public" && !item.key?("source_url")
  failure("#{id}.checked must be a YAML date") unless item["checked"].is_a?(Date)
  failure("#{id} is a security resource without safety_note") if item["subject"] == "security" && !(item["safety_note"].is_a?(String) && !item["safety_note"].empty?)
end

subjects = items.map { |item| item["subject"] }.uniq.length
sources = items.count { |item| item.key?("source_url") }
puts "catalog valid: #{items.length} records, #{subjects} subjects, #{sources} source repositories"
