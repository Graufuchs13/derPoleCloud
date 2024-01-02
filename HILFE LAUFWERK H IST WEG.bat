:: trennt das H: Laufwerk und versucht es neu zu verbinden \\FILESERVERPATH\%username%

@echo off

echo program started..

timeout /T 1 /nobreak >NUL

echo user %username% found..

timeout /T 2 /nobreak >NUL

net use H: /delete 2>Nul >Nul

if exist h:\ (
	echo error deleting H:..
	goto PROCEED1
) 

echo drive H: cleaned..

timeout /T 2 /nobreak >NUL

echo trying to establish H:

timeout /T 2 /nobreak >NUL


net use H: \\fs-all01\User2\%username% 2>Nul >Nul
	
if exist h:\ (
	echo drive H: mapped on User2..
	goto PROCEED1
) 
 

echo Error mapping drive H:..

timeout /T 3 /nobreak >NUL	

exit
		
:PROCEED1

timeout /T 3 /nobreak >NUL

echo Userlaufwerk Skript

timeout /T 3 /nobreak >NUL

::echo cleaning..

::timeout /T 2 /nobreak >NUL

