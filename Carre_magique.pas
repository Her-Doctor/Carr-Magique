program Carre_magique;

uses crt;

//ALGO: Carre magique
//but : faire un carré magique
//entree:
//sortie: sortie d'un tableau rempli
{
	CONST
		MAX = 5
	VAR
		x,y,i,nb:ENTIER

procedure sphere
	DEBUT
		SI X > MAX ALORS
				X <- 1
				SI X < 0 ALORS
						X <- MAX
					SI Y > MAX ALORS
							Y <- 1
						SI Y < 0 ALORS
								Y <- MAX
						FINSI
					FINSI
				FINSI
		FINSI
	FIN

procedure Deplacement
	DEBUT
		SI tab1[X,Y] = 0 ALORS
			X <- X-1;
				Y <- Y+1;
					Sphere;
				tab1[X,Y] <- nb;
			nb <-  nb+1;
		SINON
			X:=X+1;
				Y:=Y+1;
					Sphere;
				tab1[X,Y]:=nb;
			nb:=nb+1;
		FINSI
	FIN

// programme principal

DEBUT
	X <- 2;
	Y <- 3;
	nb <- 2;
	tab1[X,Y] <- 1;
		POUR i <- 1 A 24 FAIRE
				Deplacement(X,Y);
// Affichage
					POUR X:=1 TO MAX FAIRE
							POUR Y:=1 A MAX FAIRE
									ECRIRE (tab1[X,Y]);
							FINPOUR
					FINPOUR
		FINPOUR
FIN
}

CONST
	MAX = 5;
VAR
	Y,X,i,j,k,nb:INTEGER;
	tab1 : array[1..MAX,1..MAX] of integer ;
TYPE
	tab = array[1..MAX,1..MAX] of integer ;

(* function init:tab;

	VAR
		i,j,k,l:INTEGER;
	BEGIN
	k:=0;
	l:=0;
		FOR i:=1 TO Max DO
			begin
				FOR j:=1 TO Max DO
					begin
						write(0);
					end;
				writeln;
			end;
		tab1[X,Y]:=1;
		writeln;
	END; *)

Procedure Sphere;
// Sphere
	BEGIN
		begin
			IF X > MAX THEN
			begin
				X:=1
			end;
				IF X < 0 THEN
					begin
						X:=MAX
					end;
		end;
			begin	
				IF Y > MAX THEN
					begin
						Y:=1
					end;
					IF Y < 0 THEN
						begin
							Y:=MAX
						end;
			end;
	END;

Procedure Deplacement( X,Y:INTEGER);
// fonction de déplacement et de recherche du vide, avec un système de sphère
	BEGIN
		begin
			X:=X-1;
			Y:=Y+1;
			IF (tab1[X,Y]=0) THEN
				begin
					X:=X-1;
					Y:=Y+1;
					Sphere;
					tab1[X,Y]:=nb;
					nb:=nb+1;
				end
			ELSE
				begin
					X:=X+1;
					Y:=Y+1;
					Sphere;
					tab1[X,Y]:=nb;
					nb:=nb+1;
				end;
		end;
	END;

//Programme Principal
BEGIN
	clrscr;
	X:=2;
	Y:=3;
	nb:=2;
	tab1[X,Y]:=1;
		FOR i:=1 TO 24 DO
			begin
				Deplacement(X,Y);
			end;
		// Affichage
					FOR X:=1 TO MAX DO
						begin
							FOR Y:=1 to MAX DO
								begin
									write(tab1[X,Y]);
								end;
							writeln;
						end;
		readln;
END.
