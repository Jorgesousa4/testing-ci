*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}    https://www.exemplo.com
${SEARCH_BUTTON}    name=btnK   # Usando o atributo "name" para localizar o botão


*** Test Cases ***
Abrir Página Exemplo
    ${chrome_options}=    Create Chrome Options
    Open Browser    ${URL}    chrome    options=${chrome_options}
    [Teardown]    Close Browser

Verificar Se Botão Está Presente
    ${chrome_options}=    Create Chrome Options
    Open Browser    ${URL}    chrome    options=${chrome_options}
    ${botao_pesquisa}=    Wait Until Element Is Visible    xpath=//input[@value='Pesquisa Google']    timeout=10s
    Element Should Be Visible    ${botao_pesquisa}
    [Teardown]    Close Browser

*** Keywords ***
Create Chrome Options
    ${options}=    Evaluate    sys.modules['selenium.webdriver.chrome.options'].Options()    sys, selenium.webdriver.chrome.options
    Call Method    ${options}    add_argument    --headless
    Call Method    ${options}    add_argument    --no-sandbox
    Call Method    ${options}    add_argument    --disable-dev-shm-usage
    RETURN    ${options}
