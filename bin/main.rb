#!/usr/bin/env ruby
# Lint/UselessAssignment
# Style/SymbolProc
require 'tty-font'
require 'tty-prompt'
require 'colorize'
require_relative '../lib/linter'

font = TTY::Font.new(:standard)
prompt = TTY::Prompt.new
puts font.write('Linter').colorize(:green)
puts 'Welcome to your Basic Terminal Linter.'
puts 'You can check the following:'

text = prompt.ask('Paste the snippet to check:')
linter = Linter.new(text)

types = %w[HTML CSS JSON]

case prompt.enum_select('Select a type to lint', types)
when 'HTML'
  puts linter.check_html
when 'CSS'
  puts linter.check_css
when 'JSON'
  puts linter.check_json
else
  puts 'Please select a valid type.'
  types = %w[HTML CSS JSON]
  prompt.enum_select('Select a type to lint', types)
end
