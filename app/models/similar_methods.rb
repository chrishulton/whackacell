class SimilarMethods
  def foo(a, b, c, d)
    result = []

    string = "this is a long string, which is going to be copied"

    if a < b
      string << "a is less than b"
    end

    if b < d
      string << "b is less than d"
    end

    if c && d
      result << 1
      result << 2
    end

    while (c < d)
      while (a > b)
        z = a + b + c + d
        y = z - 3 + 4
        result << y
      end
    end

    result = []

    string = "this is a long string, which is going to be copied"

    if a < b
      string << "a is less than b"
    end

    if b < d
      string << "b is less than d"
    end

    if c && d
      result << 1
      result << 2
    end

    while (c < d)
      while (a > b)
        z = a + b + c + d
        y = z - 3 + 4
        result << y
      end
    end

    result
  end

  def foo2(a, b, c, d)
    result = []

    string = "this is a long string, which is going to be copied"

    if a < b
      string << "a is less than b"
    end

    if b < d
      string << "b is less than d"
    end

    if c && d
      result << 1
      result << 2
    end

    while (c < d)
      while (a > b)
        z = a + b + c + d
        y = z - 3 + 4
        result << y
      end
    end
  end
end
