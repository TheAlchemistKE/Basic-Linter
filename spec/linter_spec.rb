require 'rspec'
require_relative '../lib/linter'

describe Linter do
  describe '#check_html' do
    describe 'with invalid HTML' do
      it 'should return invalid HTML' do
        linter = Linter.new('<h1>Kelyn</span')
        expect(linter.check_html).to eql('Invalid HTML')
      end
    end
    describe 'with valid HTML' do
      it 'should return valid HTML' do
        linter = Linter.new('<h1>Kelyn</h1>')
        expect(linter.check_html).to eql('Valid HTML')
      end
    end
  end
  describe '#check_json' do
    describe 'with valid JSON object' do
      it 'should return valid JSON object.' do
        lint = Linter.new(%({"a": "b", "c": 1, "d": true}))
        expect(lint.check_json).to eql("Valid JSON object")
      end
    end
    describe 'with invalid JSON object' do
      it 'should return invalid JSON object' do
        lint = Linter.new("123")
        expect(lint.check_json).to eql("Invalid JSON object")
      
      end
    end
  end
  describe '#check_yml' do
    it 'should check yml' do
      expect(subject.check_yml).to eql('Checking YML...')
    end
  end
  describe '#check_csv' do
    it 'should check csv' do
      expect(subject.check_csv).to eql('Checking CSV...')
    end
  end
end
