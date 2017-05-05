*** Settings ***
Resource                    valuesVariables.robot

*** variables ***

${editDescription}          id=description
${editFloor}                id=floor

${saveEdit}                 xpath=.//*[@id='j_idt50']/a[1]
${assert_bedroomUpdated}    Bedroom was successfully updated.

${showAllBedrooms}          xpath=.//*[@id='j_idt50']/a[4]


*** keywords ***
enter_edits
                            Input text                           ${editDescription}          ${editBedroomDiscription}
                            Input text                           ${editFloor}                ${editBedroomFloor}

                            Click Element                        ${saveEdit}
                            Wait Until Page Contains             ${assert_bedroomUpdated}
                            Click Element                        ${showAllBedrooms}
