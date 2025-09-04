# frozen_string_literal: true
# rubocop:disable all

IDENTITY = ->(x) { x }
SUCESSOR = ->(n) { ->(f) { ->(x) { f.call(n.call(f).call(x)) } }}
SUM = ->(m,n) { ->(f) { ->(x) { m.call(f).call(n.call(f).call(x)) } }}

ZERO = ->(f) { IDENTITY }
ONE  = ->(f) { ->(x) { f.call(x) } }
TWO  = ->(f) { ->(x) { f.call(f.call(x)) } }
THREE  = SUCESSOR.call(TWO)
FOUR  = SUCESSOR.call(THREE)
FIVE  = SUCESSOR.call(FOUR)
SIX  = SUCESSOR.call(FIVE)
SEVEN  = SUCESSOR.call(SIX)
EIGHT  = SUCESSOR.call(SEVEN)
NINE  = SUCESSOR.call(EIGHT)

def to_number(n) = n.call(->(i) { i + 1 }).call(0)

pp to_number(MULT.call(TWO, ZERO))
