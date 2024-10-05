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