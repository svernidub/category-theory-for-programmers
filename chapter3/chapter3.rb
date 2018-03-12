class Monoid
  def empty
    raise 'Not Implemented yet'
  end

  def append
    raise 'Not emplemented yet'
  end

  def append_proc
    method(:append).to_proc
  end
end

class AndMonoid < Monoid
  def empty
     true
  end

  def append(a, b)
    a && b
  end
end


class OrMonoid < Monoid
  def empty
    false
  end

  def append(a, b)
    a || b
  end
end


class AdditionModulo3Monoid < Monoid
  def empty
    0
  end

  def append(a, b)
    (a + b) % 3
  end
end
