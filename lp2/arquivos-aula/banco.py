__alunos__ = ["pedro.santana@aluno.impacta.com.br",
              "barbara.santos@aluno.impacta.com.br"]


class Cliente():
    """
    A classe Cliente deve ter os atributos: nome, telefone e email, que
    serão passados em sua construção.
    Não é necessário implementar nenhum método para esta classe.
    """
    def __init__(self, nome_cliente, telefone_cliente, email_cliente):
        self.set_nome(nome_cliente)
        self.set_email(email_cliente)
        self.set_telefone(telefone_cliente)

    def get_nome(self):
        return self._nome

    def set_nome(self, n):
        self._nome = n

    def get_email(self):
        return self._email

    def set_email(self, e):
        if "@" in e:
            self._email = e
        else:
            print("C é burro cara !")

    def get_telefone(self):
        return self._telefone

    def set_telefone(self, numero):
        if type(numero) == int:
            self._telefone = numero
        else:
            print("C é burro cara !")


class Banco():
    """
    A classe Banco deverá receber um nome em sua construção e deverá
    implementar os métodos:
    abre_contas(clientes e saldo inicial): abre uma nova conta
    e lista_contas(): apresenta um resumo de todas as contas do banco
    DICA: mantenha uma variável interna qe armazene todas as contas do banco
    DICA2: utilze a variável acima para gerar automaticamente o número das
    contas do banco
    """
    def __init__(self, nome_banco):
        self._nome = nome_banco
        self._lista_contas = []

    def get_nome(self):
        return self._nome

    def set_nome(self, nome_banco):
        self._nome[0] = self._nome[0].upper()

    def get_lista_contas(self):
        return self._lista_contas

    def set_lista_contas(self):
        pass

    def abre_contas(self, clientes, s_inicial):
        conta_nova = Conta(clientes, s_inicial, len(self.lista_contas) + 1)
        self.lista_contas.append(conta_nova)

    def lista_contas(self):
        self.get_lista_contas()


class Conta():
    """
    A Classe conta deverá receber em sua construção os atributos:
    clientes (uma lista de Clientes), número da conta e um saldo inicial.
    Ela deverá implementar os métodos:
    saque(valor): diminui o saldo em valor
    deposito(valor): aumenta o saldo em valor
    extrato: exibe todas as transações da conta e o saldo após cada transação
    resumo():  imprime um resumo da conta (nome dos clientes, numero da conta
    e saldo)
    DICA: Para fazer a função extrato faça uma variável interna que que
    armazene todas as operações de saque e deposito e seus valores.
    """
    def __init__(self, lista_clientes, n_conta, s_inicial):
        self._clientes = lista_clientes
        self._numero = n_conta
        self._saldo = s_inicial
        self._transacoes = []
        self._transacoes.append({'inicial': s_inicial})

    def get_clientes(self):
        return self._clientes

    def set_clientes(self):
        pass

    def get_numero(self):
        return self._numero

    def set_numero(self):
        pass

    def get_saldo(self):
        return self._saldo

    def set_saldo(self):
        pass

    def get_transacoes(self):
        return self._transacoes

    def set_transacoes(self):
        pass

    def saque(self, valor):
        self._saldo = self._saldo - valor
        self._transacoes.append({'saque': valor})

    def deposito(self, valor):
        self._saldo = self._saldo + valor
        self._transacoes.append({'deposito': valor})

    def extrato(self):
        return self.get_transacoes()