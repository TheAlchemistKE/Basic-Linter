#!/usr/bin/ruby
require_relative '../lib/reader'
require_relative '../lib/linter'

file = ARGV.shift

# Check for file existence.
reader = FileReader.new(file)
linter = Linter.new(reader.file_content)

puts linter.lint_file
