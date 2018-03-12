require_relative './chapter3'

mand = AndMonoid.new
mor = OrMonoid.new

values = [true, false, true, false, true]


puts values.reduce(mand.empty, &mand.append_proc)
puts values.reduce(mor.empty, &mor.append_proc)


mod3 = AdditionModulo3Monoid.new
puts [1,2,0,2,1,0,2].reduce(mod3.empty, &mod3.append_proc)
