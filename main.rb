# frozen_string_literal: true
# rubocop:disable all

IDENTITY = ->(x) { x }
SUCESSOR = ->(n) { ->(f) { ->(x) { f.call(n.call(f).call(x)) }}}
SUM = ->(m) { ->(n) { ->(f) { ->(x) { m.call(f).call(n.call(f).call(x)) }}}}
MULT = ->(m) { ->(n) { ->(f) { ->(x) { m.call(n.call(f)).call(x) }}}}
# EXP = ->(b,n) { ->(f) { ->(x) { b.call() }}}

ZERO = ->(f) { IDENTITY }
ONE  = SUCESSOR.call(ZERO)
TWO  = SUCESSOR.call(ONE)
THREE  = SUCESSOR.call(TWO)
FOUR  = SUCESSOR.call(THREE)
FIVE  = SUCESSOR.call(FOUR)
SIX  = SUCESSOR.call(FIVE)
SEVEN  = SUCESSOR.call(SIX)
EIGHT  = SUCESSOR.call(SEVEN)
NINE  = SUCESSOR.call(EIGHT)

def to_number(n) = n.call(->(i) { i + 1 }).call(0)

pp to_number(MULT.call(TWO).call(SEVEN))
pp to_number(MULT.call(TWO).call(EIGHT))
pp to_number(MULT.call(NINE).call(NINE))
