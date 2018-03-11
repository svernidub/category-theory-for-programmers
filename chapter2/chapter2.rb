module Kernel
  BLOCK_PRESENT_ERROR = 'Submit proc, lambda, Method object, method name' \
                        'OR (!) block.'

  def memoize(f=nil, &block)
    raise(ArgumentError, BLOCK_PRESENT_ERROR) if f && block
    f = block || f.dup
    @__memoize ||= {}
    @__memoize[f.hash] = {}
    ->(*args) { @__memoize[f.hash][args] ||= f[*args] }
  end
end
