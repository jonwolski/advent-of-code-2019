#!/usr/bin/env ruby


def fuel_required_for(amount, acc=0)
  n = (amount.to_i / 3.0).floor - 2
  n.positive? ? fuel_required_for(n, n + acc) : acc
end

puts ARGF.each_line.map {|n|
  fuel_required_for(n)
}.sum

