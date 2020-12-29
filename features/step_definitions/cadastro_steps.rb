
Dado('que acesso a página de cadastro') do                                   
    visit "/signup"
  end                                                                          
                                                                               
  # Quando('submeto o meu cadastro completo') do   
     
  # end  

  Quando('submeto o seguinte formulário de cadastro:') do |table|              
    # table is a Cucumber::MultilineArgument::DataTable   

    #log table.hashes

    user = table.hashes.first

    #log user
    
    MongoDB.new.remove_user(user[:email])
                               
    find("#fullName").set user[:nome]
    find("#email").set user[:email]
    find("#password").set user[:senha]
    #vamos usar dataTable para colocar a massa embutida no cenario

    click_button "Cadastrar"
  end                                                                          

 
  # Quando('submeto o meu cadastro sem o nome') do                               
  #   find("#email").set Faker::Internet.free_email
  #   find("#password").set "1234"

  #   click_button "Cadastrar"
  # end                                                                       
    
  
  # Então('vejo a mensagem de alerta: Oops. Informe seu nome completo!') do      
  #    alert =find(".alert-dark")
  #    expect(alert.text).to eql "Oops. Informe seu nome completo!"
  # end   

  
  #  Quando('submeto o meu cadastro sem o email') do                              
  #    find("#fullName").set "Giane mariano"
  #    find("#password").set "1234"

  #    click_button "Cadastrar"
  # end        
    
  # Quando('submeto o meu cadastro com email incorreto') do  
  #   find("#fullName").set "Giane mariano"
  #   find("#email").set "giane*gmail.com"
  #   find("#password").set "1234"

  #   click_button "Cadastrar"
  # end
                                                                               
  #   Então('vejo a mensagem de alerta: Oops. Informe um email válido!') do  
  #     alert =find(".alert-dark")
  #     expect(alert.text).to eql "Oops. Informe um email válido!"                 
  # end 
  
  # Quando('submeto o meu cadastro sem a senha') do                              
  #   find("#fullName").set "Giane mariano"
  #   find("#email").set Faker::Internet.free_email

  #   click_button "Cadastrar"
  # end                                                                          
                                                                               
  # Então('vejo a mensagem de alerta: Oops. Informe sua senha secreta!') do      
  #   alert =find(".alert-dark")
  #   expect(alert.text).to eql "Oops. Informe sua senha secreta!" 
  # end     
  
                                                                       