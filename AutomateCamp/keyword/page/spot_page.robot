*** Keywords ***
Verify display spot page
    SeleniumLibrary.Element should be visible  ${dict_market_sell_locator}[btn_menu_spot]

Click menu market sell in menu bar
   common.Click element when ready   ${dict_market_sell_locator}[btn_menu_market_sell]