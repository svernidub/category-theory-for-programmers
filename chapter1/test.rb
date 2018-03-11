require_relative './chapter1'

def method1(a); a + 100; end
def method2(b); b * 200; end

class Test
  def initialize(n)
    @n = n
  end

  def test
    func = composition('add2', 'mul3')
    func[@n]
  end

  private

  def add2(a)
    a + 2
  end

  def mul3(b)
    b * 3
  end
end


func1 = composition(->(a) { a + 1 },
                    ->(b) { b * 2 })

func2 = composition(proc { |a| a + 10 },
                    proc { |b| b * 20 })

func3 = composition(method(:method1), method(:method2))

func4 = composition(:method1, :method2)


test_obj = Test.new(10)

puts (func1[2])
puts (func2[2])
puts (func3[2])
puts (func4[4])
puts (test_obj.test)
