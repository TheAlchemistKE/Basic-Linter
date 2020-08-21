require 'strscan'
module Inspector
  def check_space_before(line, data, sym)
    err = ''
    data.reset
    s = data.scan_until(Regexp.new(sym))
    while data.matched?
      s = StringScanner.new(s.reverse)
      s.skip(Regexp.new(sym))
      s.scan(/\s+/)
      if s.matched != ' '
        err = "Error: Line #{line} is improperly spaced.\nLine #{line}: Add space before '#{sym}'" 
      end
      s = data.scan_until(Regexp.new(sym))
    end
    err
  end

  def check_space_after(line, data, sym); 
    err = ''
    data.reset
    data.scan_until(Regexp.new(sym))
    while data.matched?
      data.scan(/\s+/)
      if data.matched != ' '
        err = "Error: Line #{line} is improperly spaced.\nLine #{line}: Add space after '#{sym}'"
      end
      data.scan_until(Regexp.new(sym))
    end
    err
  end

  def check_for_newline(line, data, sym)
    data.reset
    data.scan_until(Regexp.new(sym))
    while data.matched?
      if data.eos?
        err = "Error: Line #{line} lacks newline after '#{sym}'\nLine #{line}: Add space newline '#{sym}'" 
      end
      data.scan_until(Regexp.new(sym))
    end
    err
  end
end
