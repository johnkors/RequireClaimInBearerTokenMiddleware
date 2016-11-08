set projpath=source\RequireClaimsInJwt.Owin\packages.config
set csproj=source\RequireClaimsInJwt.Owin\RequireClaimsInJwt.Owin.csproj
set version=1.0.2
set msbuildexe=
for /D %%D in (%SYSTEMROOT%\Microsoft.NET\Framework\v4*) do set msbuildexe=%%D\MSBuild.exe

nuget restore %csproj% -SolutionDirectory source\
%msbuildexe% source\Solution.sln /p:Configuration=Release
nuget pack %csproj% -Version %version% -OutputDirectory dist\ -Properties Configuration=Release