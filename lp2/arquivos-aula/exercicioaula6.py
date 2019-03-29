class Calendar():
    def __init__(self, d, m, a):
        self.dia = d
        self.mes = m
        self.ano = a

    def amanha(self):
        if self.month == 2:
            if self.dia == 28:
                self.dia = 1
                self.mes += 1
            else:
                self.dia += 1
        elif self.m in [1, 3, 5, 7, 8, 10, 12]:
            if self.dia == 31:
                if self.mes == 12:
                    self.ano += 1
                    self.mes = 1
                    self.dia = 1
                else:
                    if self.dia == 31:
                        self.mes += 1
                        self.dia = 1
            else:
                self.dia += 1
        else:
            if self.dia == 30:
                self.dia = 1
                self.mes += 1
            else:
                self.dia += 1

    def semana_que_vem(self):
        pass

    def mes_que_vem(self):
        pass

    def ano_que_vem(self):
        self.ano += 1