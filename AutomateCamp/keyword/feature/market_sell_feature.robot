*** Keywords ***
Get all records from table
    SeleniumLibrary.Wait Until Element Is Visible  //table[contains(@class,"table")]/tbody/tr
    ${rows}  Get Element Count   //table[contains(@class,"table")]/tbody/tr
    ${table_data}=  Create List
    FOR    ${row}    IN RANGE   1    ${rows}+1
        ${cells}=   Get Element Count    //table[contains(@class,"table")]/tbody/tr[${row}]/td 
        ${row_data}=    Create List
            FOR     ${cell}    IN RANGE     1    ${cells}+1
                ${data_text}=   Get Text    //table[contains(@class,"table")]/tbody/tr[${row}]/td[${cell}]
                Append To List    ${row_data}    ${data_text}
            END
        Append To List    ${table_data}    ${row_data}
    END
    RETURN  ${table_data}

Verify cryotocurrency coin name
    [Arguments]    ${table_data}    ${cryotocurrency_name}
    FOR    ${expected_coin}    IN    ${cryotocurrency_name}
        ${found}=    Set Variable    False
        FOR    ${row}    IN    @{table_data}
            ${raw}=    Set Variable    ${row}[0]
            @{split_text}=    Split String    ${raw}    \n
            ${table_coin}=    Set Variable    ${split_text}[0]
            IF    $table_coin == $expected_coin
                ${found}=    Set Variable    True
            END
        END
    END

Verify cryptocurrency price not less than price range
    [Arguments]    ${table_data}     ${cryotocurrency_name}     ${price_range}
    ${found}=    Set Variable    False
    FOR    ${row}    IN    @{table_data}
        ${raw_name}=    Set Variable    ${row}[0]
        @{name_parts}=    Split String    ${raw_name}    \n
        ${coin_name}=    Set Variable    ${name_parts}[0]
        IF    "${coin_name}" == "${cryotocurrency_name}"
            ${found}=    Set Variable    True
            ${raw_price}=    Set Variable    ${row}[1]
            ${clean_price}=    Remove String Using Regexp    ${raw_price}    [^0-9.]    ""
            ${price}=    Convert To Number    ${clean_price}
            IF    ${price} < ${price_range}
                Fail    cryotocurrency price ${price} is less than 30000
            END
        END
    END

Fail and capture screen
    [Arguments]    ${range}
    SeleniumLibrary.Wait Until Element Is Visible  //table[contains(@class,"table")]/tbody/tr
    ${rows}  Get Element Count   //table[contains(@class,"table")]/tbody/tr
    IF    ${rows} < ${range}
        Fail    all record ${rows} is less than ${range}
    END