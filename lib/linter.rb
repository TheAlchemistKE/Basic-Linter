# Style/SymbolProc
require 'json'
require 'nokogiri'
require 'w3c_validators'

class Linter
  include W3CValidators
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
      'Valid JSON object'
    else
      'Invalid JSON object'
    end
  end

  def check_css
    results = @validator.validate_text(@text)
    if !results.errors.empty?
      'Invalid CSS'
    else
      'Valid CSS'
    end
  end
end
