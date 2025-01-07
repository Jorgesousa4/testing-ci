*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Abrir Página Exemplo
    ${driver} =    Create WebDriver    Chrome
    # Verifique se o driver foi criado corretamente
    Log To Console    Tipo do driver: ${type(driver)}
    # Acesse o atributo capabilities
    ${capabilities} =    Get WebDriver Capabilities    ${driver}
    Log To Console    Capabilities: ${capabilities}
    Go To    https://google.com.br
    Close Browser