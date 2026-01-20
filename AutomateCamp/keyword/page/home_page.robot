*** Keywords ***
Click market sell in menu bar
    [Arguments]      ${btn_name}
    ${locator_replace}  Replace string    ${dict_home_locator}[btn_menubar_market_sell]     ***replace***    ${btn_name}
    common.Click element when ready   ${locator_replace}

Click dropdown market sell in menu bar
    [Arguments]      ${btn_name}
    ${locator_replace}  Replace string    ${dict_home_locator}[btn_submenu_market_sell]     ***replace***    ${btn_name}
    common.Click element when ready   ${locator_replace}