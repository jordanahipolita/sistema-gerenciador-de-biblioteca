CREATE TABLE Livros (
    id_livro INT PRIMARY KEY,
    titulo VARCHAR(255) NOT NULL,
    autor VARCHAR(255) NOT NULL,
    editora VARCHAR(255),
    ano_publicado INT,
    isbn VARCHAR(20),
    disponibilidade BOOLEAN DEFAULT TRUE
);

CREATE TABLE Membros (
    id_membro INT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    endereco VARCHAR(255),
    telefone CHAR(11),
    email VARCHAR(100),
    data_cadastro DATE
);

CREATE TABLE Emprestimos (
    id_emprestimo INT PRIMARY KEY,
    id_livro INT,
    id_membro INT,
   
    data_emprestimo DATE,
    data_devolucao DATE,
    status VARCHAR(255),
    FOREIGN KEY (id_livro) REFERENCES Livros(id_livro),
    FOREIGN KEY (id_membro) REFERENCES Membros(id_membro)
);