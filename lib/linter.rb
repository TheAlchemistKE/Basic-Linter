
require_relative './inspector'

class Linter
  attr_accessor :err

  include Inspector

  def initialize(data)
    @data = data
    @err = lint_file
  end

  def lint_file; 
    err = []
    err << properly_spaced?
    err << newline?
    err
  end

  def properly_spaced?
    err = []
    @data.each_with_index do |content, idx|
      err << check_space_before((idx + 1), content, '{')
      err << check_space_after((idx + 1), content, ':')
      err << check_space_after((idx + 1), content, ',')
    end
    err = err.reject(&:empty?).join("")
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
    err = err.reject(&:nil?).join("")
    err
  end
end
