require 'rspec'
require_relative '../lib/linter'

describe Linter do
    describe '#check_html' do 
        it 'should check html' do
            expect(subject.check_html).to eql("Checking HTML...")
        end
    end
    describe '#check_json' do
        it 'should check json' do
            expect(Linter.check_json).to eql("Checking JSON...")
        end
    end
    describe '#check_yml' do
        it 'should check yml' do
            expect(Linter.check_yml).to eql("Checking YML...")
        end
    end
    describe '#check_csv' do
        it 'should check csv' do
            expect(Linter.check_csv).to eql("Checking CSV...")
        end
    end
end