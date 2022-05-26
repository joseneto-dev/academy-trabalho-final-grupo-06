class Login{

    //elementos
    botãoEntrar = '.sc-ftvSup'
    emailLogin = 'input[name=email]'
    senhaLogin = 'input[name=password]'
    
    //Ações 
    telaLogin(){
        cy.visit('https://academy-lembra-compras.herokuapp.com/');
    }
    preencherEmail(email){
        cy.get(this.emailLogin).type(email);    
    }
    preencherSenha(senha){
        cy.get(this.senhaLogin).type(senha);
    }
    clicarEntrar(){
        cy.get(this.botãoEntrar).click();



}}

export default new Login(); 
