*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}    http://wdatecnologia.com.br/novo/
${TEXT}    Início 


*** Test Cases ***
Abrir Página Exemplo
    ${chrome_options}=    Create Chrome Options
    Open Browser    ${URL}    chrome    options=${chrome_options}
    [Teardown]    Close Browser

Verificar Texto Visivel
    ${chrome_options}=    Create Chrome Options
    Open Browser    ${URL}    chrome    options=${chrome_options}
    ${element}=    Get Text    css=h2
    Should Be Equal As Strings    ${element}    Bem vindo a WDA Tecnologia & Inovação.
    [Teardown]    Close Browser

*** Keywords ***
Create Chrome Options
    ${options}=    Evaluate    sys.modules['selenium.webdriver.chrome.options'].Options()    sys, selenium.webdriver.chrome.options
    Call Method    ${options}    add_argument    --headless
    Call Method    ${options}    add_argument    --no-sandbox
    Call Method    ${options}    add_argument    --disable-dev-shm-usage
    RETURN    ${options}
