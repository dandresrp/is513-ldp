void main() {
  Tarea t1 = Tarea('Leer', 'Continuar leyendo Shingeki');
  Tarea t2 = Tarea('Estudiar', 'Leer capítulos 3, 4, y 5 del libro de física');
  Tarea t3 = Tarea('Entrenar', 'Hacer 20 minutos de cardio');

  Tarea.agregarTarea(t1);
  Tarea.agregarTarea(t2);
  Tarea.agregarTarea(t3);

  Tarea.completarTarea(0);

  Tarea.imprimirLista();
  print('');

  Tarea.eliminarTarea(1);

  Tarea.imprimirLista();
  print('');
}

class Tarea {
  String titulo;
  String descripcion;
  bool estado;

  Tarea(this.titulo, this.descripcion) : estado = false;

  static List<Tarea> tareas = [];

  static void agregarTarea(Tarea tarea) {
    tareas.add(tarea);
  }

  static void eliminarTarea(int i) {
    if (i >= 0 && i < tareas.length) {
      tareas.removeAt(i);
    } else {
      print('No existe esta tarea');
    }
  }

  static void completarTarea(int i) {
    if (i >= 0 && i < tareas.length) {
      tareas[i].estado = true;
    } else {
      print('No existe esta tarea');
    }
  }

  static void imprimirLista() {
    int i = 1;
    for (var tarea in tareas) {
      print('$i. $tarea');
      i++;
    }
  }

  @override
  String toString() {
    return 'Tarea: $titulo, Descripción: $descripcion, Estado: ${estado ? "Completada" : "Incompleta"}';
  }
}
