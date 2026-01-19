*** Settings ***
Resource       ${CURDIR}/../keyword/import.robot
Test Setup     common.Open website and accept cookie
Test Teardown  common.Close website

*** Test Cases ***
AT_5 : Verify and confirmed that the price of Ethereum more than 30,000
    home_feature.Go to spot page
    spot_page.Click menu market sell in menu bar
    ${table_data}   market_sell_feature.Get all records from table
    market_sell_feature.Verify cryotocurrency coin name                    ${table_data}    ${AT_5}[verify cryotocurrency name]
    market_sell_feature.Verify cryptocurrency price not less than price range    ${table_data}    ${AT_5}[verity price of cryotocurrency name]      ${AT_5}[verity price_range]