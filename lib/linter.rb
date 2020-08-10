require 'nokogiri'
require 'json'

class Linter
  def initialize(text)
    @text = text
  end

  def check_html
    doc = Nokogiri::HTML(@text) do |config|
      config.strict
    end
    if doc.errors.any?
      'Invalid HTML'
    else
      'Valid HTML'
    end
  end

  def check_json
    output = JSON.parse(@text)
    if output.is_a?(Hash) || output.is_a?(Array)
        return 'Valid JSON object'
    else
        return 'Invalid JSON object'
    end
  end

  def check_yml
    'Checking YML...'
  end

  def check_csv
    'Checking CSV...'
  end
end
