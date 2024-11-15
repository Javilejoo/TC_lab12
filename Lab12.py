def ejercicio1():
     D = [{'make': 'Nokia', 'model': 216, 'color': 'Black'},
         {'make': 'Apple', 'model': 2, 'color': 'Silver'},
         {'make': 'Huawei', 'model': 50, 'color': 'Gold'},
         {'make': 'Samsung', 'model': 7, 'color': 'Blue'}]
     print(D)  
     continue_ = True
     while continue_:
          key = input("Enter the key to sort by: ")
          if key == 'model':
               D = sorted(D, key=lambda x: x['model'])
          elif key == 'make':
               D = sorted(D, key=lambda x: x['make'])
          elif key == 'color':
               D = sorted(D, key=lambda x: x['color'])
          print(D)
          continue_ = input("Do you want to continue? (y/n): ") == 'y'

def ejercicio2():
     numeros = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
     continue_ = True
     while continue_:
          exponentiation = int(input("Enter the exponentiation: "))
          result = list(map(lambda x: x ** exponentiation, numeros))
          print(result)
          continue_ = input("Do you want to continue? (y/n): ") == 'y'

def ejercicio3():
     x = [[1, 2, 3, 1],
          [4, 5, 6, 0],
          [7, 8, 9, -1]]
     print('Matriz X:\n', x)
     print('Transpuesta de la matriz X usando lambda')
     xT = list(map(lambda x: list(x), zip(*x)))
     print(xT)

def ejercicio4():
     colores = ['rojo', 'verde', 'azul', 'amarillo', 'gris', 'blanco', 'negro']
     colores1 = []
     borrar = True
     print(colores)
     while borrar:
          remove_colores = input('Ingrese un color a borrar:')
          colores1.append(remove_colores)
          print(colores1)
          borrar = input("Do you want to continue? (y/n): ") == 'y'
     print('Lista de colores inicial:', colores)
     print('Lista de colores a eliminar', colores1)
     print('Eliminando colores...')
     # Eliminar elementos de la lista 'colores' usando lambda
     colores_resultantes = list(filter(lambda color: color not in colores1, colores))
     print('Lista de colores resultantes:', colores_resultantes)




def menu():
     continuar = True
     while continuar:
          print('-----Laboratiorio #12-----')
          print('1. Ejercicio 1\n2. Ejercicio 2\n3. Ejercicio 3\n4. Ejercicio 4')
          opcion = input('Ingrese el ejercicio a ver: ')
          if opcion == '1':
               ejercicio1()
          elif opcion == '2':
               ejercicio2()
          elif opcion == '3':
               ejercicio3()
          elif opcion == '4':
               ejercicio4()
          else:
               print('Opcion no valida')
          continuar = input('Desea continuar? (y/n): ') == 'y'

menu()