@echo on
set "RESOURCES=..\viewer\public\themes"

rmdir /s /q build

call npm run sass

mkdir %RESOURCES%\value-more-light
mkdir %RESOURCES%\value-more-light\fonts
copy build\themes\value-more\value-more-light\theme.css %RESOURCES%\value-more-light\theme.css
copy themes\value-more\fonts %RESOURCES%\value-more-light\fonts\*