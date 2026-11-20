Algoritmo OperacionesMatriz
	//Definición
	Definir Matriz, Fil, Col, Suma, NumMayor, NumMenor, Busqueda, Cont, BusqFil, BusqCol, Opcion Como Entero;
	Definir Promed Como Real;
	Definir Op1, Op2 Como Logico;
	//Dimensionamiento
	Dimension Matriz(5,5);
	Dimension NumMayor(5);
	Dimension NumMenor(5);
	Dimension Promed(5);
	//Inicialización
	Fil=0; Col=0; Suma=0; Busqueda=0; Cont=0; BusqFil=0; BusqCol=0; Opcion=0;
	Op1=Falso;
	Op2=Falso;
	
	
	Repetir
		Limpiar Pantalla;
		Escribir "Menu";
		Escribir "1. Inicializar";
		Escribir "2. Carga de Info";
		Escribir "3. Procesamiento";
		Escribir "4. Salir";
		Leer Opcion;
		
		Segun Opcion Hacer
			1:
				Op1=Verdadero;
				Op2=Falso;
				Para Fil=0 Hasta 4 Con Paso 1 Hacer
					NumMayor(Fil)=0;
					NumMenor(Fil)=500;
					Promed(Fil)=0;
					Para Col=0 Hasta 4 Con Paso 1 Hacer
						Matriz(Fil,Col)=0;
					FinPara
				FinPara
				Escribir "****Matriz utilizada***";
				Escribir "       Col1, Col2, Col3, Col4, Col5";
				Para Fil=0 Hasta 4 Con Paso 1 Hacer
					Escribir "Fila ", Fil+1, " " sin saltar;
					Para Col=0 Hasta 4 Con Paso 1 Hacer
						Escribir "  ", Matriz(Fil,Col), "   ", sin saltar;
					FinPara
					Escribir " ";
				FinPara
				Escribir "Digite cualquier tecla para continuar";
				Esperar Tecla;
			2:
				Si Op1 Entonces
					Op2=Verdadero;
					Para Fil=0 Hasta 4 Con Paso 1 Hacer
						Para Col=0 Hasta 4 Con Paso 1 Hacer
							Matriz(Fil,Col)=Aleatorio(100,500);
						FinPara
					FinPara
					Escribir "****Matriz utilizada***";
					Escribir "    Col1, Col2, Col3, Col4, Col5";
					Para Fil=0 Hasta 4 Con Paso 1 Hacer
						Escribir "Fila ", Fil+1, " " sin saltar;
						Para Col=0 Hasta 4 Con Paso 1 Hacer
							Escribir " ", Matriz(Fil,Col), "  ", sin saltar;
						FinPara
						Escribir " ";
					FinPara
					Escribir "Digite cualquier tecla para continuar";
					Esperar Tecla;
				SiNo
					Escribir "Debe ejecutar primero la opción 1";
					Esperar Tecla;
				FinSi
				
			3:
				Si Op2 Entonces
					Para Fil=0 Hasta 4 Con Paso 1 Hacer
						Para Col=0 Hasta 4 Con Paso 1 Hacer
							Suma=Suma+Matriz(Fil,Col);
							Si Matriz(Fil,Col)>NumMayor(Fil) Entonces
								NumMayor(Fil)=Matriz(Fil,Col);
							FinSi
							Si Matriz(Fil,Col)<NumMenor(Fil) Entonces
								NumMenor(Fil)=Matriz(Fil,Col);
							FinSi
						FinPara
						Promed(Fil)=Suma/5;
					FinPara
					Escribir "****Matriz utilizada***";
					Escribir "    Col1, Col2, Col3, Col4, Col5, Min, Max, Prom";
					Para Fil=0 Hasta 4 Con Paso 1 Hacer
						Escribir "Fila ", Fil+1, " " sin saltar;
						Para Col=0 Hasta 4 Con Paso 1 Hacer
							Escribir " ", Matriz(Fil,Col), "  ", sin saltar;
						FinPara
						Escribir NumMenor(fil), "  ", NumMayor(Fil), "  ", Promed(Fil);
					FinPara
					Escribir "Digite cualquier tecla para continuar";
					Esperar Tecla;
				SiNo
					Escribir "Debe ejecutar primero la opción 2";
					Esperar Tecla;
				FinSi
			4:
				Escribir "Saliendo del sistema";
			De Otro Modo:
				Escribir "Por favor elegir una opción válida";
		FinSegun
	
	Hasta Que Opcion=4;
FinAlgoritmo