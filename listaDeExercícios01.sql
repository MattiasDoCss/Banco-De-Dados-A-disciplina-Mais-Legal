--Exercício 1:
SELECT titulo FROM livros;

--Exercício 2:
SELECT nome FROM autores WHERE nascimento < 1900-01-01;

--Exercício 3:
SELECT titulo, autor_id, nome FROM livros 
JOIN autores a ON a.id = l.autor_id
WHERE a.nome = 'J.K Rowling';

--Exercício 4:
SELECT aluno_id, nome, curso FROM alunos a
LEFT JOIN matriculas m ON m.id  = a.id
WHERE curso = "Engenharia de Software";

--Exercício 5:
SELECT produto, SUM(receita) AS total_r FROM vendas
GROUP BY produto;

--Exercício 6:
SELECT nome, COUNT(autor_id) AS t_livros FROM livros  
JOIN autores a ON a.id = l.autor_id
GROUP BY nome;

--Exercício 7:
SELECT curso, COUNT(a.id) AS q_de_alunos FROM alunos a
JOIN matriculas m ON m.id  = a.id
GROUP BY curso;

--Exercício 8:
SELECT produto, AVG(receita) AS m_produto FROM vendas
GROUP BY produto;

--Exercício 9:
CREATE VIEW r_totaL AS 
SELECT produto, SUM(receita) AS total_r FROM vendas
GROUP BY produto;

SELECT * FROM r_totaL
WHERE total_r >= "10000.00";

--Exercício 10:
CREATE VIEW q_livros AS
SELECT nome, COUNT(autor_id) AS t_l_autor FROM livros 
JOIN autores a ON a.id = l.autor_id
GROUP BY nome;

SELECT * FROM q_livros
WHERE t_l_autor >= 2;

--Exercício 11:
CREATE VIEW l_e_a AS
SELECT titulo, nome FROM livros 
JOIN autores a ON a.id = l.autor_id;

SELECT * FROM l_e_a;

--Exercício 12:
CREATE VIEW a_c AS
SELECT nome, curso FROM alunos a
RIGHT JOIN matriculas m ON m.id  = a.id;

SELECT * FROM a_c;

--Exercício 13:
INSERT INTO autores(id, nome, nascimento) VALUES (NULL,"Mattias","2006-04-28");

SELECT nome, titulo FROM autores a
LEFT JOIN  livros ON a.id = l.autor_id;
