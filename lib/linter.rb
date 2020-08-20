class Linter
  
  def initialize(data)
    @data = data
  end

  def lint_file
  end


  def check_for_newline
    # Checks for newline after symbols such as ;, {, }.
    # If it doesn't find the new line, it returns an error.
    err = ''
    @data.each do |line, css|
      if !(css.include? "\n")
        err = "Line #{line} missing a newline"
      else
        err = "Newlines are honky dory."
      end
    end
    err
  end

  def check_space()
  end
  
end