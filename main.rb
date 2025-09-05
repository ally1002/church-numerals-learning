# frozen_string_literal: true
# rubocop:disable all

IDENTITY = ->(x) { x }
SUCESSOR = ->(n) { ->(f) { ->(x) { f.call(n.call(f).call(x)) }}}
SUM = ->(m) { ->(n) { ->(f) { ->(x) { m.call(f).call(n.call(f).call(x)) }}}}

MULT = ->(m) { ->(n) { ->(f) { ->(x) { m.call(n.call(f)).call(x) }}}}

EXP = ->(b) { ->(n) { n.call(b) } }
SECONDWAY_TO_EXP = ->(b) { ->(n) { ->(f) { ->(x) { n.call(b).call(f).call(x) } } } }

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

pp '-------'

# pp to_number(EXP.call(FIVE).call(THREE))
# how that shit works? idk.
pp to_number(THREE.call(FIVE))

pp '-------'

pp to_number(EXP.call(FIVE).call(THREE))
pp to_number(APPLY_N.call(FIVE).call(THREE))
