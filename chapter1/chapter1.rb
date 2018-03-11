module Kernel
  def fid(a); a; end

  def composition(f1, f2)
    f1, f2 = [f1, f2].map do |f|
      case f
      when Proc, Method
        f
      when String, Symbol
        method(f)
      else
        raise ArgumentError, 'Functions must be proc, labmda or method object' \
                              "#{f.class} was submited"
      end
    end

    ->(*args) { f1[f2[*args]] }
  end
end
