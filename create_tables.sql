-- one2many books
CREATE TABLE IF NOT EXISTS authors (
  author_id SERIAL PRIMARY KEY,
  first_name VARCHAR(50) NOT NULL,
  last_name VARCHAR(50) NOT NULL,
  birth_date DATE,
  biography TEXT,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- many2one authors
CREATE TABLE IF NOT EXISTS books (
  book_id SERIAL PRIMARY KEY,
  title VARCHAR(50) NOT NULL,
  author_id INTEGER REFERENCES authors(author_id) ON DELETE SET NULL,
  description TEXT,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE IF NOT EXISTS genres (
  genre_id SERIAL PRIMARY KEY,
  name VARCHAR(50) UNIQUE NOT NULL,
  description TEXT,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- many2many books-genres
CREATE TABLE IF NOT EXISTS book_genres (
  book_id INTEGER REFERENCES books(book_id) ON DELETE CASCADE,
  genre_id INTEGER REFERENCES genres(genre_id) ON DELETE CASCADE,
  PRIMARY KEY (book_id, genre_id)
);
