### About this project

I saw a talk in 2023 about `Church Encoding` and felt excited to learn more
about it, but I didn't last longer than I wanted, so I decided this time to create
a repository and start from scratch again, looking inside the church encoding itself
and trying to understand it, and also trying to implement it in ruby.

The talk was about the `Church Encoding` and how it works, how it can be used
to implement a mathematical language, this is my goal here, learning while
implementing it in ruby as a way to develop my logic skills.

I'll document my progress in this README, and also I'll try to explain the
concepts I'm learning in the code and my thoughts while learning more about it,
so if you want to learn more about it, you can read the
[wiki](https://en.wikipedia.org/wiki/Church_encoding) about it.

I'll document my progress in this README. I'll also try to explain my thought
process and the concepts I'm learning. If you want to learn more, you can read
the [Wikipedia article](https://en.wikipedia.org/wiki/Church_encoding) on the topic.

_Learning until I go insane or learn everything about it._

---

### Day one

I've learned the basics of it, what it is, how numbers works here, understood
that it isn't about numbers but about calls, but if I referee numbers in this
README is because I'm taking them as numbers, since all calls do `++i` and I'm
using it to test the numbers of call.

`SUCCESSOR` function kept me thinking all the time while I was doing it.
Understand it isn't hard itself, it basically gets the first number and calls
once more, but the way I wrote functions and call them and also the names of
params are keeping me confuse, but I want to stay doing it in this way,
eventually it won't be a problem anymore, need to improve my logic, and it has
being a really good exercise.

### Day two

Here I've implemented the `sum`, `mult` and `exp` functions, it is a huge
exercise, really helpful and helped me understand a little bit more about
lambda functions and how they interact with each other, really cool see how it
is going.

`Sum` was really simple to do, basically it runs the first number the number of
times it runs the second number, so if I have, `ONE` and `TWO` it will run
`TWO` first and twice, and then the result of it, will be the argument for the
`ONE` function callback.

`MULT` was kind of confusing at first, but when I realized that its callback
should execute the other number instead of calls the count callback, it went
well and became "easy", but with this functions I finally got how things
actually works.

`EXP` was wrong, I'll be fixing it by tomorrow, forgot to test it with
different values, and when I realized, I had already pushed to github and it
was actually perfoming multiplication instead of exponentiation.

### Day three

I can't explain how `EXP` really works, I've already tried a lot, in my head
in paper, talking about with some friends but I feel that the more I try, more
I feel dumb.

I can't explain how EXP really works. I've already tried thinking it through,
writing it out on paper, and talking about it with friends, but the more I try,
the dumber I feel.

### Day four

Today was really exciting, and I've finally learned how to implement
exponentiation in Church encoding. It's really simple when you see the path it
takes. The exponentiation function takes a base b and an exponent n. For
example, to calculate 5^3, the base b is FIVE and the exponent n is THREE. The
operation works by applying the exponent n to the base b. The THREE function
takes FIVE as its input and creates a new function by composing FIVE with
itself three times (FIVE x FIVE x FIVE). This composition results in a new
Church numeral (in this case, for 125). To convert this numeral into an
integer, we then provide it with an incrementing function and a starting value
of 0.

Tomorrow I will search out for prediction, It doesn't make any sense, how can I
decrease one function call inside a function call, I'll try to figure this out tomorrow, gotta work now.

---
_Created by [@ally1002](https://github.com/ally1002)_
