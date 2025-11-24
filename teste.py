def caminho(n, tictac, mapa, byte, saida, vali, visitado):

    if visitado != [] and byte in visitado: # se ele ja passou por ali
        return tictac-1, vali

    visitado.append(byte.copy())

    if byte == saida: # se chegou na saida
        return tictac, True

    elif tictac >= 60: # se o tempo acabou
        return tictac-1, vali

    if byte[0] < n and byte[1] < n and byte[0] >= 0 and byte[1] >= 0: # se estiver dentro do mapa
        if mapa[byte[0]][byte[1]] == 'A': # se for abobora
            return tictac-1, vali
    else: # se estiver fora do mapa
        return tictac-1, vali
    

    
    byte[0] += 1 # baixo
    tictac, vali = caminho(n, tictac+1, mapa, byte, saida, vali, visitado)
    byte[0] -= 1


    byte[1] += 1 # direita
    tictac, vali = caminho(n, tictac+1, mapa, byte, saida, vali, visitado)
    byte[1] -= 1


    byte[0] -= 1 # cima
    tictac, vali = caminho(n, tictac+1, mapa, byte, saida, vali, visitado)
    byte[0] += 1


    byte[1] -= 1 # esquerda
    tictac, vali = caminho(n, tictac+1, mapa, byte, saida, vali, visitado)


    return tictac, vali

# ----------------------
byte = []
saida = []
mapa = []
hora = input()
auxiliar = hora.split(':')
tictac = int(auxiliar[1])

print(f'O relógio marca 23 horas e {tictac} minuto(s)! Byte tem apenas {60-tictac} minuto(s) para escapar!')

n = int(input())

for i in range(n):
    m = input()
    mapa.append(list(m))

for i in range(n):
    for l in mapa[i]: 
        if l == 'S':
            saida = [i , mapa[i].index(l)]

        elif l == 'B':
            byte = [i , mapa[i].index(l)]

tic, vali = caminho(n, tictac, mapa, byte, saida, False, [])


if vali:
    precid = tic-tictac
    print(f'CONSEGUIMOS!! Byte precisou de {precid} minuto(s) para conseguir escapar!')

    if precid>10:
        print(f'Abóboras CInistras que nada! Byte mostrou quem é que manda e conseguiu sair faltando {60-tic} minutos para elas acordarem')
    else:
        print('Ufa! Essa foi por pouco! Mas com ajuda dos alunos de IP essas abóboras nem pareciam tão sinistras assim.')
else:
    print('NÃÃÃÃO! Tudo isso por causa de um docinho! Você estará para sempre conosco, Byte!')