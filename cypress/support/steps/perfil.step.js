import {login} from "../pages/perfilPage.po"

Given("acessei a tela de perfil", () => {
  
   login.telaLogin();
   login.preencherEmail();
   

  }
);