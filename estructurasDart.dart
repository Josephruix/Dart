/*import 'dart:io'; Punto1

void main() {
  stdout.write('Ingresa un número: ');
  int numero = int.parse(stdin.readLineSync()!);

  if (num % 2 == 0 && num % 3 == 0) {
    print('$numero es par y divisible por 3.');
  } else {
    print('$numero no es par y divisible por 3.');
  }
}*/
/*import 'dart:io'; punto2

void main() {
  stdout.write('Ingresa los números separados por espacio: ');
  String entrada = stdin.readLineSync()!;
  
  List<String> numStrList = entrada.split(' ');
  List<int> numeros = numStrList.map((str) => int.parse(str)).toList();
  
  numeros.sort();

  print('Lista ordenada de menor a mayor: $numeros');
}*/
/* Punto3
void main() {
  List<Map<String, dynamic>> objects = [];

  addObject(objects, "1", "camisa", "Camisa Negra");
  addObject(objects, "2", "Tenis", "Tenis Nike");
  addObject(objects, "3", "Correa 3", "Correa de cuero");

  print("List of objects:");
  for (var obj in objects) {
    print("Code: ${obj['codigo']}, Name: ${obj['nombre']}, Description: ${obj['descripcion']}");
  }
}

void addObject(List<Map<String, dynamic>> list, String code, String name, String description) {
  Map<String, dynamic> object = {
    'codigo': code, // Cambio de 'code' a 'codigo'
    'nombre': name, // Cambio de 'name' a 'nombre'
    'descripcion': description, // Sin cambios en 'description'
  };
  list.add(object);
}
}*/
/* Punto 4
void main() {
  final double pi = 3.14159;

  stdout.write('Ingresa el radio del círculo: ');
  double radio = double.parse(stdin.readLineSync()!);

  double area = calculateCircleArea(radio, pi);

  print('El área del círculo con radio $radio es: $area');
}

double calculateCircleArea(double radius, double pi) {
  return pi * radius * radius;
}*/
/* punto 5
import 'dart:math';
import 'dart:io';

void main() {
  const double gravedad = 9.81;

  stdout.write('Ingresa la altura desde la que cae el objeto: ');
  double altura = double.parse(stdin.readLineSync()!); 

  double finalVelocidad = calculateFinalVelocidad(altura, gravedad);  

  print('La velocidad del objeto en caída libre es: $finalVelocidad m/s'); //
}

double calculateFinalVelocidad(double altura, double gravedad) { 
  return sqrt(2 * gravedad * altura); 
}*/

/*  punto 6
import 'dart:io';
 
void main() {
  stdout.write('Ingresa un número: ');
  double numero = double.parse(stdin.readLineSync()!);

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
  stdout.write('Ingresa un número: ');
  int numero = int.parse(stdin.readLineSync()!);

  String mensaje = (numero % 2 == 0) ? 'par' : 'impar';

  print('El número ingresado es $mensaje.');
}*/

/* punto 8
import 'dart:io';

void main() {
  stdout.write('Ingresa un número: ');
  int numero = int.parse(stdin.readLineSync()!);

  bool divisibleEntre5 = numero % 5 == 0;
  bool divisibleEntre7 = numero % 7 == 0;
  bool divisiblePor5y7 = divisibleEntre5 && divisibleEntre7;

  if (divisiblePor5y7) {
    print('El número ingresado es divisible por 5 y 7 al mismo tiempo.');
  } else {
    print('El número ingresado no es divisible por 5 y 7 al mismo tiempo.');
  }
}*/
/*
import 'dart:io';

void main() {
  stdout.write('Ingresa el primer número: ');
  double numero1 = double.parse(stdin.readLineSync()!);

  stdout.write('Ingresa el segundo número: ');
  double numero2 = double.parse(stdin.readLineSync()!);

  stdout.write('Ingresa la operación (+, -, *, /): ');
  String operacion = stdin.readLineSync()!;

  double result;
  switch (operacion) {
    case '+':
      result = numero1 + numero2;
      break;
    case '-':
      result = numero1 - numero2;
      break;
    case '*':
      result = numero1 * numero2;
      break;
    case '/':
      if (num2 != 0) {
        result = numero1 / numero2;
      } else {
        print('Error: No se puede dividir por cero.');
        return;
      }
      break;
    default:
      print('Error: Operación no válida.');
      return;
  }*/
  /*
  void main() {
  
  int a = 0;
  int b = 1;

  
  print(a);
  print(b);

  for (int i = 2; i < 20; i++) {
    int c = a + b; 
    print(c); 
    a = b; 
    b = c;
  }
}*/





