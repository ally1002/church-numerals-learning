# frozen_string_literal: true
# rubocop:disable all

IDENTITY = ->(x) { x }
SUCCESSOR = ->(n) { ->(f) { ->(x) { f.call(n.call(f).call(x)) }}}
SUM = ->(m) { ->(n) { ->(f) { ->(x) { m.call(f).call(n.call(f).call(x)) }}}}

MULT = ->(m) { ->(n) { ->(f) { ->(x) { m.call(n.call(f)).call(x) }}}}
EXP = ->(b) { ->(n) { n.call(b) } }

ZERO = ->(f) { IDENTITY }
ONE  = SUCCESSOR.call(ZERO)
TWO  = SUCCESSOR.call(ONE)
THREE  = SUCCESSOR.call(TWO)
FOUR  = SUCCESSOR.call(THREE)
FIVE  = SUCCESSOR.call(FOUR)
SIX  = SUCCESSOR.call(FIVE)
SEVEN  = SUCCESSOR.call(SIX)
EIGHT  = SUCCESSOR.call(SEVEN)
NINE  = SUCCESSOR.call(EIGHT)

def to_number(n) = n.call(->(i) { i + 1 }).call(0)

pp '-------'

# pp to_number(EXP.call(FIVE).call(THREE))
# how that shit works? idk.
pp to_number(THREE.call(FIVE))
pp THREE.call(FIVE).call(->(i) { i + 1 }).call(0)

pp '-------'

pp to_number(EXP.call(FIVE).call(THREE))
