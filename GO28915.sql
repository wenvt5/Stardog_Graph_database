CREATE TABLE Qlab (
	studyid		VARCHAR(30),
	patnum		VARCHAR(30),
	scrnum        	VARCHAR(30),
	visit 		VARCHAR(30),
	sample_id       VARCHAR(30),
	derived_from	VARCHAR(30),
  	bmfnam       	VARCHAR(30),
	pfspec       	VARCHAR(30),
	bmfloc       	VARCHAR(30),
	is_primary	VARCHAR(10),
	PRIMARY KEY (sample_id)
);

CREATE TABLE Hist (
	studyid		VARCHAR(30),
	patnum		VARCHAR(30),
	scrnum        	VARCHAR(30),
	visit 		VARCHAR(30),
	sample_id       VARCHAR(30),
	derived_from	VARCHAR(30),
  	bmfnam       	VARCHAR(30),
	pfspec       	VARCHAR(30),
	bmfloc       	VARCHAR(30),
	is_primary	VARCHAR(10),
	PRIMARY KEY (sample_id),
	FOREIGN KEY (derived_from) REFERENCES Qlab (sample_id)
);

CREATE TABLE Ea (
	studyid		VARCHAR(30),
	patnum		VARCHAR(30),
	scrnum        	VARCHAR(30),
	visit 		VARCHAR(30),
	sample_id       VARCHAR(30),
	derived_from	VARCHAR(30),
  	bmfnam       	VARCHAR(30),
	pfspec       	VARCHAR(30),
	bmfloc       	VARCHAR(30),
	is_primary	VARCHAR(10),
	PRIMARY KEY (sample_id),
	FOREIGN KEY (derived_from) REFERENCES Hist (sample_id)
);

CREATE TABLE Fmi (
	studyid		VARCHAR(30),
	patnum		VARCHAR(30),
	scrnum        	VARCHAR(30),
	visit 		VARCHAR(30),
	sample_id       VARCHAR(30),
	derived_from	VARCHAR(30),
  	bmfnam       	VARCHAR(30),
	pfspec       	VARCHAR(30),
	bmfloc       	VARCHAR(30),
	is_primary	VARCHAR(10),
	PRIMARY KEY (sample_id),
	FOREIGN KEY (derived_from) REFERENCES Hist (sample_id)
);
 
CREATE TABLE Precision_pbmc (
	studyid		VARCHAR(30),
	patnum		VARCHAR(30),
	scrnum        	VARCHAR(30),
	visit 		VARCHAR(30),
	sample_id       VARCHAR(30),
	derived_from	VARCHAR(30),
  	bmfnam       	VARCHAR(30),
	pfspec       	VARCHAR(30),
	bmfloc       	VARCHAR(30),
	is_primary	VARCHAR(10),
	PRIMARY KEY (sample_id)
);

CREATE TABLE Precision_rna (
	studyid		VARCHAR(30),
	patnum		VARCHAR(30),
	scrnum        	VARCHAR(30),
	visit 		VARCHAR(30),
	sample_id       VARCHAR(30),
	derived_from	VARCHAR(30),
  	bmfnam       	VARCHAR(30),
	pfspec       	VARCHAR(30),
	bmfloc       	VARCHAR(30),
	is_primary	VARCHAR(10),
	PRIMARY KEY (sample_id),
	FOREIGN KEY (derived_from) REFERENCES Precision_pbmc (sample_id)
);

CREATE TABLE Labc (
	studyid		VARCHAR(30),
	patnum		VARCHAR(30),
	scrnum        	VARCHAR(30),
	visit 		VARCHAR(30),
	sample_id       VARCHAR(30),
	derived_from	VARCHAR(30),
  	bmfnam       	VARCHAR(30),
	pfspec       	VARCHAR(30),
	bmfloc       	VARCHAR(30),
	is_primary	VARCHAR(10),
	PRIMARY KEY (sample_id),
	FOREIGN KEY (derived_from) REFERENCES Precision_rna (sample_id)
);