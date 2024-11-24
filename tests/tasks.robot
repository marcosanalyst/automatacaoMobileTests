*** Settings ***

Documentation    Suite de testes do cadastro de tarefas

Resource    ${EXECDIR}/resources/base.resource

Test Setup        Start session
Test Teardown     Finish session

*** Test Cases ***
Deve poder cadastrar uma nova tarefa

    ${task}    Set Variable    Estudar Python
    Remove task from database    ${task} 

    Do login
    
  

    Create a new task    ${task}
    Should have task     ${task}

  
 # USANDO GHERKIN 
Deve poder remover uma tarefa indesejada

    [Tags]    remove
    
    # Dado que eu tenho uma tarefa indesejada
    ${task}    Set Variable        Comprar refrigerante
     Remove task from database    ${task} 
     
     # E essa tarefa foi cadastrada no sistema
     Do login
     Create a new task    ${task}
     Should have task     ${task}
    
    # Quando faço a exclusão dessa tarefa
     Remove task by name    ${task}    
     # Então essa tarefa some da tela
     Wait Until Page Does Not Contain    ${task} 

Deve poder concluir uma tarefa

    [Tags]    done
    
    
    ${task}    Set Variable        Estudar Xtpath
     Remove task from database     ${task} 
     
     
    Do login
    Create a new task    ${task}
    Should have task     ${task}
    
    
    Finish task        ${task}    
    Task should be done    ${task}




    