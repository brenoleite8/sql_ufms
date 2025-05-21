-- Clientes: 
CREATE TABLE clientes (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(150) NOT NULL,
    telefone VARCHAR(25),
    veiculo VARCHAR(50)
);

-- Serviços
CREATE TABLE servicos (
    id SERIAL PRIMARY KEY,
    cliente_id INTEGER NOT NULL,
    descricao VARCHAR(150) NOT NULL,
    valor NUMERIC(10, 2) NOT NULL,
    data_servico TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (cliente_id) REFERENCES clientes(id) ON DELETE CASCADE
);

-- Inserção de Clientes
INSERT INTO clientes (nome, telefone, veiculo) VALUES
('João da Silva', '(67) 99999-1111', 'Fiat Uno'),
('Maria Oliveira', '(67) 98888-2222', 'Toyota Hilux'),
('Carlos Mendes', '(67) 97777-3333', 'Honda Civic');

-- Inserção de Serviços
INSERT INTO servicos (cliente_id, descricao, valor, data_servico) VALUES
(1, 'Troca de pneu traseiro', 80.00, '2025-05-15 10:00:00'),
(2, 'Balanceamento de rodas', 50.00, '2025-05-17 14:30:00'),
(3, 'Conserto de pneu furado', 30.00, '2025-05-19 09:15:00');
