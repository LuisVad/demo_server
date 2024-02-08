/*clients table PostgreSQL*/

CREATE TABLE clients (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    last_name VARCHAR(255) NOT NULL,
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);

/*pets table PostgreSQL*/

CREATE TABLE pets (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    type VARCHAR(255) NOT NULL,
    breed VARCHAR(255) NOT NULL,
    owner_id INTEGER REFERENCES clients(id) ON DELETE CASCADE,
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);

/*appointments table PostgreSQL*/

CREATE TABLE appointments (
    id SERIAL PRIMARY KEY,
    pet_id INTEGER REFERENCES pets(id) ON DELETE CASCADE,
    client_id INTEGER REFERENCES clients(id) ON DELETE CASCADE,
    date TIMESTAMP NOT NULL,
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);

/*vets table PostgreSQL*/

CREATE TABLE vets (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    last_name VARCHAR(255) NOT NULL,
    specialty VARCHAR(255) NOT NULL,
    experience INTEGER NOT NULL,
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);

/*appointments_vets table PostgreSQL*/

CREATE TABLE appointments_vets (
    id SERIAL PRIMARY KEY,
    appointment_id INTEGER REFERENCES appointments(id) ON DELETE CASCADE,
    vet_id INTEGER REFERENCES vets(id) ON DELETE CASCADE,
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);

/*10 records for clients table PostgreSQL*/

INSERT INTO clients (name, last_name) VALUES ('John', 'Doe');
INSERT INTO clients (name, last_name) VALUES ('Jane', 'Doe');
INSERT INTO clients (name, last_name) VALUES ('John', 'Smith');
INSERT INTO clients (name, last_name) VALUES ('Jane', 'Smith');
INSERT INTO clients (name, last_name) VALUES ('John', 'Johnson');
INSERT INTO clients (name, last_name) VALUES ('Jane', 'Johnson');
INSERT INTO clients (name, last_name) VALUES ('John', 'Williams');
INSERT INTO clients (name, last_name) VALUES ('Jane', 'Williams');
INSERT INTO clients (name, last_name) VALUES ('John', 'Brown');
INSERT INTO clients (name, last_name) VALUES ('Jane', 'Brown');

/*10 records for pets table PostgreSQL 5 Dogs 5 Cats*/

INSERT INTO pets (name, type, breed, owner_id) VALUES ('Max', 'Dog', 'Labrador', 1);
INSERT INTO pets (name, type, breed, owner_id) VALUES ('Buddy', 'Dog', 'Golden Retriever', 2);
INSERT INTO pets (name, type, breed, owner_id) VALUES ('Charlie', 'Dog', 'French Bulldog', 3);
INSERT INTO pets (name, type, breed, owner_id) VALUES ('Jack', 'Dog', 'German Shepherd', 4);
INSERT INTO pets (name, type, breed, owner_id) VALUES ('Cooper', 'Dog', 'Poodle', 5);
INSERT INTO pets (name, type, breed, owner_id) VALUES ('Milo', 'Cat', 'Persian', 6);
INSERT INTO pets (name, type, breed, owner_id) VALUES ('Simba', 'Cat', 'Siamese', 7);
INSERT INTO pets (name, type, breed, owner_id) VALUES ('Leo', 'Cat', 'Sphynx', 8);
INSERT INTO pets (name, type, breed, owner_id) VALUES ('Lucy', 'Cat', 'Persian', 6);
INSERT INTO pets (name, type, breed, owner_id) VALUES ('Luna', 'Cat', 'Siamese', 7);

/*10 records for appointments table PostgreSQL*/

INSERT INTO appointments (pet_id, client_id, date) VALUES (1, 1, '2021-01-01 10:00:00');
INSERT INTO appointments (pet_id, client_id, date) VALUES (2, 2, '2021-01-01 11:00:00');
INSERT INTO appointments (pet_id, client_id, date) VALUES (3, 3, '2021-01-01 12:00:00');
INSERT INTO appointments (pet_id, client_id, date) VALUES (4, 4, '2021-01-01 13:00:00');
INSERT INTO appointments (pet_id, client_id, date) VALUES (5, 5, '2021-01-01 14:00:00');
INSERT INTO appointments (pet_id, client_id, date) VALUES (6, 6, '2021-01-01 15:00:00');
INSERT INTO appointments (pet_id, client_id, date) VALUES (7, 7, '2021-01-01 16:00:00');
INSERT INTO appointments (pet_id, client_id, date) VALUES (8, 8, '2021-01-01 17:00:00');
INSERT INTO appointments (pet_id, client_id, date) VALUES (9, 9, '2021-01-01 18:00:00');
INSERT INTO appointments (pet_id, client_id, date) VALUES (10, 10, '2021-01-01 19:00:00');

/*10 records for vets table PostgreSQL*/

INSERT INTO vets (name, last_name, specialty, experience) VALUES ('John', 'Doe', 'Dentist', 10);
INSERT INTO vets (name, last_name, specialty, experience) VALUES ('Jane', 'Doe', 'Dentist', 10);
INSERT INTO vets (name, last_name, specialty, experience) VALUES ('John', 'Smith', 'Surgeon', 15);
INSERT INTO vets (name, last_name, specialty, experience) VALUES ('Jane', 'Smith', 'Surgeon', 15);
INSERT INTO vets (name, last_name, specialty, experience) VALUES ('John', 'Johnson', 'Dermatologist', 20);
INSERT INTO vets (name, last_name, specialty, experience) VALUES ('Jane', 'Johnson', 'Dermatologist', 20);
INSERT INTO vets (name, last_name, specialty, experience) VALUES ('John', 'Williams', 'Ophthalmologist', 25);
INSERT INTO vets (name, last_name, specialty, experience) VALUES ('Jane', 'Williams', 'Ophthalmologist', 25);
INSERT INTO vets (name, last_name, specialty, experience) VALUES ('John', 'Brown', 'Cardiologist', 30);
INSERT INTO vets (name, last_name, specialty, experience) VALUES ('Jane', 'Brown', 'Cardiologist', 30);

/*10 records for appointments_vets table PostgreSQL*/

INSERT INTO appointments_vets (appointment_id, vet_id) VALUES (1, 1);
INSERT INTO appointments_vets (appointment_id, vet_id) VALUES (2, 2);
INSERT INTO appointments_vets (appointment_id, vet_id) VALUES (3, 3);
INSERT INTO appointments_vets (appointment_id, vet_id) VALUES (4, 4);
INSERT INTO appointments_vets (appointment_id, vet_id) VALUES (5, 5);
INSERT INTO appointments_vets (appointment_id, vet_id) VALUES (6, 6);
INSERT INTO appointments_vets (appointment_id, vet_id) VALUES (7, 7);
INSERT INTO appointments_vets (appointment_id, vet_id) VALUES (8, 8);
INSERT INTO appointments_vets (appointment_id, vet_id) VALUES (9, 9);
INSERT INTO appointments_vets (appointment_id, vet_id) VALUES (10, 10);