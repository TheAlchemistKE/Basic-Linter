require 'strscan'
class FileReader
  attr_reader :file_content

  def initialize(file)
    @file_path = file
    @file_content = read_file(@file_path)
  end

  def read_file(file)
    line_data = ''
    scanned_data = ''
    if File.exist?(file)
      line_data = File.readlines(file)
      scanned_data = line_data.map { |el| el = StringScanner.new(el) }
    end
    scanned_data
  end
end
