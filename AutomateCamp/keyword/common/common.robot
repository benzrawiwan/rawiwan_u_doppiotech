*** Keywords ***
Open website and accept cookie
    Open Browser    ${website}    ${browser}
    Maximize Browser Window
    Click Element   ${dict_home_locator}[btn_accept_cookie]

Click element when ready
    [Arguments]    ${element}
    SeleniumLibrary.Wait Until Element Is Visible   ${element}
    Click Element   ${element}

Close website
    Close Browser

Default test teardown
    Run keyword if test failed   SeleniumLibrary.Capture Page Screenshot
    common.Close website