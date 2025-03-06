@echo on
set "RESOURCES=..\viewer\public\themes"

rmdir /s /q build

call npm run sass

mkdir %RESOURCES%\value-more-light
mkdir %RESOURCES%\value-more-light\fonts
copy build\themes\value-more\value-more-light\theme.css %RESOURCES%\value-more-light\theme.css
copy themes\value-more\value-more-light\fonts %RESOURCES%\value-more-light\fonts\*

mkdir %RESOURCES%\value-more-dark
mkdir %RESOURCES%\value-more-dark\fonts
copy build\themes\value-more\value-more-dark\theme.css %RESOURCES%\value-more-dark\theme.css
copy themes\value-more\value-more-dark\fonts %RESOURCES%\value-more-dark\fonts\*