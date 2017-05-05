*** Settings ***
Resource                  login_credentials.robot
Resource                  valuesVariables.robot
Resource                  viewBedroom.robot
*** variables ***

${bedroomStatus}          xpath=.//*[@id='bedroomStatusId']
${bedroomStatusVacant}    xpath=.//*[@id='bedroomStatusId']/option[2]
${description}            id=description
${floor}                  id=floor
${number}                 id=number
${priceDaily}             id=priceDaily
${bedroomType}            xpath=.//*[@id='typeBedroomId']
${bedroomTypeTopTwin}     xpath=.//*[@id='typeBedroomId']/option[4]
${saveBedroom}            xpath=.//*[@id='j_idt50']/a[1]
${assert_bedroom}         Create New Bedroom

*** Keywords ***
enter_bedroomInfo

                          Click Element                                  ${bedroomStatus}
                          Click Element                                  ${bedroomStatusVacant}
                          Input text                                     ${description}               ${bedroomDescriptionTest}
                          Input text                                     ${floor}                     ${bedroomdFloor3}
                          Input text                                     ${number}                    ${bedroomNumber300}
                          Input text                                     ${priceDaily}                ${bedroomPriceDaily}



                          Click Element                                  ${bedroomType}
                          Click Element                                  ${bedroomTypeTopTwin}

                          Click Element                                  ${saveBedroom}
                          Wait Until Page Contains                       ${confirm_bedroomCreated}
