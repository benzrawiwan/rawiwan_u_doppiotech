*** Settings ***
Resource       ${CURDIR}/../keyword/import.robot
Test Setup     common.Open website and accept cookie
Test Teardown  common.Default test teardown


*** Test Cases ***
TC_1 : Verify capture screen when case failed
    home_feature.Go to spot page
    spot_page.Click menu market sell in menu bar
    market_sell_feature.Fail and capture screen  300

TC_2 : Verify capture screen when case passed
    home_feature.Go to spot page
    spot_page.Click menu market sell in menu bar
    market_sell_feature.Fail and capture screen  50