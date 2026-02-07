PRAGMA foreign_keys = ON;

CREATE TABLE unimed(
	id INTEGER PRIMARY KEY AUTOINCREMENT,
  	endereco TEXT NOT NULL UNIQUE,
  	corFaixada TEXT NULL
);

CREATE TABLE funcionarios(
	id INTEGER PRIMARY KEY AUTOINCREMENT,
  	nome TEXT NOT NULL,
	idade INTEGER NOT NULL,
    setor TEXT NOT NULL,
  	unimed_id INTEGER,
  	FOREIGN KEY (unimed_id) REFERENCES unimed(id)
);

CREATE TABLE pacientes(
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  nome TEXT NOT NULL,
  idade INTEGER NOT NULL,
  urgencia_id INTEGER NOT NULL,
  funcionario_id INTEGER,
  unimed_id INTEGER,
  FOREIGN KEY (urgencia_id) REFERENCES urgencias(id),
  FOREIGN KEY (unimed_id) REFERENCES unimed(id),
  FOREIGN KEY (funcionario_id) REFERENCES funcionarios(id)
);

CREATE TABLE urgencias(
	id INTEGER PRIMARY KEY AUTOINCREMENT,
  	nivel TEXT NOT NULL
);
