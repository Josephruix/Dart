import 'dart:io';

void main() {
  stdout.write('Ingresa un número: ');
  int numero = int.parse(stdin.readLineSync()!);

  if (numero % 2 == 0 && numero % 3 == 0) {
    print('$numero es par y divisible por 3.');
  } else {
    print('$numero no es par y divisible por 3.');
  }
}

/* Punto 2
import 'dart:io';

void main() {
  
  stdout.write('Ingresa los números separados por espacio: ');
  String entrada = stdin.readLineSync()!;
  
 
  List<String> numerosComoString = entrada.split(' ');
  List<int> numeros = numerosComoString.map((string) => int.parse(string)).toList();
  
  numeros.sort();
  

  print('Lista ordenada de menor a mayor: $numeros');
}*/
/*Punto 3
void main() {
  // Lista para almacenar la información de los objetos
  List<Map<String, dynamic>> objetos = [];

  // Agregar objetos a la lista
  agregarObjeto(objetos, "001", "Objeto 1", "Descripción del objeto 1");
  agregarObjeto(objetos, "002", "Objeto 2", "Descripción del objeto 2");
  agregarObjeto(objetos, "003", "Objeto 3", "Descripción del objeto 3");

  // Mostrar la lista de objetos
  print("Lista de objetos:");
  for (var objeto in objetos) {
    print("Código: ${objeto['codigo']}, Nombre: ${objeto['nombre']}, Descripción: ${objeto['descripcion']}");
  }
}

// Función para agregar un objeto a la lista
void agregarObjeto(List<Map<String, dynamic>> lista, String codigo, String nombre, String descripcion) {
  Map<String, dynamic> objeto = {
    'codigo': codigo,
    'nombre': nombre,
    'descripcion': descripcion,
  };
  lista.add(objeto);
}

*/
/* Punto 4
import 'dart:io';

void main() {
  // Declarar la constante para el valor de Pi
  final double pi = 3.14159;

  // Solicitar al usuario que ingrese el radio del círculo
  stdout.write('Ingresa el radio del círculo: ');
  double radio = double.parse(stdin.readLineSync()!);

  // Calcular el área del círculo
  double area = calcularAreaCirculo(radio, pi);

  // Mostrar el resultado
  print('El área del círculo con radio $radio es: $area');
}

// Función para calcular el área del círculo
double calcularAreaCirculo(double radio, double pi) {
  return pi * radio * radio;
}
*/
/* Punto 5
import 'dart:math';
import 'dart:io';

void main() {
  // Definir la constante para la gravedad en la Tierra (m/s²)
  const double gravedadTierra = 9.81;

  // Solicitar al usuario que ingrese la altura desde la que cae el objeto (metros)
  stdout.write('Ingresa la altura desde la que cae el objeto (metros): ');
  double altura = double.parse(stdin.readLineSync()!);

  // Calcular la velocidad final del objeto en caída libre
  double velocidadFinal = calcularVelocidadFinal(altura, gravedadTierra);

  // Mostrar el resultado
  print('La velocidad final del objeto en caída libre es: $velocidadFinal m/s');
}

// Función para calcular la velocidad final del objeto en caída libre
double calcularVelocidadFinal(double altura, double gravedad) {
  return sqrt(2 * gravedad * altura);
}
*/
/* Punto6
import 'dart:io';

void main() {
  // Solicitar al usuario que ingrese un número
  stdout.write('Ingresa un número: ');
  double numero = double.parse(stdin.readLineSync()!);

  // Determinar si el número es positivo, negativo o cero
  if (numero > 0) {
    print('El número ingresado es positivo.');
  } else if (numero < 0) {
    print('El número ingresado es negativo.');
  } else {
    print('El número ingresado es cero.');
  }
}
*/
/*
import 'dart:io';

void main() {
  // Solicitar al usuario que ingrese un número
  stdout.write('Ingresa un número: ');
  int numero = int.parse(stdin.readLineSync()!);

  // Verificar si el número es par o impar usando el operador ternario
  String mensaje = (numero % 2 == 0) ? 'par' : 'impar';

  // Mostrar el resultado
  print('El número ingresado es $mensaje.');
}
*/
/* Punto 8
import 'dart:io';

void main() {
  // Solicitar al usuario que ingrese un número
  stdout.write('Ingresa un número: ');
  int numero = int.parse(stdin.readLineSync()!);

  // Verificar si el número es divisible entre 5 y 7 al mismo tiempo
  bool divisiblePor5 = numero % 5 == 0;
  bool divisiblePor7 = numero % 7 == 0;

  // Utilizar una expresión booleana para verificar si es divisible por 5 y 7 al mismo tiempo
  bool divisiblePor5y7 = divisiblePor5 && divisiblePor7;

  // Mostrar el resultado
  if (divisiblePor5y7) {
    print('El número ingresado es divisible por 5 y 7 al mismo tiempo.');
  } else {
    print('El número ingresado no es divisible por 5 y 7 al mismo tiempo.');
  }
}*/
/*punto 9
import 'dart:io';

void main() {
  // Solicitar al usuario que ingrese dos números y la operación
  stdout.write('Ingresa el primer número: ');
  double numero1 = double.parse(stdin.readLineSync()!);

  stdout.write('Ingresa el segundo número: ');
  double numero2 = double.parse(stdin.readLineSync()!);

  stdout.write('Ingresa la operación (+, -, *, /): ');
  String operacion = stdin.readLineSync()!;

  // Realizar la operación correspondiente utilizando la estructura switch
  double resultado;
  switch (operacion) {
    case '+':
      resultado = numero1 + numero2;
      break;
    case '-':
      resultado = numero1 - numero2;
      break;
    case '*':
      resultado = numero1 * numero2;
      break;
    case '/':
      if (numero2 != 0) {
        resultado = numero1 / numero2;
      } else {
        print('Error: No se puede dividir por cero.');
        return;
      }
      break;
    default:
      print('Error: Operación no válida.');
      return;
  }

  // Mostrar el resultado de la operación
  print('El resultado de la operación $operacion es: $resultado');
}
*/
/* punto 10
import 'dart:io';

void main() {
  // Solicitar al usuario que ingrese dos números y la operación
  stdout.write('Ingresa el primer número: ');
  double numero1 = double.parse(stdin.readLineSync()!);

  stdout.write('Ingresa el segundo número: ');
  double numero2 = double.parse(stdin.readLineSync()!);

  stdout.write('Ingresa la operación (+, -, *, /): ');
  String operacion = stdin.readLineSync()!;

  // Realizar la operación correspondiente utilizando la estructura switch
  double resultado;
  switch (operacion) {
    case '+':
      resultado = numero1 + numero2;
      break;
    case '-':
      resultado = numero1 - numero2;
      break;
    case '*':
      resultado = numero1 * numero2;
      break;
    case '/':
      if (numero2 != 0) {
        resultado = numero1 / numero2;
      } else {
        print('Error: No se puede dividir por cero.');
        return;
      }
      break;
    default:
      print('Error: Operación no válida.');
      return;
  }

  // Mostrar el resultado de la operación
  print('El resultado de la operación $operacion es: $resultado');
}

*/