
CREATE DATABASE cafeteria_db;


USE cafeteria_db;


CREATE TABLE produtos (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    descricao TEXT,
    preco DECIMAL(10,2) NOT NULL,
    estoque INT NOT NULL
);

CREATE TABLE pedidos (
    id INT PRIMARY KEY AUTO_INCREMENT,
    data_pedido DATE NOT NULL,
    id_produto INT,
    quantidade INT NOT NULL,
    total DECIMAL(10,2),
    FOREIGN KEY (id_produto) REFERENCES produtos(id)
);


INSERT INTO produtos (nome, descricao, preco, estoque) VALUES
('Café Expresso', 'Café puro e forte.', 5.00, 100),
('Capuccino', 'Café com leite vaporizado e espuma.', 7.50, 50),
('Bolo de Chocolate', 'Fatia de bolo de chocolate caseiro.', 6.00, 30);

INSERT INTO pedidos (data_pedido, id_produto, quantidade, total) VALUES
('2025-04-25', 1, 2, 10.00),
('2025-04-25', 2, 1, 7.50),
('2025-04-26', 3, 3, 18.00);
