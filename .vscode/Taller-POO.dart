import 'dart:io';

class Libro {
  String titulo;
  String autor;
  double precio;
  int cantidadStock;

  Libro({
    required this.titulo,
    required this.autor,
    required this.precio,
    required this.cantidadStock,
  });

  @override
  String toString() {
    return 'Libro: ${titulo}\nAutor: ${autor}\nPrecio: \$${precio.toStringAsFixed(2)}\nCantidad en Stock: $cantidadStock';
  }

  Map<String, dynamic> comprar(int cantidad) {
    if (cantidad <= cantidadStock) {
      cantidadStock -= cantidad;
      return {
        'libro': this,
        'cantidadComprada': cantidad,
        'exito': true,
      };
    }
    return {
      'libro': null,
      'cantidadComprada': 0,
      'exito': false,
    };
  }
}

void main() {
  List<Libro> libros = [
    Libro(
      titulo: "Cien Años De soledad",
      autor: "Gabriel Garcia",
      precio: 50000,
      cantidadStock: 100,
    ),
  ];

  while (true) {
    print("\n1. Agregar otro libro");
    print("2. Imprimir información de libros existentes");
    print("3. Comprar un libro");
    print("4. Salir");
    stdout.write("Seleccione una opción: ");
    String? input = stdin.readLineSync();

    if (input == '1') {
      agregarLibro(libros);
    } else if (input == '2') {
      imprimirLibros(libros);
    } else if (input == '3') {
      comprarLibro(libros);
    } else if (input == '4') {
      print("Programa Terminado");
      return;
    } else {
      print("La Opcion no es valida");
    }
  }
}

// Function to add a book
void agregarLibro(List<Libro> libros) {
  stdout.write("Da El titulo de el libro: ");
  String titulo = stdin.readLineSync() ?? "";
  stdout.write("Nombre del autor: ");
  String autor = stdin.readLineSync() ?? "";
  stdout.write("Precio del libro:  ");
  double precio = double.parse(stdin.readLineSync() ?? '0');
  stdout.write("Stock: ");
  int cantidadStock = int.parse(stdin.readLineSync() ?? '0');

  libros.add(Libro(
    titulo: titulo,
    autor: autor,
    precio: precio,
    cantidadStock: cantidadStock,
  ));
  print("El libro fue agregado");
}

// Function to print books
void imprimirLibros(List<Libro> libros) {
  if (libros.isEmpty) {
    print("No hay libro en la lista.");
  } else {
    print("\nListado de libros:");
    for (Libro libro in libros) {
      print(libro);
    }
  }
}

void comprarLibro(List<Libro> libros) {
  stdout.write("Titulo de el libro a comprar: ");
  String titulo = stdin.readLineSync() ?? "";
  stdout.write("Cantidad: ");
  int cantidad = int.parse(stdin.readLineSync() ?? '0');

  Libro libroABuscar = libros.firstWhere(
    (libro) => libro.titulo.toLowerCase() == titulo.toLowerCase(),
    orElse: () => Libro(
      titulo: '',
      autor: '',
      precio: 0.0,
      cantidadStock: 0,
    ),
  );

  if (libroABuscar.titulo.isNotEmpty) {
    Map<String, dynamic> resultadoCompra = libroABuscar.comprar(cantidad);
    if (resultadoCompra['exito']) {
      print("Compra exitosa:");
      print("Libro: ${libroABuscar.titulo}");
      print("Cantidad comprada: ${resultadoCompra['cantidadComprada']}");
    } else {
      print("Stock Insifuciente");
    }
  } else {
    print("No se encontro el libro");
  }
}
