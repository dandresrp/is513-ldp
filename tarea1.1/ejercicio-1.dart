void main() {
  Circulo c1 = new Circulo(5, "rojo");

  c1.calcularArea();
  c1.calcularPerimetro();
}

class Circulo {
  final double radio;
  final String color;
  static const pi = 3.1416;

  Circulo(this.radio, this.color);

  void calcularArea() {
    final double area;
    area = radio * radio * pi;
    print("El área del circulo es: " + area.toString());
  }

  void calcularPerimetro() {
    final double perimetro;
    perimetro = 2 * pi * radio;
    print("El perimetro del circulo es: " + perimetro.toString());
  }
}
