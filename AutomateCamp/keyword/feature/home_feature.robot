*** Keywords ***
Go to spot page
    [Arguments]     ${btn_name}     ${dropdown_name}
    home_page.Click market sell in menu bar  ${btn_name}
    home_page.Click dropdown market sell in menu bar     ${dropdown_name}
    spot_page.Verify display spot page