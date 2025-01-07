*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}     https://google.com.br
${BROWSER}    Chrome
${HEADLESS}    ${EMPTY}

*** Test Cases ***
Abrir Página Exemplo
    Open Browser    ${URL}    ${BROWSER}    options=${HEADLESS}
    Close Browser
