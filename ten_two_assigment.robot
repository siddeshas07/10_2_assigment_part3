* Settings *
* Settings *
Documentation     To show the Maintain Automation Element locators.
Library           SeleniumLibrary

* Variables *
${LOGIN URL}      https://www.imdb.com/
${BROWSER}        Firefox


* Test Cases *
Valid open
    Open Browser To imdb page
check search
    Input search1    Music
click submit
    Submit SearchQuery
search results of music
    Search
navigate inside
    Navigate
#    [Teardown]    Close Browser



* Keywords *

Open Browser To imdb page
    Open Browser    ${LOGIN URL}    ${BROWSER}
    Title Should Be    IMDb: Ratings, Reviews, and Where to Watch the Best Movies & TV Shows




Scroll Down
    Scroll Elements Into View  ClassName:top-news
    #used ClassName  to Element Locator



Input search1
    [Arguments]    ${search1}
    Input Text  id:suggestion-search  Music
    #used ID  Element locator to locate




Submit SearchQuery
    Click Button    css:#suggestion-search-button
    #used ccs to Element Locator



Search
    Title Should Be    Find - IMDb



Navigate
    Click Link  link:More title matches
    Execute Javascript    $(document).scrollTop(${2})
    Click Link  link:High School Musical: The Musical: The Series: The Special
    #used links to Elemet locators