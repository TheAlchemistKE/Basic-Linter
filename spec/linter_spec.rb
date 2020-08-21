require 'rspec'
require_relative '../lib/reader'
require_relative '../lib/linter'

describe Linter do
  describe '#lint_file' do
    context "with no space after symbols" do
      it "should return space related linter errors" do
        path = 'spec/tests/no_space_after.css'
        reader = FileReader.new(path)
        linter = Linter.new(reader.file_content)
        expect(linter.lint_file).to(eql(["Error: Line 2 is improperly spaced.\nLine 2: Add space after ':'\nError: Line 5 is improperly spaced.\nLine 5: Add space after ','\n"]))
      end
    end
    context "with no space before symbols" do
      it "should return an error stating missing space before the symbol and how to solve it" do
        path = 'spec/tests/no_space_before.css'
        reader = FileReader.new(path)
        linter = Linter.new(reader.file_content)
        expect(linter.lint_file).to(eql(["Error: Line 1 is improperly spaced.\nLine 1: Add space before '{'\n"]))
      end

      
    end
    context "with no newline after symbols" do
      it "should throw an error and a suggestion on how to fix the error." do
        path = 'spec/tests/no_newline.css'
        reader = FileReader.new(path)
        linter = Linter.new(reader.file_content)
        expect(linter.lint_file).to(eql(["Error: Line 15 lacks newline after '}'\nLine 15: Add newline after '}'\n"]))
      end
    end
  end
  
end
