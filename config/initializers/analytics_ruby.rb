Analytics = Segment::Analytics.new({
    write_key: 'SMaYFEasyPHDmLyvwoU99t9xHuDo9do0',
    on_error: Proc.new { |status, msg| print msg }
})