class Pessoa:
    def __init__(self, nome, idade):
        self._nome = nome
        self._idade = idade

    def get_nome(self):
        return self._nome

    def get_idade(self):
        return self._idade

    def envelhece(self):
        self._idade += 1


class Aluno:
    def __init__(self, nome, idade, curso, ra):
        self._nome = nome
        self._idade = idade
        self._curso = curso
        self._ra = ra

    def get_ra(self):
        return self._ra

    def get_curso(self):
        return self._curso

    def set_curso(self, n_curso):
        self._curso = n_curso


class Professor(Pessoa):
    def __init__(self, nome, idade, disciplina):
        # self._nome = nome
        # self._idade = idade
        super().__init__(nome, idade)
        self._disciplina = None

    def ministrar(self, disciplina) -> None:
        self.disciplina = disciplina

    def disciplina(self):
        return self._disciplina,


if __name__ == '__main__':
    prof = Professor('Meu Pau', 18)
    prof.envelhece()
    print(prof.get_nome())
    print(prof.get_idade())
    print(prof.disciplina())