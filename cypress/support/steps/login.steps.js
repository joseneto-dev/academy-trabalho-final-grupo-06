import {login} from "../pages/login.po"

Given('acessei a pagina', () => {
	visit();
});

When('preencho o campo e-mail com um e-mail existente', () => {
	return true;
});

And('preencho o campo senha com a senha correta', () => {
	return true;
});

When('clico em Entrar', () => {
	return true;
});


Then('tenho acesso ao sistema', () => {
	return true;
});


When('clico em Entrar', () => {
	return true;
});

And('preencho o campo senha com a senha incorreta', () => {
	return true;
});


Then('Then visualizo a mensagem "E-mail ou senha incorretos.', () => {
	return true;
});

And('preencho o campo senha com uma senha qualquer', () => {
	return true;
});