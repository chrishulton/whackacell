class InstanceMethods
  def minor_arg_exceeded(a, b, c, d, e)
    puts "too many args, minor"
  end

  def major_complex_logic
    puts "foo" if ((true && false) || ((false || true) && (true || false)) || true)
  end

  def long_method
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

  def longer_method
    # this is 100 lines of code, which
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

  def random_method_1
    puts "increment total method count"
  end

  def random_method_2
    puts "increment total method count"
  end

  def random_method_3
    puts "increment total method count"
  end

  def random_method_4
    puts "increment total method count"
  end

  def random_method_5
    puts "increment total method count"
  end

  def random_method_6
    puts "increment total method count"
  end

  def random_method_7
    puts "increment total method count"
  end

  def random_method_8
    puts "increment total method count"
  end

  def random_method_9
    puts "increment total method count"
  end

  def random_method_10
    puts "increment total method count"
  end

  def random_method_11
    puts "increment total method count"
  end

  def random_method_12
    puts "increment total method count"
  end

  def random_method_13
    puts "increment total method count"
  end

  def random_method_14
    puts "increment total method count"
  end

  def random_method_15
    puts "increment total method count"
  end

  def ok_method
    #nothing wrong with this
    #but will increase the lines of the class
    str = "begin"
    str << " another word"
    str << " and yet another word"

    words = str.split(" ")
    words.each do |word|
      puts word.upcase
    end

    puts "cool"
  end

  def nested_logic
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

  def return_statements(a)
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

    if a < 50
      return "lower still"
    end

    if a < 10
      return "very small"
    end
  end

  def minor_arg_exceeded(a, b, c, d, e)
    puts "too many args, minor"
  end

  def major_complex_logic
    puts "foo" if ((true && false) || ((false || true) && (true || false)) || true)
  end

  def long_method
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

  def longer_method
    # this is 100 lines of code, which
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

  def random_method_1
    puts "increment total method count"
  end

  def random_method_2
    puts "increment total method count"
  end

  def random_method_3
    puts "increment total method count"
  end

  def random_method_4
    puts "increment total method count"
  end

  def random_method_5
    puts "increment total method count"
  end

  def random_method_6
    puts "increment total method count"
  end

  def random_method_7
    puts "increment total method count"
  end

  def random_method_8
    puts "increment total method count"
  end

  def random_method_9
    puts "increment total method count"
  end

  def random_method_10
    puts "increment total method count"
  end

  def random_method_11
    puts "increment total method count"
  end

  def random_method_12
    puts "increment total method count"
  end

  def random_method_13
    puts "increment total method count"
  end

  def random_method_14
    puts "increment total method count"
  end

  def random_method_15
    puts "increment total method count"
  end

  def ok_method
    #nothing wrong with this
    #but will increase the lines of the class
    str = "begin"
    str << " another word"
    str << " and yet another word"

    words = str.split(" ")
    words.each do |word|
      puts word.upcase
    end

    puts "cool"
  end

end
