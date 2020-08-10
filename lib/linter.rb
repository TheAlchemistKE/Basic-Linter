require 'json'
require 'nokogiri'
require 'w3c_validators'
  
include W3CValidators

class Linter
  def initialize(text)
    @text = text
    @validator = CSSValidator.new
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

  def check_css
    results = @validator.validate_text('body { margin: 0px; }')
    if results.errors.length > 0
      'Invalid CSS'
    else
      'Valid CSS'
    end
  end

  def check_csv
    'Checking CSV...'
  end
end
