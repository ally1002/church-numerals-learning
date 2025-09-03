# frozen_string_literal: true
# rubocop:disable all

IDENTITY = ->(x) { x }
SUCESSOR = ->(n) { ->(f) { ->(x) { f.call(n.call(f).call(x)) } }}

ZERO = ->(f) { IDENTITY }
ONE  = ->(f) { ->(x) { f.call(x) } }
TWO  = ->(f) { ->(x) { f.call(f.call(x)) } }
THREE  = SUCESSOR.call(TWO)

def to_number(n) = n.call(->(i) { i + 1 }).call(0)

result = to_number(THREE)
pp result
