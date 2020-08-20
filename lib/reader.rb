require_relative './helper'
class FileReader
    include HelperMethods

    attr_reader :file_content
    def initialize(file)
        @file_path = file
        @file_content = read_file(@file_path)
    end

    def read_file(file)
        data = Hash.new
        if(File.exist?(file))
            File.readlines(file).each_with_index{|el, idx| data.merge!({(idx + 1 )=> el }) }
        end
        data
    end
end