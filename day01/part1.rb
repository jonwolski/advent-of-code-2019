#!/usr/bin/env ruby

puts ARGF.each_line.map {|n|
  (n.to_i / 3.0).floor - 2
}.sum
