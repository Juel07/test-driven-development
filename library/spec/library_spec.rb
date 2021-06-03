require "./lib/library.rb"

describe Library do
  # let(:lib) { lib = Library.new }
  # before do
  lib = Library.new
  # end

  it "can find a specific book" do
    expect(lib.find_book("Eloquent JavaScript")).to eq(
      { title: "Eloquent JavaScript", author: "Marijn Haverbeke", subject: "JS" },
    )
  end

  it "can add a new book" do
    expect(lib.add_book({ title: "Joy of Ruby", author: "Ivan Urya", subject: "Ruby" })).to eq(
      [
        { title: "POODR", author: "Sandi Metz", subject: "OOP" },
        { title: "Learn Ruby The Hard Way", author: "Zed Shaw", subject: "Ruby" },
        { title: "Eloquent JavaScript", author: "Marijn Haverbeke", subject: "JS" },
        { title: "The Well Grounded Rubyist", author: "Sandi Metz", subject: "Ruby" },
        { title: "Joy of Ruby", author: "Ivan Urya", subject: "Ruby" },
      ]
    )
  end

  it "can remove a book" do
    expect(lib.remove_book("Eloquent JavaScript")).to eq(
      [
        { title: "POODR", author: "Sandi Metz", subject: "OOP" },
        { title: "Learn Ruby The Hard Way", author: "Zed Shaw", subject: "Ruby" },
        { title: "The Well Grounded Rubyist", author: "Sandi Metz", subject: "Ruby" },
        { title: "Joy of Ruby", author: "Ivan Urya", subject: "Ruby" },
      ]
    )
  end

  it "can list all the books on a specific subject" do
    expect(lib.all_books_by_subject("Ruby")).to eq(
      [
        { title: "Learn Ruby The Hard Way", author: "Zed Shaw", subject: "Ruby" },
        { title: "The Well Grounded Rubyist", author: "Sandi Metz", subject: "Ruby" },
        { title: "Joy of Ruby", author: "Ivan Urya", subject: "Ruby" },
      ]
    )
  end
end
# DanGyi23
