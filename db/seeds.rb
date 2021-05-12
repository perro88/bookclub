Author.destroy_all
Genre.destroy_all
horror = Genre.create(name: "Horror")
thriller = Genre.create(name: "Thriller")
fantasy = Genre.create(name: "Fantasy")
scifi = Genre.create(name: "Sci-Fi")

sk = Author.create(first_name: "Stephen", last_name: "King")
ia = Author.create(first_name: "Isaac", last_name: "Asimov")

sk.books.create(title: "IT", genres: [horror, thriller])
sk.books.create(title: "The Shining", genres: [horror])
sk.books.create(title: "Carrie", genres: [thriller])

ia.books.create(title: "Foundation", genres: [scifi, thriller])
ia.books.create(title: "Robots and Empire", genres: [scifi])
