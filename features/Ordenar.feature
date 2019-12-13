Feature: User can order the processes by their status.

  As a student
  So that I can keep processes in order
  I want to order them by status

  Background: Start from the Atualizar Processo form on the home page
    Given I am on the Página de Processos home page
    Then I press "1"

  Scenario: Try to order the processes (happy path)
    Given I am on the Página de Processos home page
    And I press "Status"
    Then I should be on the Editar Processo 1 home page
    And I fill in "name" with "Joao"
    And I fill in "description" with "Trancar coisa"
    And I select "Em andamento" from "Status"
    And I press "Editar Processo"
    Then I should see "..."