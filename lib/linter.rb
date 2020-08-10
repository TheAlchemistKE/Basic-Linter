require 'nokogiri'
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
    'Checking JSON...'
  end

  def check_yml
    'Checking YML...'
  end

  def check_csv
    'Checking CSV...'
  end
end
