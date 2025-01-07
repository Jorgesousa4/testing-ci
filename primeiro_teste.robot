*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}     https://google.com.br
${BROWSER}    Chrome

*** Test Cases ***
Abrir Página Exemplo
    Open Browser    ${URL}    ${BROWSER}
    Close Browser
