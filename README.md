# add-e-del-user


Este é um script em lote que permite realizar algumas ações relacionadas à gerência de contas de usuário em um sistema operacional Windows. O menu apresentado ao usuário contém as seguintes opções:

Excluir contas
Apagar a pasta da conta
Adicionar uma conta
Adicionar uma conta administrador
Login automático no Windows
Gerenciador do Computador
Reiniciar o Computador
S. SAIR
Ao escolher uma das opções, o script redireciona para uma função correspondente. Por exemplo, a opção 1, "Excluir contas", direciona para a função "DEL", que solicita ao usuário o nome da conta a ser excluída e a remove usando o comando "net user".

O script utiliza vários comandos do sistema operacional Windows, como "net user" para gerenciar as contas de usuário, "rd" para remover pastas e "shutdown" para reiniciar o computador.

É importante notar que, embora este script possa ser útil para a gerência de contas em um ambiente Windows, ele não foi criado com o objetivo de ser usado como um script universal ou aplicável a todos os casos de uso. Além disso, é importante observar que, embora as opções de login automático e de adicionar contas administrativas possam ser úteis em alguns casos, elas também podem ser um risco de segurança, dependendo do ambiente em que estão sendo usadas.
