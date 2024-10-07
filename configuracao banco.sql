CREATE TABLE livros (
    id SERIAL PRIMARY KEY,
    titulo VARCHAR(255) NOT NULL,
    autor VARCHAR(255)
);

CREATE TABLE editoras (
    id SERIAL PRIMARY KEY,
    editora VARCHAR(255) NOT NULL
);

CREATE TABLE livros_editoras (
    id SERIAL PRIMARY KEY,
    livro_id INT REFERENCES livros(id) ON DELETE CASCADE,
    editora_id INT REFERENCES editoras(id) ON DELETE CASCADE,
    preco NUMERIC(10, 2) NOT NULL
);

INSERT INTO livros (titulo, autor) 
VALUES ('Iracema', 'José de Alencar');

INSERT INTO editoras (editora) 
VALUES ('Contribuinte');

INSERT INTO livros_editoras (livro_id, editora_id, preco)
VALUES (
    (SELECT id FROM livros WHERE titulo = 'Iracema'),
    (SELECT id FROM editoras WHERE editora = 'Contribuinte'),
    20.00
);

select *from livros;
select *from editoras;
select *from livros_editoras;

drop table livros;
drop table editoras;
drop table livros_editoras;

INSERT INTO livros (titulo, autor) 
VALUES ('1984', 'George Orwell');

INSERT INTO editoras (editora) 
VALUES ('Companhia das letras');

INSERT INTO livros_editoras (livro_id, editora_id, preco)
VALUES (
    (SELECT id FROM livros WHERE titulo = '1984'),
    (SELECT id FROM editoras WHERE editora = 'Companhia das letras'),
    30.00
);

INSERT INTO livros (titulo, autor) 
VALUES ('A metamorfose', 'Franz Kafka');

INSERT INTO editoras (editora) 
VALUES ('Princips');

INSERT INTO livros_editoras (livro_id, editora_id, preco)
VALUES (
    (SELECT id FROM livros WHERE titulo = 'A metamorfose'),
    (SELECT id FROM editoras WHERE editora = 'Princips'),
    25.00
);

-- Inserindo novos livros
INSERT INTO livros (titulo, autor) 
VALUES ('Dom Casmurro', 'Machado de Assis');

INSERT INTO editoras (editora) 
VALUES ('Globo Livros');

INSERT INTO livros_editoras (livro_id, editora_id, preco)
VALUES (
    (SELECT id FROM livros WHERE titulo = 'Dom Casmurro'),
    (SELECT id FROM editoras WHERE editora = 'Globo Livros'),
    35.00
);

-- Outro livro e editora
INSERT INTO livros (titulo, autor) 
VALUES ('O Morro dos Ventos Uivantes', 'Emily Brontë');

INSERT INTO editoras (editora) 
VALUES ('Penguin Classics');

INSERT INTO livros_editoras (livro_id, editora_id, preco)
VALUES (
    (SELECT id FROM livros WHERE titulo = 'O Morro dos Ventos Uivantes'),
    (SELECT id FROM editoras WHERE editora = 'Penguin Classics'),
    40.00
);

-- Outro livro e editora
INSERT INTO livros (titulo, autor) 
VALUES ('Orgulho e Preconceito', 'Jane Austen');

INSERT INTO editoras (editora) 
VALUES ('Zahar');

INSERT INTO livros_editoras (livro_id, editora_id, preco)
VALUES (
    (SELECT id FROM livros WHERE titulo = 'Orgulho e Preconceito'),
    (SELECT id FROM editoras WHERE editora = 'Zahar'),
    45.00
);

-- Outro livro e editora
INSERT INTO livros (titulo, autor) 
VALUES ('O Senhor dos Anéis', 'J.R.R. Tolkien');

INSERT INTO editoras (editora) 
VALUES ('Martins Fontes');

INSERT INTO livros_editoras (livro_id, editora_id, preco)
VALUES (
    (SELECT id FROM livros WHERE titulo = 'O Senhor dos Anéis'),
    (SELECT id FROM editoras WHERE editora = 'Martins Fontes'),
    50.00
);

-- Outro livro e editora
INSERT INTO livros (titulo, autor) 
VALUES ('Cem Anos de Solidão', 'Gabriel García Márquez');

INSERT INTO editoras (editora) 
VALUES ('Record');

INSERT INTO livros_editoras (livro_id, editora_id, preco)
VALUES (
    (SELECT id FROM livros WHERE titulo = 'Cem Anos de Solidão'),
    (SELECT id FROM editoras WHERE editora = 'Record'),
    28.00
);

-- Outro livro e editora
INSERT INTO livros (titulo, autor) 
VALUES ('O Pequeno Príncipe', 'Antoine de Saint-Exupéry');

INSERT INTO editoras (editora) 
VALUES ('Agir');

INSERT INTO livros_editoras (livro_id, editora_id, preco)
VALUES (
    (SELECT id FROM livros WHERE titulo = 'O Pequeno Príncipe'),
    (SELECT id FROM editoras WHERE editora = 'Agir'),
    15.00
);

-- Inserindo novos livros
INSERT INTO livros (titulo, autor) 
VALUES ('Memórias Póstumas de Brás Cubas', 'Machado de Assis');

INSERT INTO editoras (editora) 
VALUES ('Nova Fronteira');

INSERT INTO livros_editoras (livro_id, editora_id, preco)
VALUES (
    (SELECT id FROM livros WHERE titulo = 'Memórias Póstumas de Brás Cubas'),
    (SELECT id FROM editoras WHERE editora = 'Nova Fronteira'),
    32.00
);

-- Outro livro e editora
INSERT INTO livros (titulo, autor) 
VALUES ('Moby Dick', 'Herman Melville');

INSERT INTO editoras (editora) 
VALUES ('Cosac Naify');

INSERT INTO livros_editoras (livro_id, editora_id, preco)
VALUES (
    (SELECT id FROM livros WHERE titulo = 'Moby Dick'),
    (SELECT id FROM editoras WHERE editora = 'Cosac Naify'),
    38.00
);

-- Outro livro e editora
INSERT INTO livros (titulo, autor) 
VALUES ('A Divina Comédia', 'Dante Alighieri');

INSERT INTO editoras (editora) 
VALUES ('L&PM');

INSERT INTO livros_editoras (livro_id, editora_id, preco)
VALUES (
    (SELECT id FROM livros WHERE titulo = 'A Divina Comédia'),
    (SELECT id FROM editoras WHERE editora = 'L&PM'),
    42.00
);

-- Outro livro e editora
INSERT INTO livros (titulo, autor) 
VALUES ('O Retrato de Dorian Gray', 'Oscar Wilde');

INSERT INTO editoras (editora) 
VALUES ('Abril Cultural');

INSERT INTO livros_editoras (livro_id, editora_id, preco)
VALUES (
    (SELECT id FROM livros WHERE titulo = 'O Retrato de Dorian Gray'),
    (SELECT id FROM editoras WHERE editora = 'Abril Cultural'),
    25.00
);

-- Outro livro e editora
INSERT INTO livros (titulo, autor) 
VALUES ('As Aventuras de Sherlock Holmes', 'Arthur Conan Doyle');

INSERT INTO editoras (editora) 
VALUES ('Saraiva');

INSERT INTO livros_editoras (livro_id, editora_id, preco)
VALUES (
    (SELECT id FROM livros WHERE titulo = 'As Aventuras de Sherlock Holmes'),
    (SELECT id FROM editoras WHERE editora = 'Saraiva'),
    30.00
);

-- Outro livro e editora
INSERT INTO livros (titulo, autor) 
VALUES ('O Grande Gatsby', 'F. Scott Fitzgerald');

INSERT INTO editoras (editora) 
VALUES ('Alfaguara');

INSERT INTO livros_editoras (livro_id, editora_id, preco)
VALUES (
    (SELECT id FROM livros WHERE titulo = 'O Grande Gatsby'),
    (SELECT id FROM editoras WHERE editora = 'Alfaguara'),
    29.00
);

-- Outro livro e editora
INSERT INTO livros (titulo, autor) 
VALUES ('Drácula', 'Bram Stoker');

INSERT INTO editoras (editora) 
VALUES ('DarkSide Books');

INSERT INTO livros_editoras (livro_id, editora_id, preco)
VALUES (
    (SELECT id FROM livros WHERE titulo = 'Drácula'),
    (SELECT id FROM editoras WHERE editora = 'DarkSide Books'),
    40.00
);

