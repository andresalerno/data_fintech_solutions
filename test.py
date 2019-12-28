def quicksort(array):
  if len(array) < 2:
    return array
  else:
    pivo = array[0] # caso recursivo
    menores = [i for i in array [1:] if i <= pivo] # subarray de todos os elementos menores do que o pivo
    maiores = [i for i in array[1:] if i > pivo] # subarray de todos os elementos maiores do que o pivo
    return quicksort(menores) + [pivo] + quicksort(maiores)

print quicksort([10, 5, 2, 3])
