class FileReader
    attr_reader :file_content

    def initialize(file_path)
        @file_path = file_path
    end
end