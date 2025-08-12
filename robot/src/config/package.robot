*** Settings ***
Library    SeleniumLibrary    screenshot_root_directory=reports    timeout=30s
Library    String                              # N/I
Library    Collections                         # N/I
Library    OperatingSystem                     # N/I
Library    RequestsLibrary                     # I
Library    DateTime                            # N/I
Library    FakerLibrary       
Library    BeautifulSoupLibrary.py

# Keywords
Variables    hooks.yml
Resource    ../auto/keywords/global/keywords_Global.robot
Resource    ../auto/keywords/global/Keywords_modelos.robot
Resource    ../auto/keywords/global/Keywords_Gerador_dados.robot


# Pages
Resource    ../auto/pages/Variables_global.robot