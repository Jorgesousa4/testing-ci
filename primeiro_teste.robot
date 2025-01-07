*** Settings ***
Library    SeleniumLibrary
Suite Setup    Iniciar Navegador
Suite Teardown    Fechar Navegador

*** Variables ***
${URL}    http://www.wdatecnologia.com.br/index.php
${SESSION1}    Nossos Serviços 

*** Test Cases ***
Abrir Página Exemplo
    Page Should Contain    ${SESSION1}

Verificar Seção de Nossos Serviços Visível
    Page Should Contain    ${SESSION1}

*** Keywords ***
Iniciar Navegador
    ${chrome_options}=    Create Chrome Options
    Open Browser    ${URL}    chrome    options=${chrome_options}

Fechar Navegador
    Close Browser

Create Chrome Options
    ${options}=    Evaluate    sys.modules['selenium.webdriver.chrome.options'].Options()    sys, selenium.webdriver.chrome.options
    Call Method    ${options}    add_argument    --headless
    Call Method    ${options}    add_argument    --no-sandbox
    Call Method    ${options}    add_argument    --disable-dev-shm-usage
    RETURN    ${options}
