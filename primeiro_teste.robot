*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}    https://www.exemplo.com

*** Test Cases ***
Abrir Página Exemplo
    Open Browser    ${URL}    chrome    --headless    --no-sandbox    --disable-dev-shm-usage
    [Teardown]    Close Browser
