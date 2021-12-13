
INSERT into Dipartimenti(nome, indirizzo, civico) VALUES('Matematica e scienze naturali','via vattela a pesca',120);
INSERT INTO Dipartimenti(nome, indirizzo, civico) VALUES('Ingegneria','via vattela a pesca',10);
INSERT INTO Dipartimenti(nome, indirizzo, civico) VALUES('Medicina','via vattela a pesca',74);

INSERT into Corsi (nome, durata, dipartimento) values('informatica', 'triennale', '3');
INSERT into Corsi (nome, durata, dipartimento) values('elettronica', 'quinquennale', '3');
INSERT into Corsi (nome, durata, dipartimento) values('infermieristica', 'triennale', '4');


INSERT into Insegnanti (nome, cognome) values('Maria','Bianchi');
INSERT into Insegnanti (nome, cognome) values('Matteo','Rossi');
INSERT into Insegnanti (nome, cognome) values('Mario','Super');


INSERT into Materie (nome, corso) values('matematica', '6');
INSERT into Materie (nome, corso) values('programmazione', '6');
INSERT into Materie (nome, corso) values('fisica', '8');

INSERT into Studenti (corso, nome, cognome, data_nascita, email, cellulare, indirizzo) values('6', 'Mattia','Maio', '1998', 'mattia.maio@hotmail.it', '366548954', 'via vattela a pesca');
INSERT into Studenti (corso, nome, cognome, data_nascita, email, cellulare, indirizzo) values('6', 'Rosario','Mazzocca', '1997', 'rosario.mazzocca@hotmail.it', '366548954','via vattela a pesca');
INSERT into Studenti (corso, nome, cognome, data_nascita, email, cellulare, indirizzo) values('8', 'Mattia', 'Maio', '1999', 'mattia.maio@hotmail.it', '366548954',  'via vattela a pesca');

INSERT into Appelli (materia, insegnante, data_appello) values('1','6','2022-05-04');
INSERT into Appelli (materia, insegnante, data_appello) values('2','7','2022-06-07');
INSERT into Appelli (materia, insegnante, data_appello) values('3','8','2022-01-31');

INSERT into Voti (appello, studente, voto) values ('7', '3', '7');
INSERT into Voti (appello, studente, voto) values ('8', '4', '8');
INSERT into Voti (appello, studente, voto) values ('9', '2', '6');

INSERT into insegnatimaterie (insegnante, materia) values('2', '6');
INSERT into insegnatimaterie (insegnante, materia) values('2', '7');
INSERT into insegnatimaterie (insegnante, materia) values('3', '8');
