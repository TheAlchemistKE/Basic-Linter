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
      it 'should return valid JSON message.' do
      end
    end
    describe 'with invalid JSON object' do
      it 'should return valid'
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
