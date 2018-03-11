require_relative './chapter2'

mrandom = memoize { Random.rand }
puts (mrandom[] != mrandom[])

mseed_random = memoize { |n| Random.new(n) }
puts (mseed_random[777] == mseed_random[777])
puts (mseed_random[777] != mseed_random[737])
