### About this project

I saw a talk in 2023 about `Church Encoding` and felt excited to learn more
about it, but I didn't last longer than I wanted, so I decided this time to create
a repository and start from scratch again, looking inside the church encoding itself
and trying to understand it, and also trying to implement it in ruby.

The talk was about the `Church Encoding` and how it works, how it can be used
to implement a mathematical language, this is my goal here, learning while
implmenting it in ruby as a way to develop my logic skills.

I'll document my progress in this README, and also I'll try to explain the
concepts I'm learning in the code and my thoughts while learning more about it,
so if you want to learn more about it, you can read the
[wiki](https://en.wikipedia.org/wiki/Church_encoding) about it.

_Learning until I go insane or learn everyhing about it._

---

### Day one

I've learned the basics of it, what it is, how numbers works here, understood
that it isn't about numbers but about calls, but if I referee numbers in this
README is because I'm taking them as numbers, since all calls do `++i` and I'm
using it to test the numbers of call.

`SUCESSOR` function kept me thinking all the time while I was doing it.
Understand it isn't hard itself, it basically gets the first number and calls
once more, but the way I wrote functions and call them and also the names of
params are keeping me confuse, but I want to stay doing it in this way,
eventually it won't be a problem anymore, need to improve my logic, and it has
being a really good exercise.

### Day two

Here I've done `sum`, `mult` and `exp` functions, it is a huge exercise, really
helpfull and helped me understand a little bit more about lambda functions and
how it interacts with each other, really cool see how it is going.

`Sum` was really simple to do, basically it runs the first number the number of
times it runs the second number, so if I have, `ONE` and `TWO` it will run
`TWO` first and twice, and then the result of it, will be the argument for the
`ONE` function callback.

`MULT` was kind of confusing at first, but when I realized that it's callback
should execute the another number instead of calls the count callback, it went
good and "easy", but with this functions I finally got how things actually
works.

`EXP` was wrong, will be fixing it by tomorrow, forgot to test it with
different values, and when I realized, already pushed to github and it was
actually an multiplication instead of exponentiation.

### Day three

I can't explain how `EXP` really works, I've already tried a lot in my brain,
in paper, talking about with some friends but I feel that the more I try, more
I feel dumb.

`EXP` I looked for the formula inside the wiki, and transpilated it to ruby, but I'm
still not understanding it. I will try more when I get back here.

---
_Created by [@ally1002](https://github.com/ally1002)_
