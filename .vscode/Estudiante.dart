class Estudiante {
  String cedula;
  String Nombre;
  String Apellido;
  String FechaNAC;
  List<double> Notas;
  double promedio;
  String Direccion;
  String Telefono;

  Estudiante(this.cedula, this.Nombre, this.Apellido, this.FechaNAC, this.Notas,
      this.promedio, this.Direccion, this.Telefono);

  void cambiarDireccion(String nuevaDireccion) {
    this.Direccion = nuevaDireccion;
  }

  void mostrarUsuarios() {
    print("Cedula: ${this.cedula}");
    print("Nombre: ${this.Nombre}");
    print("Apellido: ${this.Apellido}");
    print("Fecha de Nacimiento: ${this.FechaNAC}");
    print("Notas: ${this.Notas}");
    print("Promedio: ${this.promedio}");
    print("Direccion: ${this.Direccion}");
    print("Telefono: ${this.Telefono}");
  }

  void calcularPromedio() {
    double suma = 0;
    for (double nota in this.Notas) {
      suma += nota;
    }
    this.promedio = suma / this.Notas.length;
  }
}
