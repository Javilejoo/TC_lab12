import Data.List (sortBy, transpose)
import Data.Ord (comparing)
ejercicio1 :: IO ()
ejercicio1 = do
    let d = [("Nokia", 216, "Black"),
             ("Apple", 2, "Silver"),
             ("Huawei", 50, "Gold"),
             ("Samsung", 7, "Blue")]
    putStrLn "Lista original:"
    print d
    putStrLn "Ingrese la clave para ordenar (model, make, color):"
    key <- getLine
    let sortedD = case key of
                      "model" -> sortBy (comparing (\(_, model, _) -> model)) d
                      "make"  -> sortBy (comparing (\(make, _, _) -> make)) d
                      "color" -> sortBy (comparing (\(_, _, color) -> color)) d
                      _       -> d
    putStrLn "Lista ordenada:"
    print sortedD

ejercicio2 :: IO ()
ejercicio2 = do
    let numeros = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10] -- Lista original
    putStrLn "Lista original:"
    print numeros
    putStrLn "Ingrese la potencia a calcular (n):"
    nStr <- getLine                          -- Leer la entrada del usuario como cadena
    let n = read nStr :: Int                 -- Convertir la cadena a un entero
    let result = map (^ n) numeros   -- Aplicar la potencia a cada elemento de la lista
    putStrLn "Resultado:"
    print result                             -- Mostrar el resultado



ejercicio3 :: IO ()
ejercicio3 = do
    let x = [[1, 2, 3, 1],
             [4, 5, 6, 0],
             [7, 8, 9, -1]]
    putStrLn "Matriz original:"
    print x
    putStrLn "Matriz transpuesta:"
    let xT = transpose x
    print xT

ejercicio4 :: IO ()
ejercicio4 = do
    let colores = ["rojo", "verde", "azul", "amarillo", "gris", "blanco", "negro"]
    putStrLn "Lista original:"
    print colores
    putStrLn "Ingrese los colores a borrar separados por comas:"
    input <- getLine
    let colores1 = words [if c == ',' then ' ' else c | c <- input] -- Dividir por comas
    let coloresResultantes = filter (`notElem` colores1) colores   -- Filtrar elementos no deseados
    putStrLn "Lista resultante:"
    print coloresResultantes



menu :: IO ()
menu = do
    putStrLn "----- Laboratorio #12 -----"
    putStrLn "1. Ejercicio 1: Ordenar lista de diccionarios"
    putStrLn "2. Ejercicio 2: Potencia n-ésima de elementos"
    putStrLn "3. Ejercicio 3: Transponer matriz"
    putStrLn "4. Ejercicio 4: Eliminar elementos de una lista"
    putStrLn "Seleccione una opción (1-4):"
    opcion <- getLine
    case opcion of
        "1" -> ejercicio1
        "2" -> ejercicio2
        "3" -> ejercicio3
        "4" -> ejercicio4
        _   -> putStrLn "Opción no válida"
    putStrLn "¿Desea continuar? (y/n):"
    continuar <- getLine
    if continuar == "y" then menu else putStrLn "¡Hasta luego!"

main :: IO ()
main = menu
