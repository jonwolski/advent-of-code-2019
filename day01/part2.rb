#!/usr/bin/env ruby


def fuel_required_for(amount)
  n = (amount.to_i / 3.0).floor - 2
  n.positive? ? n + fuel_required_for(n) : 0
end

puts ARGF.each_line.map {|n|
  fuel_required_for(n)
}.sum

