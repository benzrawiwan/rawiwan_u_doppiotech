*** Keywords ***
Verify display spot page
    Element Should Be Visible  ${dict_market_sell_locator}[btn_menu_spot]

Click menu market sell in menu bar
    Click element when ready   ${dict_market_sell_locator}[btn_menu_market_sell]