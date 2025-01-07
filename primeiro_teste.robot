*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}     https://google.com.br
${BROWSER}    Chrome

*** Test Cases ***
Abrir Página Exemplo
    ${options}=    Create Dictionary    options=--headless --disable-gpu --no-sandbox --disable-dev-shm-usage
    Create WebDriver    Chrome    options=${options}
    Go To    ${URL}
    Close Browser
