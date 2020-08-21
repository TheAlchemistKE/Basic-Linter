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
      err = "Error: Line #{line} is improperly spaced.\nLine #{line}: Add space before '#{sym}'" if s.matched != ' '
      s = data.scan_until(Regexp.new(sym))
    end
    err
  end

  def check_space_after(line, data, sym)
    err = ''
    data.reset
    data.scan_until(Regexp.new(sym))
    while data.matched?
      data.scan(/\s+/)
      err = "Error: Line #{line} is improperly spaced.\nLine #{line}: Add space after '#{sym}'" if data.matched != ' '
      data.scan_until(Regexp.new(sym))
    end
    err
  end

  def check_for_newline(line, data, sym)
    data.reset
    data.scan_until(Regexp.new(sym))
    while data.matched?
      err = "Error: Line #{line} lacks newline after '#{sym}'\nLine #{line}: Add newline after '#{sym}'" if data.eos?
      data.scan_until(Regexp.new(sym))
    end
    err
  end
end
