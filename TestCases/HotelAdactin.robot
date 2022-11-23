****** settings ***
Library   SeleniumLibrary

****** variables ***
${browser}           chrome
${url}               https://adactinhotelapp.com/
${USERNAME}          id:username
${PASSWORD}          id:password
${LOGINBUTTON}       id:login
${LOCATION}          id:location
${HOTELS}            id:hotels
${ROOM_TYPE}         id:room_type
${ROOM_NOS}          id:room_nos
${ADULT_ROOM}        id:adult_room
${CHILD_ROOM}        id:child_room
${SUBMIT_BUTTON}     id:Submit
${RADIO_BUTTON}      id:radiobutton_0
${CONTINUE_BUTTON}   id:continue
${FIRST_NAME}        id:first_name
${LAST_NAME}         id:last_name
${ADDRESS}           id:address
${CC_NUM}            id:cc_num
${CC_TYPE}           id:cc_type
${EXP_MONTH}         id:cc_exp_month
${EXP_YEAR}          id:cc_exp_year
${CVV_NUMBER}        id:cc_cvv
${BOOKNOW_BUTTON}    id:book_now
${title}             Adactin.com - Hotel Booking Confirmation
${order_no}          id:order_no



****** test cases ***
HotelBookingConfirmation
    open browser       ${url}   ${browser}
    maximize browser window
    Book A Hotel
#    close browser



****** keywords ***
Book A Hotel
    Element Should Be Visible    ${USERNAME}
    Element Should Be Enabled    ${USERNAME}
    input text       ${USERNAME}        balagood123

    Element Should Be Visible    ${PASSWORD}
    Element Should Be Enabled    ${PASSWORD}
    input text       ${PASSWORD}        SZWWVZ

    Element Should Be Visible    ${LOGINBUTTON}
    click element    ${LOGINBUTTON}

    select from list by index    ${LOCATION}    3
    select from list by index    ${HOTELS}      2
    select from list by index    ${ROOM_TYPE}   3
    select from list by index    ${ROOM_NOS}    3
    select from list by index    ${ADULT_ROOM}  3
    select from list by index    ${CHILD_ROOM}  3
    click element     ${SUBMIT_BUTTON}

    click element     ${RADIO_BUTTON}
    click element     ${CONTINUE_BUTTON}

    input text        ${FIRST_NAME}     Bala
    input text        ${LAST_NAME}      subramaniyam
    input text        ${ADDRESS}        16/8,solaiyappan street chennai-21
    input text        ${CC_NUM}         1234567891234567
    select from list by index   ${CC_TYPE}      2
    select from list by index   ${EXP_MONTH}    5
    select from list by index  ${EXP_YEAR}      11
    input text        ${CVV_NUMBER}             456
    click element     ${BOOKNOW_BUTTON}

    sleep  10
    Title Should Be   ${title}
    log to console    ${order_no}



























