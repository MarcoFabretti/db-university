CREATE TABLE Dipartimenti(
	codice_dipartimento int primary key auto_increment,
	nome varchar(255) not null,
	indirizzo varchar(255) not null,
	civico int(3) not null
);

create table Corsi(
	codice_corso int primary key auto_increment,
	dipartimento int,
	nome varchar(255) not null,
	foreign key (dipartimento) references Dipartimenti(codice_dipartimento),
	durata varchar(255) not null
);

create table materie(
	codice_materia int primary key auto_increment,
	nome varchar(255) not null,
	corso int,
	foreign key (corso) references Corsi(codice_corso)
);

create table Insegnanti(
	id_insegnante int primary key auto_increment,
	nome varchar(255) not null,
	cognome varchar(255) not null
);

create table InsegnatiMaterie(
	insegnante int,
	materia int,
	primary key (insegnante,materia),
	foreign key(insegnante) references Insegnanti(id_insegnante),
	foreign key (materia) references Materie(codice_materia)
);

create table Appelli(
	codice_appello int primary key auto_increment,
	materia int,
	insegnante int,
	foreign key (materia) references Insegnanti(id_insegnante),
	foreign key (insegnante) references Materie(codice_materia),
	data_appello date not null
);

create table Studenti(
	id_studente int primary key auto_increment,
	corso int,
	foreign key (corso) references Corsi(codice_corso),
	nome varchar(255) not null,
	cognome varchar(255) not null,
	data_nascita int(4) not null,
	email varchar(255) not null,
	cellulare int(9) null,
	indirizzo varchar(255) null
);

create table Voti(
	voto int, 
	appello int,
	studente int,
	primary key (appello,studente),
	foreign key(appello) references Appelli(codice_appello),
	foreign key (studente) references Studenti(id_studente)
);