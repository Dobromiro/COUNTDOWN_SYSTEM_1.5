color A
rem etykieta top
:top
cd c:\
cd C:\Users\user\Desktop\COUNTDOWN_SYSTEM_1.4
rem cd C:\Users\user\Desktop\COUNTDOWN_SYSTEM_1.3
DEL /Q nowy_coutdown_system\nowy_coutdown_system\bin\Debug\netcoreapp3.0\nagranie.txt
rem przechodzi do folderu ImageMagick
cd ImageMagick
magick.exe convert screenshot: -crop 200x50+990+770 +repage ../screen001_s.png
rem Robi screen, i zapisuje w odpowiedniej sciezce
rem magick.exe screenshot: ../screenshot.png
rem ucina screena -crop 300x100 to wielkosc foty 00+830 punkt na osi
rem magick.exe ../screenshot.png -crop 300x100+200+830 ../screen001_s.png
cd ..
rem obrobka ocr
tesseract.exe screen001_s.png result
copy /Y result.txt nowy_coutdown_system\nowy_coutdown_system\bin\Debug\netcoreapp3.0
cd nowy_coutdown_system\nowy_coutdown_system\bin\Debug\netcoreapp3.0
start /min nowy_coutdown_system.exe 
timeout /t 5
echo ##############################################
set /p Var=<nagranie.txt 
start /min voice.exe %Var%
echo ##############################################
cd ../..
rem oczekiwanie 10 s
rem timeout /t 5
rem skocz do: etykieta top
goto top