*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}    https://www.google.com/
${TEXT}    Pesquisa Google 


*** Test Cases ***
Abrir Página Exemplo
    ${chrome_options}=    Create Chrome Options
    Open Browser    ${URL}    chrome    options=${chrome_options}
    [Teardown]    Close Browser

Verificar Texto Visivel
    ${chrome_options}=    Create Chrome Options
    Open Browser    ${URL}    chrome    options=${chrome_options}
    ${element}=    Find Element    aria-label=Pesquisa Google
    Element Should Be Visible    ${element}
    [Teardown]    Close Browser

*** Keywords ***
Create Chrome Options
    ${options}=    Evaluate    sys.modules['selenium.webdriver.chrome.options'].Options()    sys, selenium.webdriver.chrome.options
    Call Method    ${options}    add_argument    --headless
    Call Method    ${options}    add_argument    --no-sandbox
    Call Method    ${options}    add_argument    --disable-dev-shm-usage
    RETURN    ${options}
