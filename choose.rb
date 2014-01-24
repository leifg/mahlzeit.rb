#!/usr/bin/env ruby
# encoding: utf-8

require 'net/http'

places = [
  'Asia Today',
  'Cafe Camera',
  'Dragon Lounge',
  'Döner',
  'Hacker Bräuhaus',
  'Hans im Glück',
  'Sinans',
  'Tryp',
]

draw = Net::HTTP.get('www.random.org', "/integers/?num=1&min=1&max=#{places.length-1}&col=1&base=10&format=plain&rnd=new").to_i

puts "Today we are going to: #{places[draw].inspect}"