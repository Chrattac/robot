*** Settings ***
Library           SeleniumLibrary   run_on_failure=Nothing

*** Variables ***
${URL}         https://www.duckduckgo.com
${BROWSER}        firefox
${DRIVER}         ../geckodriver/geckodriver
${DELAY}          0.1

*** Keywords ***
Prepare Browser
    Open Browser    ${URL}    ${BROWSER}   executable_path=${DRIVER}
    Maximize Browser Window
    Set Selenium Speed    ${DELAY}
    
Verify Solved
    Wait Until Page Contains    Your Cart
