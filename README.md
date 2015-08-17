# ecommerce-test-exercise

Infraestrutura:
---------------

A instalação do Ruby utilizada foi feita através de RVM (https://rvm.io/),
na última versão estável. A versão de Ruby é a mais recente (2.2.2) e o driver
para o Capybara é o de Selenium, que normalmente inicia o Firefox local.

Foram utilizadas as versões mais recentes das gems capybara, cucumber, HTTParty e
selenium. As versões exatas podem ser consultadas no Gemfile. O sistema 
operacional utilizado foi Ubuntu 15.04.

Utilizei como base o seguinte projeto, aproveitando sua estrutura:
    
    git://github.com/searls/remote-capybara-cucumber-example.git

As instruções para executar o projeto de testes seguem o mesmo esquema daquele:

    git clone git://github.com/jorgediz/ecommerce-test-exercise.git
    cd ecommerce-test-exercise   
    bundle install
    bundle exec cucumber 

O projeto foi desenvolvido utilizando a IDE NetBeans (8.0.2), com o plugin
para Ruby e Rails, disponível em http://plugins.netbeans.org/plugin/38549/ruby-and-rails
Depois de clonado é possível abri-lo diretamente nesta versão da IDE, mas não
depende dela, apenas da linha de comando.

Exercício:
----------

Foram criadas duas features:

* tv:

    Faz o teste do caminho feliz para adicionar uma TV (o primeiro item) ao carrinho

* cep:
 
    Contém 2 cenários: um para chamadas bem sucedidas ao web service, e outro 
    para testar os casos onde se esperam falhas. Infelizmente, o serviço dos
    correios não respeita a semântica dos códigos de HTTP e o reporte de falhas
    foi feito de acordo com o comportamento observado (JSON inválido sendo 
    retornado)

Ambas features são testadas utilizando os comandos acima.


