*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}     https://google.com.br
${BROWSER}    Chrome

*** Test Cases ***
Abrir Página Exemplo
    # Create headless Chrome browser with options
    ${driver} =    Create WebDriver    ${BROWSER}    options={ headless=True, disable_gpu=True, no_sandbox=True, disable_dev_shm_usage=True }
    Go To    ${URL}
    Close Browser