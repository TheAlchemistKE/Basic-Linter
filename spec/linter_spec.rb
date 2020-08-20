require 'rspec'
require_relative '../lib/linter'

describe Linter do
    subject{ Linter.new }
    # Check for identation error.
    describe '#check_level' do
        context 'with improperly indented file' do
            
        end

        context 'with properly indented file' do
            
        end  
    end
    
    # Check for missing semi-colons
    describe '#check_semi_colons' do
        context 'with missing semi-colons' do
            
        end

        context 'with existing semi-colons' do
            
        end  
    end

    # Check for imbalanced curly braces.
    describe '#check_braces' do
        context 'with imbalanced braces' do
            
        end

        context 'with balanced braces' do
            
        end
    end

    # Check for invalid selectors. (Valid selectors )
    describe '#check_selector' do
        context 'with invalid selector' do
            
        end
        context 'with valid selector' do
            
        end
    end

    # Lint entire file.
    describe '#lint_file' do
        context 'with css errors' do
            
        end
        context 'with clean css' do
            
        end 
    end
end