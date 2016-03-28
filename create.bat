
rm.exe -rf Temp
mkdir Temp
rm.exe -rf Build
mkdir Build


mkdir Temp\tools

copy "%CD%\JsMin\bin\Release\JsMin.exe" "%CD%\Temp\tools\JsMin.exe" /Y
copy "%CD%\JsMin-TownSuite.nuspec" "%CD%\Temp\JsMin-TownSuite.nuspec" /Y
cd Temp
nuget pack "%CD%\JsMin-TownSuite.nuspec" -OutputDirectory "%CD%\..\Build"
cd ..

