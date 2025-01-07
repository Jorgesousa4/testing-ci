*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}    http://www.wdatecnologia.com.br/index.php
${SESSION1}    Nossos Serviços 
${SESSION2}    Mercado que atuamos

*** Test Cases ***
Abrir Página Exemplo
    ${chrome_options}=    Create Chrome Options
    Open Browser    ${URL}    chrome    options=${chrome_options}
    [Teardown]    Close Browser

Verificar Seção de Nossos Serviços Visivel
    ${chrome_options}=    Create Chrome Options
    Open Browser    ${URL}    chrome    options=${chrome_options}
    Page Should Contain    ${SESSION1}
    [Teardown]    Close Browser

Verificar Seção de Mercado em que atuamos Visivel
    ${chrome_options}=    Create Chrome Options
    Open Browser    ${URL}    chrome    options=${chrome_options}
    Page Should Contain    ${SESSION2}
    [Teardown]    Close Browser

*** Keywords ***
Create Chrome Options
    ${options}=    Evaluate    sys.modules['selenium.webdriver.chrome.options'].Options()    sys, selenium.webdriver.chrome.options
    Call Method    ${options}    add_argument    --headless
    Call Method    ${options}    add_argument    --no-sandbox
    Call Method    ${options}    add_argument    --disable-dev-shm-usage
    RETURN    ${options}
