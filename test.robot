*** Setting ***
Library     String
Library     SeleniumLibrary

*** Variables ***
${browser}      chrome
${homepage}     automationpractice.com/index.php
${scheme}       http
${prodScheme}   https
${testUrl}      ${scheme}://${homepage}
${prodUrl}      ${prodScheme}://${homepage}


*** Keywords ***
Open Homepage
    Open browser    ${testUrl}      ${browser}


*** Test Cases ***
C001 Hacer Clic en Contenedores
    Open Homepage
    Set Global Variable    @{nombresDeContenedores}    //*[@id="homefeatured"]/li[1]/div/div[2]/h5/a    //*[@id="homefeatured"]/li[6]/div/div[2]/h5/a
    :FOR    ${nombreDeContenedor}   IN      @{nombresDeContenedores}
    \      Click Element       xpath=${nombreDeContenedor}
    \   Wait Until Element Is Visible   //*[@id="bigpic"]
    \   CLick Element   xpath=//*[@id="header_logo"]/a/img
    Close Browser
