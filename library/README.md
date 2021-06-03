### Library

Wrote unit tests to cover the functionality in a Library class.

### Instructions
Let's think about assertions in a little more detail.

Look at the code below. For the four methods `find_book` `add_book`, `remove_book`, and `all_books_by_subject` ask yourself the question 'what is the purpose of this unit of code'? Given some input, what output or change in state would you expect to see? Can you see the desired change of state by calling `list_books`?

Based on your answers to this question, imagine you were to write unit tests to cover each of the five methods - what would your assertions be? For now don't worry about RSpec syntax or how this assertion could actually be written - that will come later - just think about what it would be.

```ruby
class Library
  def initialize
    @books = [
      {title: 'POODR', author: 'Sandi Metz', subject: 'OOP'},
      {title: 'Learn Ruby The Hard Way', author: 'Zed Shaw', subject: 'Ruby'},
      {title: 'Eloquent JavaScript', author: 'Marijn Haverbeke', subject: 'JS'},
      {title: 'The Well Grounded Rubyist', author: 'Sandi Metz', subject: 'Ruby'},
    ]
  end

  def find_book(title)
    @books.find { |book| book[:title] == title }
  end

  def add_book(book)
    @books.push(book)
  end

  def remove_book(title)
    @books.delete_if { |book| book[:title] == title }
  end

  def all_books_by_subject(subject)
    @books.select { |book| book[:subject] == subject }
  end
  
  def list_books
    @books
  end
end
```