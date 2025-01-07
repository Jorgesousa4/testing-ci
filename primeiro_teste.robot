*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}     https://google.com.br
${BROWSER}    Chrome
${HEADLESS}    --headless --disable-gpu --no-sandbox --disable-dev-shm-usage

*** Test Cases ***
Abrir Página Exemplo
    ${options}=    Evaluate    sys.argv.append('${HEADLESS}')    sys
    Create WebDriver    ${BROWSER}    options=${options}
    Go To    ${URL}
    Close Browser
