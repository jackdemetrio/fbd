Create Table Empregado(
	Num_Emp int not null primary key,
	Salario float not null,
	Nome_Emp varchar(30) not null
);

Create Table Departamento(
	Num_depto int not null primary key,
	Nome_depto varchar(30) not null
);

Create Table Dependente(
	Id_dep int not null primary key,
	Nome_Dep varchar(30) not null,
	Data_Nasc date
);

Create Table Projeto(
	Id_Projeto int not null primary key,
	Nome_Projeto varchar(30) not null
);

Create Table Gerencia(
	Cod_emp int not null,
	Id_depto int not null,
	Foreign key (Cod_emp) references Empregado(Num_Emp),
	Foreign key (Id_depto) references Departamento(Num_depto)
);

Create Table Possui(
	Cod_emp int not null,
	Id_dep int not null,
	Foreign key (Cod_emp) references Empregado(Num_Emp),
	Foreign key (Id_dep) references Dependente(Id_dep)
);

Create Table Participa_de(
	Cod_emp int not null,
	Id_proj int not null,
	Foreign key (Cod_emp) references Empregado(Num_Emp),
	Foreign key (Id_proj) references Projeto(Id_Projeto)
);

Create Table Controla(
	Id_depto int not null,
	Id_proj int not null,
	Foreign key (Id_depto) references Departamento(Num_depto),
	Foreign key (Id_proj) references Projeto(Id_Projeto)
);

Insert into Empregado
	(Num_Emp, Salario, Nome_Emp)
	Values ('0123', '1.800', 'Edson')
Insert into Empregado
	(Num_Emp, Salario, Nome_Emp)
	Values ('0234', '1.750', 'Bruno');
Insert into Empregado
	(Num_Emp, Salario, Nome_Emp)
	Values ('0321', '1.900', 'Ana');

Insert into Departamento
	(Num_depto, Nome_depto)
	Values ('4567', 'Tecnologia')
Insert into Departamento
	(Num_depto, Nome_depto)
	Values ('7891', 'Recursos Humanos')
Insert into Departamento
	(Num_depto, Nome_depto)
	Values ('8520', 'Financeiro')

Insert into Dependente
	(Id_dep, Nome_dep, Data_Nasc)
	Values ('98765', 'Pedro', '02/08/2006')
Insert into Dependente
	(Id_dep, Nome_dep, Data_Nasc)
	Values ('54987', 'Eduardo', '09/11/2008')
Insert into Dependente
	(Id_dep, Nome_dep, Data_Nasc)
	Values ('36520', 'Laura', '23/05/2012')

Insert into Projeto
	(Id_Projeto, Nome_Projeto)
	Values ('147852', 'Marketing')
Insert into Projeto
	(Id_Projeto, Nome_Projeto)
	Values ('856321', 'Sites')
Insert into Projeto
	(Id_Projeto, Nome_Projeto)
	Values ('784569', 'Melhorias')

Alter Table Participa_de add Hs_Trab varchar(50)

Insert into Gerencia
	(Cod_emp, Id_depto)
	Values ('0123', '4567')
Insert into Gerencia
	(Cod_emp, Id_depto)
	Values ('0234', '7891')
Insert into Gerencia
	(Cod_emp, Id_depto)
	Values ('0321', '8520')

Insert into Possui
	(Cod_emp, Id_dep)
	Values ('0123', '98765')
Insert into Possui
	(Cod_emp, Id_dep)
	Values ('0234', '54987')
Insert into Possui
	(Cod_emp, Id_dep)
	Values ('0321', '36520')

Insert into Participa_de
	(Cod_emp, Id_proj)
	Values ('0123', '147852')
Insert into Participa_de
	(Cod_emp, Id_proj)
	Values ('0234', '856321')
Insert into Participa_de
	(Cod_emp, Id_proj)
	Values ('0321', '784569')

Insert into Controla
	(Id_depto, Id_proj)
	Values ('4567', '147852')
Insert into Controla
	(Id_depto, Id_proj)
	Values ('7891', '856321')
Insert into Controla
	(Id_depto, Id_proj)
	Values ('8520', '784569')