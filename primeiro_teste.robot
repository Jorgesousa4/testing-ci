*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}    https://www.exemplo.com

*** Test Cases ***
Abrir Página Exemplo
    Open Browser    ${URL}    chrome    options=${chrome_options}
    [Teardown]    Close Browser

*** Keywords ***
${chrome_options}    Create Chrome Options
    ${options}=    Evaluate    sys.modules['selenium.webdriver.chrome.options'].Options()    sys, selenium.webdriver.chrome.options
    Call Method    ${options}    add_argument    --headless
    Call Method    ${options}    add_argument    --no-sandbox
    Call Method    ${options}    add_argument    --disable-dev-shm-usage
    [Return]    ${options}
