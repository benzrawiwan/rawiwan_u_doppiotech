*** Settings ***
Library    SeleniumLibrary
Library    DebugLibrary
Library    String
Library    Collections
Variables      ${CURDIR}/../resources/settings/settings.yaml
Variables      ${CURDIR}/../resources/testdata/testdata.yaml

# Locator
Resource      ${CURDIR}/../resources/locator/home_locator.robot
Resource      ${CURDIR}/../resources/locator/market_sell_locator.robot

#keyword
Resource       ${CURDIR}/../keyword/common/common.robot
Resource       ${CURDIR}/../keyword/feature/home_feature.robot
Resource       ${CURDIR}/../keyword/feature/market_sell_feature.robot

#page
Resource       ${CURDIR}/../keyword/page/home_page.robot
Resource       ${CURDIR}/../keyword/page/spot_page.robot