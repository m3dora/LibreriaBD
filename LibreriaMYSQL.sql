-- Crear la base de datos
CREATE DATABASE IF NOT EXISTS libreria;
USE libreria;

-- Crear la tabla de autores
CREATE TABLE IF NOT EXISTS autores (
    id_autor INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    nacionalidad VARCHAR(50) NOT NULL,
    fecha_nacimiento DATE
);

-- Crear la tabla de categorias
CREATE TABLE IF NOT EXISTS categorias (
    id_categoria INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL
);

-- Crear la tabla de libros
CREATE TABLE IF NOT EXISTS libros (
    id_libro INT AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(255) NOT NULL,
    fecha_publicacion DATE,
    id_autor INT,
    id_categoria INT,
    precio DECIMAL(10, 2),
    stock INT,
    FOREIGN KEY (id_autor) REFERENCES autores(id_autor),
    FOREIGN KEY (id_categoria) REFERENCES categorias(id_categoria)
);

-- Insertar datos en la tabla de autores
INSERT INTO autores (nombre, nacionalidad, fecha_nacimiento)
VALUES 
('Gabriel García Márquez', 'Colombiana', '1927-03-06'),
('Isabel Allende', 'Chilena', '1942-08-02');

-- Insertar datos en la tabla de categorias
INSERT INTO categorias (nombre)
VALUES 
('Ficción'),
('Historia'),
('Ciencia');

-- Insertar datos en la tabla de libros
INSERT INTO libros (titulo, fecha_publicacion, id_autor, id_categoria, precio, stock)
VALUES 
('Cien años de soledad', '1967-06-05', 1, 1, 15.99, 50),
('La casa de los espíritus', '1982-05-01', 2, 1, 18.99, 30);
