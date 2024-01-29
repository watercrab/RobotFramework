*** Settings ***
Documentation     This is a sample test suite using Robot Framework
Library           SeleniumLibrary
Suite Setup       Open Browser    https://automationexercise.com   chrome


*** Variables ***
${name}          testtt
${email}         testtest080808@gmail.com
# ${title}         Mrs
${password}      Np1234567
${firstName}     Nampoo
${lastName}      Chumaya
${company}       Koko
${address}       meaka
${address2}      mueang
${city}          phayao
${state}         thai
${zipcode}       56000
${mobileNumber}  0987654321  



*** Keywords ***
Click on 'Signup / Login' button
    Click Element  //*[@id="header"]/div/div/div/div[2]/div/ul/li[4]/a

Input name
    [Arguments]    ${name}
    Input Text    //*[@name="name"]    ${name}
    
Input Email
    [Arguments]    ${email}
    Input Text    //*[@id="form"]/div/div/div[3]/div/form/input[3]    ${email}

Click 'Signup' button
    Click Button  //*[@id="form"]/div/div/div[3]/div/form/button

Click Title button
    Click Element  //*[@id="id_gender2"]

Input Password
    [Arguments]    ${password}
    Input Text    //*[@name="password"]    ${password}

Click Date of birth day
    Click Element  //*[@id="days"]/option[21]


Click Date of birth month
    Click Element  //*[@id="months"]/option[11]

Click Date of birth year
    Click Element  //*[@id="years"]/option[21]


Select checkbox 'Sign up for our newsletter!'
    Click Element   //*[@id="newsletter"]

Select checkbox 'Receive special offers from our partners!'
    Click Element   //*[@id="optin"]
    
    

Input firstName
    [Arguments]    ${firstName}
    Input Text    //*[@name="first_name"]    ${firstName}
    

Input lastName
    [Arguments]    ${lastName}
    Input Text    //*[@name="last_name"]    ${lastName}
    

Input company
    [Arguments]    ${company}
    Input Text    //*[@name="company"]    ${company}
    

Input address
    [Arguments]    ${address}
    Input Text    //*[@name="address1"]    ${address}
    

Input address2
    [Arguments]    ${address2}
    Input Text    //*[@name="address2"]    ${address}
    

Click chooseCountry
    Click Element    //*[@id="country"]/option[2]
    

Input state
    [Arguments]    ${state}
    Input Text    //*[@name="state"]    ${state}

Input city
    [Arguments]    ${city}
    Input Text    //*[@name="city"]    ${city}

Input zipcode
    [Arguments]    ${zipcode}
    Input Text    //*[@name="zipcode"]    ${zipcode}

Input mobileNumber
    [Arguments]    ${mobileNumber}
    Input Text    //*[@name="mobile_number"]    ${mobileNumber}

Click createAccount
    Click Button    //*[@id="form"]/div/div/div/div/form/button


Click 'Continue' button
    Click Element    //*[@id="form"]/div/div/div/div/a


Verify that 'Logged in as username' is visible
    Click Element    //*[@id="header"]/div/div/div/div[2]/div/ul/li[10]/a


Click 'Delete Account' button
    Click Element  //*[@id="header"]/div/div/div/div[2]/div/ul/li[5]/a

*** Test Cases ***
Register with valid info
   [Documentation]    Test the login functionality with valid credentials
   Click on 'Signup / Login' button

   Input name                   ${name}
   Input Email                  ${email}

   Click 'Signup' button        
   Click Title button          
    
   Input Password               ${password}

   Click Date of birth day
   Click Date of birth month
   Click Date of birth year
   Select checkbox 'Sign up for our newsletter!'
   Select checkbox 'Receive special offers from our partners!'

   Input firstName              ${firstName}
   Input lastName               ${lastName}
   Input company                ${company}
   Input address                ${address}
   Input address2               ${address2}

   Click chooseCountry

   Input state                  ${state}
   Input city                   ${city}
   Input zipcode                ${zipcode}
   Input mobileNumber           ${mobileNumber}

   Click createAccount
   Click 'Continue' button
   Verify that 'Logged in as username' is visible
   Click 'Delete Account' button
   Click 'Continue' button