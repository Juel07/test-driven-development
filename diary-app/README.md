# Debugging: Diary app

An introduction to debugging.

### Problem

In this program, there are three bugs. You have to find them, and fix them as systematically as possible:

- Tighten the loop (find the _exact line_ the bug is coming from)
- Get visibility (use `p` to inspect everything to help you home in on the exact line)
- Once you know the _one thing_ that is wrong, out of place, misspelled, or not giving you what you expect, try to fix it.

### User Stories

```
As a user
So I can never be late
I want to make an appointment with a time and title
```

```
As a user
So I can see all appointments I have today
I want to print out all upcoming appointments
```

```
As a user
So I can avoid conflicts
I want to see an error if I try to book when there is already an appointment
```

```
As a user
So I can know where my appointment is
I want to add a location to my appointment
```

```
As a user
So I can know where my appointment location is easily
I want to get a human-readable string of my appointment location
```