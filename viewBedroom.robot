*** variables ***

${showAllBedrooms}           xpath=.//*[@id='j_idt50']/a[4]
${confirm_list}              List
${shoud_contain}             test
${confirm_bedroomCreated}    Bedroom was successfully created.

*** keywords ***
ViewBedroom_confirm
                             Click Element                        ${showAllBedrooms}
                             Wait Until Page Contains             ${confirm_list}
                             Page should contain                  ${shoud_contain}
