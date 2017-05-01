class ClassMethods
  def self.nested_logic
    if true
      if true
        if true
          if true
            if true
              puts "foo"
            end
          end
        end
      end
    end
  end

  def self.major_arg_exceeded(a, b, c, d, e, f, g)
    puts "too many args, major"
  end

  def self.critical_complex_logic
    puts "foo" if ((true && false) || ((false || true) && (true || false)) || true && false)
  end

  def self.long_method
    # print number 1
    # 12 times
    puts "1"
    puts "1"
    puts "1"
    puts "1"
    puts "1"
    puts "1"
    puts "1"
    puts "1"
    puts "1"
    puts "1"
    puts "1"
    puts "1"

    # print number 13
    # 10 times
    print "13"
    print "13"
    print "13"
    print "13"
    print "13"
    print "13"
    print "13"
    print "13"
    print "13"
    print "13"
  end

  def self.longer_method
    # this is 50 lines of code, which
    # will trigger another threshold
    puts "ok"
    puts "ok"
    puts "ok"
    puts "ok"
    puts "ok"
    puts "ok"
    puts "ok"
    puts "ok"
    puts "ok"
    puts "ok"
    puts "ok"
    puts "ok"
    puts "ok"
    puts "ok"
    puts "ok"
    puts "ok"
    puts "ok"
    puts "ok"
    puts "ok"
    puts "ok"
    puts "ok"
    puts "ok"
    puts "ok"
    puts "ok"
    puts "ok"
    puts "ok"
    puts "ok"
    puts "ok"
    puts "ok"
    puts "ok"
    puts "ok"
    puts "ok"
    puts "ok"
    puts "ok"
    puts "ok"
    puts "ok"
    puts "ok"
    puts "ok"
    puts "ok"
    puts "ok"
    puts "ok"
    puts "ok"
    puts "ok"
    puts "ok"
    puts "ok"
    puts "ok"
    puts "ok"
    puts "ok"
    puts "ok"
    puts "ok"
  end

  def self.return_statements(a)
    if a > 100
      return "high"
    end

    if a > 200
      return "really high"
    end

    if a > 300
      return "still going"
    end

    if a < 100
      return "lower"
    end

    if a == 100
      return "100"
    end
  end
end
