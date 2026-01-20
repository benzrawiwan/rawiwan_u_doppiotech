*** Variables ***
&{dict_home_locator}
...     btn_menubar_market_sell=//button[@id="dropdown-basic"]/child::div[text()="ตลาดซื้อขาย"]
...     btn_submenu_market_sell=(//div[text()="ตลาดซื้อขาย"]/ancestor::div[contains(@class,"HeaderNav_DropdownItemWrapper")])[1]
...     btn_accept_cookie=//p[text()="ยอมรับการใช้งานคุกกี้"]