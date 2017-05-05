*** Settings ***
Resource            login_credentials.robot

*** variables ***

${user_field}        id=formLogin:login
${pass_field}        id=formLogin:senha
${loggin_button}     name=formLogin:j_idt27

*** keywords ***
perform_login
                     Input Text                               ${user_field}       ${admin_username}
                     Input Text                               ${pass_field}       ${admin_password}
                     Click Element                            ${loggin_button}
                     Wait Until Page Contains                 ${dashboard}
