-- authors
INSERT INTO authors (first_name, last_name, birth_date, biography) VALUES
('George', 'Orwell', '1903-06-25', 'English novelist, essayist, journalist and critic. His work is marked by lucid prose, social criticism, opposition to totalitarianism, and support of democratic socialism.'),
('Jane', 'Austen', '1775-12-16', 'English novelist known primarily for her six major novels, which interpret, critique and comment upon the British landed gentry at the end of the 18th century.'),
('Gabriel', 'García Márquez', '1927-03-06', 'Colombian novelist, short-story writer, screenwriter and journalist, considered one of the most significant authors of the 20th century.'),
('Agatha', 'Christie', '1890-09-15', 'English writer known for her 66 detective novels and 14 short story collections, particularly those revolving around fictional detectives Hercule Poirot and Miss Marple.'),
('J.R.R.', 'Tolkien', '1892-01-03', 'English writer, poet, philologist, and academic, best known as the author of the high fantasy works The Hobbit and The Lord of the Rings.'),
('Harper', 'Lee', '1926-04-28', 'American novelist best known for her 1960 novel To Kill a Mockingbird, which won the Pulitzer Prize and became a classic of modern American literature.'),
('Frank', 'Herbert', '1920-10-08', 'American science-fiction author best known for the 1965 novel Dune and its five sequels.'),
('Yuval Noah', 'Harari', '1976-02-24', 'Israeli public intellectual, historian and a professor in the Department of History at the Hebrew University of Jerusalem.'),
('Andy', 'Weir', '1972-06-16', 'American novelist whose debut published novel, The Martian, was later adapted into a film of the same name.');


-- genres
INSERT INTO genres (name, description) VALUES
('Fiction', 'Literary works based on imagination rather than fact.'),
('Science Fiction', 'Speculative fiction dealing with imaginative concepts such as futuristic settings, advanced technology, space exploration, time travel, and extraterrestrial life.'),
('Fantasy', 'Speculative fiction set in an imaginary universe, often inspired by real-world myth and folklore.'),
('Mystery', 'Fiction that deals with the solution of a crime or the unraveling of secrets.'),
('Romance', 'Genre focusing on the relationship and romantic love between two people.'),
('Dystopian', 'Speculative fiction exploring social and political structures in a dark, nightmare world.'),
('Classic', 'Literary works of enduring excellence that have stood the test of time.'),
('Biography', 'Account of someone''s life written by someone else.'),
('Memoir', 'Historical account or biography written from personal knowledge or special sources.'),
('Historical Fiction', 'Fictional stories set in the past that incorporate historical events, people, or settings.'),
('Thriller', 'Genre characterized by excitement, suspense, and tension.'),
('Horror', 'Fiction intended to frighten, scare, or disgust readers.'),
('Adventure', 'Genre featuring exciting journeys, risky actions, and heroic deeds.'),
('Young Adult', 'Literature written for readers from 12 to 18 years of age.'),
('Non-fiction', 'Prose writing based on facts, real events, and real people.');


-- books
INSERT INTO books (title, author_id, description) VALUES
-- George Orwell books (author_id = 1)
('1984', 1, 'A dystopian social science fiction novel that follows the life of Winston Smith, a low-ranking member of "the Party" who is frustrated by the omnipresent eyes of the party.'),
('Animal Farm', 1, 'An allegorical novella reflecting events leading up to the Russian Revolution of 1917 and then on into the Stalinist era of the Soviet Union.'),
-- Jane Austen books (author_id = 2)
('Pride and Prejudice', 2, 'A romantic novel that follows the emotional development of Elizabeth Bennet, who learns the error of making hasty judgments.'),
('Sense and Sensibility', 2, 'A novel about the Dashwood sisters as they come of age and experience love and heartbreak.'),
('Emma', 2, 'A comedy of manners about the perils of misconstrued romance, focusing on a young woman who meddles in the love lives of others.'),
-- Gabriel García Márquez books (author_id = 3)
('One Hundred Years of Solitude', 3, 'A landmark novel that tells the multi-generational story of the Buendía family in the fictional town of Macondo.'),
('Love in the Time of Cholera', 3, 'A love story spanning fifty years, following the lives of Florentino Ariza and Fermina Daza.'),
-- Agatha Christie books (author_id = 4)
('Murder on the Orient Express', 4, 'Famous Hercule Poirot mystery where a murder occurs on the luxurious Orient Express train.'),
('And Then There Were None', 4, 'A mystery novel about ten strangers invited to an island, who are killed off one by one.'),
('The Murder of Roger Ackroyd', 4, 'A Hercule Poirot mystery with a shocking twist ending that revolutionized the detective genre.'),
-- J.R.R. Tolkien books (author_id = 5)
('The Hobbit', 5, 'A fantasy novel about the journey of Bilbo Baggins, who is hired by a group of dwarves to reclaim their homeland from a dragon.'),
('The Fellowship of the Ring', 5, 'First volume of The Lord of the Rings, following Frodo Baggins as he begins his quest to destroy the One Ring.'),
('The Two Towers', 5, 'Second volume of The Lord of the Rings, continuing the epic story of the War of the Ring.'),
('The Return of the King', 5, 'Final volume of The Lord of the Rings, concluding the story of the War of the Ring and the quest to destroy the One Ring.'),
-- Harper Lee books (author_id = 6)
('To Kill a Mockingbird', 6, 'A classic of modern American literature, dealing with racial injustice and the loss of innocence in the Deep South.'),
('Go Set a Watchman', 6, 'A sequel to To Kill a Mockingbird, set 20 years later, exploring an adult Scout Finch''s return to Maycomb.'),
-- Frank Herbert books (author_id = 7)
('Dune', 7, 'An epic science fiction novel set in the distant future amidst a sprawling feudal interstellar empire.'),
('Dune Messiah', 7, 'The second novel in the Dune series, continuing the story of Paul Atreides.'),
('Children of Dune', 7, 'The third novel in the Dune series, focusing on Paul''s children, Leto and Ghanima.'),
-- Yuval Noah Harari books (author_id = 8)
('Sapiens: A Brief History of Humankind', 8, 'A book that explores the history of humankind from the Stone Age to the 21st century.'),
('Homo Deus: A Brief History of Tomorrow', 8, 'A sequel to Sapiens, exploring the future of humanity and the new agendas we might pursue.'),
('21 Lessons for the 21st Century', 8, 'A book that focuses on contemporary issues and immediate challenges facing humanity.'),
-- Andy Weir books (author_id = 9)
('The Martian', 9, 'A science fiction novel about an astronaut stranded on Mars trying to survive.'),
('Project Hail Mary', 9, 'A science fiction novel about a lone astronaut who must save humanity from extinction.');


-- book-genre many2many relationships
INSERT INTO book_genres (book_id, genre_id) VALUES
-- 1984: Fiction, Science Fiction, Dystopian, Classic
(1, 1), (1, 2), (1, 6), (1, 7),
-- Animal Farm: Fiction, Dystopian, Classic
(2, 1), (2, 6), (2, 7),
-- Pride and Prejudice: Fiction, Romance, Classic
(3, 1), (3, 5), (3, 7),
-- Sense and Sensibility: Fiction, Romance, Classic
(4, 1), (4, 5), (4, 7),
-- Emma: Fiction, Romance, Classic
(5, 1), (5, 5), (5, 7),
-- One Hundred Years of Solitude: Fiction, Fantasy, Classic
(6, 1), (6, 3), (6, 7),
-- Love in the Time of Cholera: Fiction, Romance
(7, 1), (7, 5),
-- Murder on the Orient Express: Fiction, Mystery, Classic, Thriller
(8, 1), (8, 4), (8, 7), (8, 11),
-- And Then There Were None: Fiction, Mystery, Classic, Thriller
(9, 1), (9, 4), (9, 7), (9, 11),
-- The Murder of Roger Ackroyd: Fiction, Mystery, Classic, Thriller
(10, 1), (10, 4), (10, 7), (10, 11),
-- The Hobbit: Fiction, Fantasy, Classic, Adventure
(11, 1), (11, 3), (11, 7), (11, 13),
-- The Fellowship of the Ring: Fiction, Fantasy, Adventure
(12, 1), (12, 3), (12, 13),
-- The Two Towers: Fiction, Fantasy, Adventure
(13, 1), (13, 3), (13, 13),
-- The Return of the King: Fiction, Fantasy, Adventure
(14, 1), (14, 3), (14, 13),
-- To Kill a Mockingbird: Fiction, Classic, Historical Fiction
(15, 1), (15, 7), (15, 10),
-- Go Set a Watchman: Fiction, Historical Fiction
(16, 1), (16, 10),
-- Dune: Fiction, Science Fiction, Fantasy
(17, 1), (17, 2), (17, 3),
-- Dune Messiah: Fiction, Science Fiction, Fantasy
(18, 1), (18, 2), (18, 3),
-- Children of Dune: Fiction, Science Fiction, Fantasy
(19, 1), (19, 2), (19, 3),
-- Sapiens: Non-fiction, Biography
(20, 15), (20, 8),
-- Homo Deus: Non-fiction, Science Fiction
(21, 15), (21, 2),
-- 21 Lessons for the 21st Century: Non-fiction
(22, 15),
-- The Martian: Fiction, Science Fiction, Adventure
(23, 1), (23, 2), (23, 13),
-- Project Hail Mary: Fiction, Science Fiction, Adventure
(24, 1), (24, 2), (24, 13);
