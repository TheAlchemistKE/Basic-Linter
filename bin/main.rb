#!/usr/bin/env ruby

require_relative '../lib/linter'

lint = Linter.new('<span>Kelyn</h1>')
puts(lint.check_html)
