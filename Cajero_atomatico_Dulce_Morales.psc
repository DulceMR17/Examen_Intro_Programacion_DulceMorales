Funcion saldoInicial= depdepos(Deposito, saldoInicial)
	si Deposito >0 Entonces
		saldoInicial= saldoInicial+ Deposito
		Escribir"Deposito realizado. Su saldo actual es de: ", saldoInicial
	SiNo
		Escribir "El monto debe se mayor a cero"
	FinSi
FinFuncion
Funcion saldoInicial= retiros(Retiro, saldoInicial)
	si Retiro <= saldoInicial Entonces
		saldoInicial= saldoInicial- Retiro
		Escribir"Deposito realizado. Su saldo actual es de: ", saldoInicial
	SiNo
		Escribir "El monto no debe se mayor a su saldo"
	FinSi
FinFuncion
Algoritmo Cajero_atomatico_Dulce_Morales
	Definir op Como Entero
	Definir saldototal, Deposito, R Como Real
	saldoInicial = 1000 
	Mientras op <> 4 Hacer
	Escribir "------------------------------"
	Escribir "	CAJERO AUTOMATICO 		"
	Escribir "------------------------------"
	Escribir "Escoja la opcion a realizar: "
	Escribir "1. Conusltar saldo "
	Escribir "2. Depositar dinero"
	Escribir "3. Retirar dinero"
	Escribir "4. Salir"
	Leer op 
	Segun op Hacer
		caso 1:
			Escribir "------------------------------"
			Escribir "	CONSULTAR SALDO 		"
			Escribir "------------------------------"
			Escribir "Usted cuenta con un saldo de: "
			Escribir saldoInicial
		Caso 2:
			Escribir "------------------------------"
			Escribir "	DEPOSITAR DINERO 		"
			Escribir "------------------------------"
			Escribir "Ingrese la cantidad de dinero que desea depositar: "
			Leer D
			saldoInicial= depdepos(D, saldoInicial)
			Escribir Realizo_deposito
		Caso 3: 
			Escribir "------------------------------"
			Escribir "	 RETIRAR DINERO 		"
			Escribir "------------------------------"
			Escribir "Ingrese la cantidad de dinero que desea retirar: "
			Leer R
			saldoInicial = retiros(R, saldoInicial)
			Escribir Realizo_retiro
FinSegun
FinMientras

FinAlgoritmo
