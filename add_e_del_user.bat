@echo off 
:MENU
cls
echo.
time /t
date /t
color 9f
echo Ruben Bruno Cavalcante de Menezes 
echo .
echo MENU DE OPCOES 
echo **************
echo.
echo.
echo 1 - Excluir contas 
echo 2 - Apagar a pasta da conta 
echo 3 - Adicionar uma conta 
echo 4 - Adicionar uma conta administrador 
echo 5 - Login automatico no Windows
echo 6 - Gerenciador do Computador
echo 7 - Reiniciar o Computador  	
echo S - SAIR
echo.
echo.
set /p menu=TECLE O NUMERO DA OPCAO DESEJADA, OU "S" PARA SAIR:
if '%menu%' EQU '1' goto DEL
if '%menu%' EQU '3' goto ADD
if '%menu%' EQU '2' goto PASTA
if '%menu%' EQU '5' goto LOGIN
if '%menu%' EQU '7' goto START
if '%menu%' EQU '6' goto GERE
if '%menu%' EQU '4' goto ADM

if /i  '%menu%' EQU 's' goto SAIR
msg * OPCAO INVALIDA !..... Tente de novo!
goto MENU

:DEL
cls
echo.  
echo.
set /p nome=Digite o nome da conta a ser deletada:
net user %nome% /del
echo.
echo.
pause 
goto MENU


:ADD
cls
echo.
set /p nome=Digite o nome do usuario a ser criado:
net user %nome% /add
echo.
pause
goto MENU

:PASTA
cls
echo.
set /p nome=Digite o nome da pasta da conta a ser deletado:
rd C:\Users\%nome% /s /q
echo.
pause
goto MENU

:LOGIN
cls
echo.
control userpasswords2
echo.
pause
goto MENU

:START
cls
echo.
 shutdown /r /t 1
echo.
pause
goto MENU

:GERE
cls
echo.
compmgmt.msc
echo.
pause
goto MENU 

:ADM
cls
echo.
set /p nome=Digite o nome da conta  a ser criado:
set /p senha=Digite a senha da conta:
net user %nome% %senha% /add
net localgroup administradores %nome% /add 
echo.
pause
goto MENU       

:SAIR
