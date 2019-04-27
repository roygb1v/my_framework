class Demo
  
  @@a = 'hello'

  def initialize(n)
    @secret = n
  end

  def get_binding
    binding
  end
end

k1 = Demo.new(99)
b1 = k1.get_binding
k2 = Demo.new(-3)
b2 = k2.get_binding

p eval("@secret", b1)

p eval('@@a', b1)