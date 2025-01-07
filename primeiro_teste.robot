*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}     https://google.com.br
${BROWSER}    Chrome
${OPTIONS}    --headless    --disable-gpu    --no-sandbox    --disable-dev-shm-usage

*** Test Cases ***
Abrir Página Exemplo
    Open Browser    ${URL}    ${BROWSER}    options=${OPTIONS}
    Close Browser
