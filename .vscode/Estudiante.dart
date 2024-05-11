import 'dart:io';

/* Parcial*/
class Estudiante {
  String cedula;
  String nombre;
  String apellido;
  String fechaNac;
  List<double> notas;
  double promedio;
  String direccion;
  String telefono;

  Estudiante(this.cedula, this.nombre, this.apellido, this.fechaNac, this.notas,
      this.promedio, this.direccion, this.telefono);

  void cambiarDireccion(String nuevaDireccion) {
    this.direccion = nuevaDireccion;
  }

  void mostrarUsuario() {
    print("Cedula: ${this.cedula}");
    print("Nombre: ${this.nombre}");
    print("Apellido: ${this.apellido}");
    print("Fecha de Nacimiento: ${this.fechaNac}");
    print("Notas: ${this.notas}");
    print("Promedio: ${this.promedio}");
    print("Direccion: ${this.direccion}");
    print("Telefono: ${this.telefono}");
  }

  void calcularPromedio() {
    double suma = 0;
    for (double nota in this.notas) {
      suma += nota;
    }
    this.promedio = suma / this.notas.length;
  }
}

void main() {
  List<Estudiante> estudiantes = [];

  String opcion;
  do {
    print('\nMenu:');
    print('1. Registrar nuevo estudiante');
    print('2. Mostrar información de un estudiante');
    print('3. Modificar dirección de un estudiante');
    print('4. Salir');
    opcion = stdin.readLineSync()!;
    switch (opcion) {
      case '1':
        registrarEstudiante(estudiantes);
        break;
      case '2':
        mostrarInformacion(estudiantes);
        break;
      case '3':
        modificarDireccion(estudiantes);
        break;
      case '4':
        print('Saliendo del programa...');
        break;
      default:
        print('Opción no válida. Por favor, elija una opción del menú.');
    }
  } while (opcion != '4');
}

void registrarEstudiante(List<Estudiante> estudiantes) {
  print('Ingrese la cedula:');
  String cedula = stdin.readLineSync()!;
  print('Ingrese el nombre:');
  String nombre = stdin.readLineSync()!;
  print('Ingrese el apellido:');
  String apellido = stdin.readLineSync()!;
  print('Ingrese la fecha de nacimiento (AAAA-MM-DD):');
  String fechaNac = stdin.readLineSync()!;
  print('Ingrese la dirección:');
  String direccion = stdin.readLineSync()!;
  print('Ingrese el teléfono:');
  String telefono = stdin.readLineSync()!;

  List<double> notas = [];
  for (int i = 0; i < 5; i++) {
    print('Ingrese la nota ${i + 1}:');
    double nota = double.parse(stdin.readLineSync()!);
    notas.add(nota);
  }

  Estudiante nuevoEstudiante = Estudiante(
      cedula, nombre, apellido, fechaNac, notas, 0, direccion, telefono);
  nuevoEstudiante.calcularPromedio();
  estudiantes.add(nuevoEstudiante);
  print('Estudiante registrado con éxito.');
}

void mostrarInformacion(List<Estudiante> estudiantes) {
  print('Ingrese la cedula del estudiante:');
  String cedulaBuscar = stdin.readLineSync()!;
  Estudiante? estudiante = estudiantes.firstWhere(
      (e) => e.cedula == cedulaBuscar,
      orElse: () => Estudiante('', '', '', '', [], 0, '', ''));
  if (estudiante.cedula != '') {
    estudiante.mostrarUsuario();
  } else {
    print('No se encontró ningún estudiante con la cedula proporcionada.');
  }
}

void modificarDireccion(List<Estudiante> estudiantes) {
  print('Ingrese la cedula del estudiante:');
  String cedulaModificar = stdin.readLineSync()!;
  Estudiante? estudianteModificar = estudiantes.firstWhere(
      (e) => e.cedula == cedulaModificar,
      orElse: () => Estudiante('', '', '', '', [], 0, '', ''));
  if (estudianteModificar.cedula != '') {
    print('Ingrese la nueva dirección:');
    String nuevaDireccion = stdin.readLineSync()!;
    estudianteModificar.cambiarDireccion(nuevaDireccion);
    print('Dirección actualizada correctamente.');
  } else {
    print('No se encontró ningún estudiante con la cedula proporcionada.');
  }
}
