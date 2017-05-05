*** Settings ***
resource              createBedroom.robot

*** variables ***

${create_bedroom}        xpath=.//*[@id='j_idt49']/a[1]


${edit_bedroomTest}      xpath=.//*[@id='j_idt49']/table/tbody/tr[7]/td[8]/a[2]
${assert_edit}           Edit Bedroom
${assert_listBedroom}    List
${shoud_conatin}         test2

${click_delete}          xpath=.//*[@id='j_idt49']/table/tbody/tr[7]/td[8]/a[3]
${assert_delete}         Bedroom was successfully deleted.

*** keywords ***

create_bedroom
                         Click Element                                             ${create_bedroom}
                         Wait Until Page Contains                                  ${assert_bedroom}


edit_bedroom
                         Click Element                                             ${edit_bedroomTest}
                         Wait Until Page Contains                                  ${assert_edit}
assert_after_edit
                         Wait Until Page Contains                                  ${assert_listBedroom}
                         Page should contain                                       ${shoud_conatin}

 delete_bedroom
                         Wait Until Page Contains                                  ${shoud_conatin}
                         Click Element                                             ${click_delete}
                         Wait Until Page Contains                                  ${assert_delete}
