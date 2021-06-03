## Debugging in Ruby

There are two exercises in this workshop, each exercise is program that has a number of bugs. You have to find them, and fix them as systematically as possible:

- Tighten the loop (find the exact line the bug is coming from)

- Get visibility (use `p` to inspect everything to help you home in on the exact line)

- Once you know the one thing that is wrong, out of place, misspelled, or not giving you what you expect, try to fix it.

> You should not change the tests, only the code, in this exercise.

## Setup

Clone this repo, and `cd` into it.

Run `bundle install`.

Use `cd` to navigate into the relevant exercise directory.

Run the tests with `rspec`.

## Hints

There are two main types of error you will see in these examples:

1. A bug in the code. This type of error means that the code won't run, and the error message will include information about the line of code causing the issue.

2. The code doesn't do what the tests expect it to. This means that the code works, but it doesn't give the output expected by the tests.

You will see both of these errors in this example. Each type of error gives a different kind of error message. Before you start to resolve a bug, try to identify it's type.

### Exercise 2 - Cipher

Debug this:

```ruby
def encode(plaintext, key)
  cipher = key.chars.uniq + (('a'...'z').to_a - key.chars)
  ciphertext_chars = plaintext.chars.map do |char|
    (65 + cipher.find_index(char)).chr
  end
  ciphertext_chars.join
end

def decode(ciphertext, key)
  cipher = key.chars.uniq + (('a'...'z').to_a - key.chars)
  plaintext_chars = ciphertext.chars.map do |char|
    cipher[65 - char.ord]
  end
  plaintext_chars.join
end

# Intended output:
#
# > encode("theswiftfoxjumpedoverthelazydog", "secretkey")
# => "EMBAXNKEKSYOVQTBJSWBDEMBPHZGJSL"
#
# > decode("EMBAXNKEKSYOVQTBJSWBDEMBPHZGJSL", "secretkey")
# => "theswiftfoxjumpedoverthelazydog"
```


## Interlude: Debugging mindsets

Exercise 1 probably felt easier than exercise 2. Many bugs will be so easy you don't even notice yourself fixing them. But most of the *time* you spend debugging will be on the hard bugs.

As such, it makes a lot of sense to develop your debugging skill. The more you improve that skill, the faster you are to extract the learning from the experience and move on to the next.

Let's consider two mindsets, 'brain modes', we might use to find bugs:

1. Find the fix
2. Find the problem

When **finding the fix** we're solution-oriented. We're driven to try the first thing we see in hope it works.

When **finding the problem** we're learning-oriented. We're driven to understand the code we look at before we make changes.

Most people instinctively jump to the fixing mindset, because in the real world we can often merely 'look for something out of place' in order to fix problems.

It's actually a pretty good strategy in most situations — but not for the hard bugs.