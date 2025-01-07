*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}     https://google.com.br
${BROWSER}    Chrome
${HEADLESS}    --headless --disable-gpu --no-sandbox

*** Test Cases ***
Abrir Página Exemplo
    Open Browser    ${URL}    ${BROWSER}    options=${HEADLESS}
    Close Browser
