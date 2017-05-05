*** Settings ***
Library                    Selenium2Library
Library                    OperatingSystem
Library                    String

Resource                   login.robot
Resource                   environment_credentials.robot
Resource                   setupTeardown.robot
Resource                   dashboard.robot
Resource                   bedroomList.robot
Resource                   editBedroom.robot


Test Setup                 Setup
Test Teardown              Teardown


*** Test Cases ***
Test_create_new_bedroom

                           perform_login
                           go_bedroom
                           create_bedroom
                           enter_bedroomInfo
                           ViewBedroom_confirm
                           perform_logout


Test_edit_bedroom
                           perform_login
                           go_bedroom
                           edit_bedroom
                           enter_edits
                           assert_after_edit
                           perform_logout

Test_delete_client
                           perform_login

                           go_bedroom
                           delete_bedroom

                           perform_logout

