Feature: Query Postal Code Web Service (CEP)

Scenario Outline: Successful query

Given the endpoint "http://cep.correiocontrol.com.br/"
When I provide the postal code "<cep>"
And I retrieve the address
Then I should get "uf" as "<uf>"
And I should get "logradouro" as "<logradouro>"
And I should get "localidade" as "<localidade>"
And I should get "bairro" as "<bairro>"
And I should get "cep" as "<cep>"
Then I should get "uf" as "<uf>"

Examples:
    | cep       | localidade    | uf  | bairro              | logradouro         |
    | 13300160  | Itu           | SP  | Centro              | Rua Barão do Itaim |   
    | 13300905  | Itu           | SP  | Centro              | Rua Barão do Itaim 41 - Edifício Novo Itu |   
    | 13040089  | Campinas      | SP  | Jardim Nova Europa  | Rua Manoel Sylvestre de Freitas Filho |
    | 55555000  | Xexéu         | PE  | | |


Scenario Outline: Check response status of query

Given the endpoint "http://cep.correiocontrol.com.br/"
When I provide the postal code "<cep>"
And I retrieve the address
Then I should get status "<status>"
And I should get a result that is "<valid_result>"

Examples:
    | cep       | status    | valid_result  |
    | 13300905  | 200       | valid         |
    | 13        | 200       | not valid     |
    |           | 200       | not valid     | 
    | abc       | 200       | not valid     |
    | a%20place | 200       | not valid     |

