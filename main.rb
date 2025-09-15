# frozen_string_literal: true
# rubocop:disable all

IDENTITY = ->(x) { x }
SUCCESSOR = ->(n) { ->(f) { ->(x) { f.call(n.call(f).call(x)) }}}
SUM = ->(m) { ->(n) { ->(f) { ->(x) { m.call(f).call(n.call(f).call(x)) }}}}

MULT = ->(m) { ->(n) { ->(f) { ->(x) { m.call(n.call(f)).call(x) }}}}
EXP = ->(b) { ->(n) { ->(f) { ->(x) { n.call(b).call(f).call(x) } } } }

PREDECESSOR = ->(n) { ->(f) { ->(x) { n.call(->(g) { ->(h) { h.call(g.call(f)) } }).call(->(u) { x }).call(->(u) { u }) }}}

# ZERO = ->(f) { IDENTITY }
# ONE  = SUCCESSOR.call(ZERO)
# TWO  = SUCCESSOR.call(ONE)
# THREE  = SUCCESSOR.call(TWO)
# FOUR  = SUCCESSOR.call(THREE)
# FIVE  = SUCCESSOR.call(FOUR)
# SIX  = SUCCESSOR.call(FIVE)
# SEVEN  = SUCCESSOR.call(SIX)
# EIGHT  = SUCCESSOR.call(SEVEN)
# NINE  = SUCCESSOR.call(EIGHT)

def to_number(n) = n.call(->(i) { i + 1 }).call(0)

pp '-----------------------'

THREE  = ->(f) { ->(x) { f.call(f.call(f.call(x))) }}
pp THREE.call(->(g) { ->(h) { h.call(g.call(->(i) { i + 1 })) } }).call(->(u) { 0 }).call(->(u) { u })

pp '-----------------------'

# pp to_number(PREDECESSOR.call(TWO))
# pp to_number(PREDECESSOR.call(FOUR))
# pp to_number(PREDECESSOR.call(EIGHT))
