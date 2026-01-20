*** Keywords ***
Click market sell in menu bar
    # ${locator}    Replace string    ${dict_home_locator}[btn_menubar_market_sell]     ***string***    ${name}
    common.Click element when ready   ${dict_home_locator}[btn_menubar_market_sell]

Click dropdown market sell in menu bar
    common.Click element when ready   ${dict_home_locator}[btn_submenu_market_sell]