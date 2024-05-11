import 'dart:io';
import 'Estudiante.dart';

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
        print('Ingrese la cedula:');
        String? cedula = stdin.readLineSync();
        print('Ingrese el nombre:');
        String? nombre = stdin.readLineSync();
        print('Ingrese el apellido:');
        String? apellido = stdin.readLineSync();
        print('Ingrese la fecha de nacimiento (AAAA-MM-DD):');
        String? fechaNac = stdin.readLineSync();
        print('Ingrese la dirección:');
        String? direccion = stdin.readLineSync();
        print('Ingrese el teléfono:');
        String? telefono = stdin.readLineSync();

        List<double> notas = [];
        for (int i = 0; i < 5; i++) {
          print('Ingrese la nota ${i + 1}:');
          double nota = double.parse(stdin.readLineSync()!);
          notas.add(nota);
        }

        Estudiante nuevoEstudiante = Estudiante(
          cedula!,
          nombre!,
          apellido!,
          fechaNac!,
          notas,
          direccion!,
          telefono!,
        );
        nuevoEstudiante.calcularPromedio();
        estudiantes.add(nuevoEstudiante);
        break;

      case '2':
        print('Ingrese la cedula del estudiante:');
        String? cedulaBuscar = stdin.readLineSync();
        Estudiante? estudiante = estudiantes.firstWhere(
            (e) => e.cedula == cedulaBuscar,
            orElse: () => Estudiante('', '', '', '', [], '', ''));
        if (estudiante.cedula != '') {
          estudiante.mostrarInformacion();
        } else {
          print(
              'No se encontró ningún estudiante con la cedula proporcionada.');
        }
        break;

      case '3':
        print('Ingrese la cedula del estudiante:');
        String? cedulaModificar = stdin.readLineSync();
        Estudiante? estudianteModificar = estudiantes.firstWhere(
            (e) => e.cedula == cedulaModificar,
            orElse: () => Estudiante('', '', '', '', [], '', ''));
        if (estudianteModificar.cedula != '') {
          print('Ingrese la nueva dirección:');
          String? nuevaDireccion = stdin.readLineSync();
          estudianteModificar.cambiarDireccion(nuevaDireccion!);
          print('Dirección actualizada correctamente.');
        } else {
          print(
              'No se encontró ningún estudiante con la cedula proporcionada.');
        }
        break;

      case '4':
        print('Saliendo del programa...');
        break;

      default:
        print('Opción no válida. Intente de nuevo.');
        break;
    }
  } while (opcion != '4');
}
