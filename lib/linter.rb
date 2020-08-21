require_relative './inspector'
require 'byebug'

class Linter
  include Inspector

  def initialize(data)
    @data = data
  end

  def lint_file
    err = []
    err << properly_spaced?
    err << newline?
    err.reject(&:empty?)
  end

  def properly_spaced?
    err = []
    @data.each_with_index do |content, idx|
      err << check_space_before((idx + 1), content, '{')
      err << check_space_before((idx + 1), content, '\(')
      err << check_space_after((idx + 1), content, '\)')
      err << check_space_after((idx + 1), content, ':')
      err << check_space_after((idx + 1), content, ',')
    end
    err = err.reject(&:empty?).join('')
    err
  end

  def newline?
    err = []
    @data.each_with_index do |content, idx|
      err << check_for_newline((idx + 1), content, '{')
      err << check_for_newline((idx + 1), content, '}')
      err << check_for_newline((idx + 1), content, ';')
    end
    # byebug
    err = err.reject(&:nil?).join('')
    err
  end
end
