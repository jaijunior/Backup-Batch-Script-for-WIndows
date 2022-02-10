
echo off
color 81

title 'INICIANDO BACKUP DO SOFTWARE DE TELEMARKETING'

cd C:\

echo -----------------------------
echo HORA DE INICIO > \\172.0.2.15\backuptelemarketing\log\backupLOG.txt
date /t >> \\172.0.2.15\backuptelemarketing\log\backupLOG.txt
echo %time% >> \\172.0.2.15\backuptelemarketing\log\backupLOG.txt
echo ----------------------------- >> \\172.0.2.15\backuptelemarketing\log\backupLOG.txt

echo -----------------------------
echo Iniciando Backup 
echo -----------------------------

xcopy "Caminho do diretorio programa do telemarketing" "\\172.0.2.15\backuptelemarketing\" /y /h /r /e /c /f >> \\172.0.2.15\backuptelemarketing\log\backupLOG.txt

echo -----------------------------
echo 'backup finalizado'
echo -----------------------------

echo ----------------------------->> \\172.0.2.15\backuptelemarketing\log\backupLOG.txt
echo HORA DE TERMINO >> \\172.0.2.15\backuptelemarketing\log\backupLOG.txt
date /t >> \\172.0.2.15\backuptelemarketing\log\backupLOG.txt
echo %time% >> \\172.0.2.15\backuptelemarketing\log\backupLOG.txt
echo -----------------------------


echo Script de Backup Desenvolvido por Jairo Nonato Junior
echo Todos Direitos Reservados

timeout /t 10
pause 
exit