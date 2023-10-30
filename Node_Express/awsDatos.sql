USE josecarlosmariategui;
CREATE TABLE FORMULARIO (
    id INT NOT NULL AUTO_INCREMENT,
    nombres VARCHAR(60) NOT NULL,
    apellidos VARCHAR(80) NOT NULL,
    email VARCHAR(80) NOT NULL,
    telefono CHAR(9) NOT NULL,
    asunto VARCHAR(100) NOT NULL,
    mensaje VARCHAR(200) NOT NULL,
    fecha_envio TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
    CONSTRAINT PERSONA_pk PRIMARY KEY (id),
    CONSTRAINT EMAIL_formato CHECK (email REGEXP '^[A-Za-z0-9._%-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,4}$'),
    CONSTRAINT TELEFONO_formato CHECK (telefono REGEXP '^[0-9]{9}$')
) COMMENT 'Campos que va a tener el formulario';

INSERT INTO FORMULARIO (nombres, apellidos, email, telefono, asunto, mensaje) 
VALUES ('anderson', 'huayta', 'anderson.huayta@vallegrande.edu.pe', '934985638', 'Prueba', 'Mensaje de prueba');