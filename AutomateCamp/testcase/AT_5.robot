*** Settings ***
Resource       ${CURDIR}/../keyword/import.robot
Suite Setup     Run Keywords     common.Open website and accept cookie
...    AND    home_feature.Go to spot page      ${Home_page_menu_bar}[btn_market_sell]      ${Dropdown_market_sell_menu}[lbl_market_sell]
...    AND    spot_page.Click menu market sell in menu bar
Suite Teardown  common.Close website
 
*** Test Cases ***
AT_5_01 : Verify 4 cryptocurrency name in tabel
    ${table_data}   market_sell_feature.Get all records from table  ${dict_market_sell_locator}[tbl_count_row_cryotocurrency]
    market_sell_feature.Verify cryotocurrency coin name                    ${table_data}    ${AT_5}[verify cryotocurrency name]

AT_5_02 : Verify and confirmed that the price of Ethereum more than 30,000
    ${table_data}   market_sell_feature.Get all records from table  ${dict_market_sell_locator}[tbl_count_row_cryotocurrency]
    market_sell_feature.Verify cryptocurrency price not less than price range    ${table_data}    ${AT_5}[verity price of cryotocurrency name]      ${AT_5}[verity price_range]