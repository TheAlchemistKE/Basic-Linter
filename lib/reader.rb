require 'strscan'

class FileReader
  attr_reader :file_content

  def initialize(file)
    @file_path = file
    @file_content = read_file(@file_path)
  end

  def read_file(file)
    scanned_data = File.readlines(file).map { |el| StringScanner.new(el) } if File.exist?(file)
    scanned_data
  end
end
