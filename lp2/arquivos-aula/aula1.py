def EhPrimo(n):
    for i in range(2, n//2+1):
        if n % i ==0:
            return False
    return True

def ListaPrimos(n):
    lista = []
    for i in range(2,n):
        if EhPrimo(i):
            lista.append(i)
    return lista

#print(ListaPrimos(int(input("informe um numero: "))))

def FatoresPrimos(n):
    fatores = []
    if EhPrimo(n):
        return [[n,1]]
    for i in ListaPrimos(n//2+1):
        pot = 0
        while n % i == 0:
            pot += 1
            n = n/i
        if pot != 0:
            fatores.append([i,pot])
    return fatores

print(FatoresPrimos(1024))