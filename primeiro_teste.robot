*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}     https://google.com.br
${BROWSER}    Chrome

*** Test Cases ***
Abrir Página Exemplo
    Create WebDriver    Chrome    --headless    --disable-gpu    --no-sandbox    --disable-dev-shm-usage
    Go To    ${URL}
    Close Browser
