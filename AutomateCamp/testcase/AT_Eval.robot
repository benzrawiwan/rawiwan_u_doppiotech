*** Settings ***
Resource       ${CURDIR}/../keyword/import.robot
Test Setup     Run Keywords     common.Open website and accept cookie
...    AND    home_feature.Go to spot page      ${Home_page_menu_bar}[btn_market_sell]      ${Dropdown_market_sell_menu}[lbl_market_sell]
...    AND    spot_page.Click menu market sell in menu bar
Test Teardown  common.Default test teardown

*** Test Cases ***
TC_1 : Verify capture screen when case failed
    market_sell_feature.Fail and capture screen  300

TC_2 : Verify capture screen when case passed
    market_sell_feature.Fail and capture screen  50