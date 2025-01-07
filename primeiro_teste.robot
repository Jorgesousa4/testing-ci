*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}     https://google.com.br
${BROWSER}    Chrome
${CHROME_OPTIONS}    --headless --disable-gpu --no-sandbox --disable-dev-shm-usage

*** Test Cases ***
Abrir Página Exemplo
    ${options}=    Create List    ${CHROME_OPTIONS}
    Open Browser    ${URL}    ${BROWSER}    options=${options}
    Close Browser
