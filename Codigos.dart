/*primer punto

void main() {
 
 const numero1=6;
 const numero2=6;

 var suma= numero1 + numero2;
  print("el resultado de la suma es $suma");
}
*/
/*
Segundo punto
void main() {
  
  double velocidad = 60.0; 
  double tiempo = 2.5; 

  
  double distancia = calcularDistancia(velocidad, tiempo);

 
  print("La distancia recorrida por el carro es de $distancia kilómetros.");
}


double calcularDistancia(double velocidad, double tiempo) {
  
  return velocidad * tiempo;
 
}
*/
/*
Tercer punto
void main() {
  int numero1= 3;
  int numero2=2;
  int numero3= 5;
  
  int suma= numero1 + numero2 + numero3;
  
  
  
  double promedio= suma/3;
  
  print("El promedio$promedio");
  
  
  
}*/

 /*cuarto punto
void main() {
  double base = 6;
  double altura = 4;
  double area = base*altura/2;
  
  print('El área del triángulo es: $area');
  
}
/*
/*Quinto punto
void main() {
  
  int respuestasCorrectas = 3;
  int respuestasIncorrectas = 2;
  int respuestasEnBlanco = 1;

 
  int puntajeFinal = (respuestasCorrectas * 4) +
      (respuestasIncorrectas * -1) +
      (respuestasEnBlanco * 0);

 
  print('Su puntaje final es: $puntajeFinal');
}
*/

 /*
/*Sexto Punto
void main() {
Map<String, dynamic> obj = {
  "Producto1":{"Nombre":"Camisa","Precio":20000,"Color":"Rojo"},
  "Producto2":{"Nombre":"Zapatos","Precio":60000,"Color":"Negro"},
  "Producto3":{"Nombre":"Manilla","Precio":70000,"Color":"Azul"},
  "Producto4":{"Nombre":"Pantalon","Precio":90000,"Color":"Verde"},
  "Producto5":{"Nombre":"Gorra","Precio":50000,"Color":"Amarillo"},
};
  int suma;
 suma= obj["Producto1"]["Precio"] + obj["Producto2"]["Precio"]+ obj["Producto3"]["Precio"]+obj["Producto4"]["Precio"]+obj["Producto5"]["Precio"];
  print("el tota es de $suma");
}*/
/*Septimo Punto
import "dart:math";
void main() {
  double catetoA = 3;
  double catetoB = 4;
  double calcularHipotenusa(double catetoA, double catetoB) {
    double hipotenusa = sqrt((catetoA * catetoA) + (catetoB * catetoB));
    return hipotenusa;
  }

  double hipotenusa = calcularHipotenusa(catetoA, catetoB);

  print('La longitud de la hipotenusa es: $hipotenusa');
}
*/
/*Octavo Punto
void main() {
  // Definir las preguntas y respuestas
  List<String> preguntas = [
    "El sol es una estrella: (V) Verdadero o (F) Falso?",
    "El agua hierve a 100 grados Celsius: (V) Verdadero o (F) Falso?",
    "La Tierra es plana: (V) Verdadero o (F) Falso?"
  ];

  List<String> respuestas = ["V", "V", "F"]; // Respuestas correctas
  List<String> respuestasUsuario = ["V", "F", "F"]; // Respuestas simuladas del usuario

  // Mostrar las respuestas correctas y las respuestas del usuario
  print("\nRespuestas:");
  for (int i = 0; i < preguntas.length; i++) {
    print("Pregunta ${i + 1}:");
    print("Respuesta correcta: ${respuestas[i]}");
    print("Tu respuesta: ${respuestasUsuario[i]}");
    print("");
  }
}
*/
/*Punto  nueve
void main() {
  // Notas simuladas del estudiante
  double notaTareas = 8.5;
  double notaExposiciones = 7.0;
  double notaParcial = 9.0;

  // Calcular la nota final
  double notaFinal = (notaTareas * 0.3) + (notaExposiciones * 0.3) + (notaParcial * 0.4);

  // Mostrar la nota final
  print('La nota final del estudiante es: $notaFinal');
}

/*
Punto Diez
void main() {
  
  Map<String, dynamic> informacionPersonal = {
    'Nombre': 'Juan',
    'Fecha de nacimiento': '01/01/2000',
    'Semestre': 3,
    'Teléfono': '1234567890',
    'Dirección': 'Calle Principal'
  };

  
  print('Información personal:');
  informacionPersonal.forEach((key, value) {
    print('$key: $value');
  });
}





 
 