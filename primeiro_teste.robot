*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}    https://www.exemplo.com
${TEXT}    Comprou eletrônicos nesse fim de ano?


*** Test Cases ***
Abrir Página Exemplo
    ${chrome_options}=    Create Chrome Options
    Open Browser    ${URL}    chrome    options=${chrome_options}
    [Teardown]    Close Browser

Verificar Texto Visivel
    ${chrome_options}=    Create Chrome Options
    Open Browser    ${URL}    chrome    options=${chrome_options}
    Wait Until Element Is Visible    css=span  # Espera até o span estar visível
    Element Should Contain    css=span    ${TEXT}  # Verifica se o texto está visível dentro do span
    [Teardown]    Close Browser

*** Keywords ***
Create Chrome Options
    ${options}=    Evaluate    sys.modules['selenium.webdriver.chrome.options'].Options()    sys, selenium.webdriver.chrome.options
    Call Method    ${options}    add_argument    --headless
    Call Method    ${options}    add_argument    --no-sandbox
    Call Method    ${options}    add_argument    --disable-dev-shm-usage
    RETURN    ${options}
