*** Keywords ***
Open website and accept cookie
    SeleniumLibrary.Open browser    ${website}    ${browser}
    SeleniumLibrary.Maximize browser window
    SeleniumLibrary.Click element   ${dict_home_locator}[btn_accept_cookie]

Click element when ready
    [Arguments]    ${element}
    SeleniumLibrary.Wait until element is visible   ${element}
    SeleniumLibrary.Click element   ${element}

Close website
    SeleniumLibrary.Close Browser

Default test teardown
    Run keyword if test failed   SeleniumLibrary.Capture Page Screenshot
    SeleniumLibrary.Close Browser