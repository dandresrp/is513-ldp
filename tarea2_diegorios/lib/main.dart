import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Cuenta de Google'),
        ),
        body: ListView(
          padding: EdgeInsets.all(10.0),
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(color: Colors.grey.shade300),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Tu cuenta está protegida',
                            style: TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(height: 8.0),
                          Text(
                            'La Verificación de seguridad revisó\ntu cuenta y no encontró acciones\nrecomendadas.',
                            style: TextStyle(fontSize: 14.0),
                          ),
                          SizedBox(height: 30.0),
                          Text(
                            'Ver detalles',
                            style: TextStyle(
                              fontSize: 14.0,
                              color: Colors.blue.shade500,
                              fontWeight: FontWeight.w600
                            ),
                          ),
                          SizedBox(height: 15.0),
                        ],
                      ),
                    ),
                    FlutterLogo(size: 80.0),
                  ],
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(color: Colors.grey.shade300),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Verificación de privacidad',
                            style: TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(height: 8.0),
                          Text(
                            'Elige la configuración de privacidad\nindicada para ti con esta guía paso a paso.',
                            style: TextStyle(fontSize: 14.0),
                          ),
                          SizedBox(height: 50.0),
                          Text(
                            'Realizar la Verificación de privacidad',
                            style: TextStyle(
                              fontSize: 14.0,
                              color: Colors.blue.shade500,
                              fontWeight: FontWeight.w600
                            ),
                          ),
                          SizedBox(height: 15.0),
                        ],
                      ),
                    ),
                    FlutterLogo(size: 80.0),
                  ],
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(color: Colors.grey.shade100),
                ),
              ),
              child: Column(
                children: [
                  ListTile(
                    title: Text(
                      '¿Buscas otra información?',
                      style: TextStyle(
                        fontWeight: FontWeight.w500
                      ),
                    ),
                  ),
                  ListTile(
                    leading: Icon(Icons.search, size: 30.0, color: Colors.grey.shade600,),
                    title: Text('Buscar en la Cuenta de Google'),
                    trailing: Icon(Icons.chevron_right, color: Colors.grey.shade600,),
                  ),
                  ListTile(
                    leading: Icon(Icons.help_outline, size: 30.0, color: Colors.grey.shade600,),
                    title: Text('Ver las opciones de ayuda'),
                    trailing: Icon(Icons.chevron_right, color: Colors.grey.shade600,),
                  ),
                  ListTile(
                    leading: Icon(Icons.feedback_outlined, size: 30.0, color: Colors.grey.shade600,),
                    title: Text('Enviar comentarios'),
                    trailing: Icon(Icons.chevron_right, color: Colors.grey.shade600,),
                  ),
                  SizedBox(height: 15.0),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(color: Colors.grey.shade300)
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 15.0),
                          RichText(
                            text: TextSpan(
                              text: 'Solo tú puedes ver la configuración. También\npuedes revisar la configuración de Maps, la\nBúsqueda o cualquier servicio de Google que uses\ncon frecuencia. Google protege la privacidad y la\nseguridad de tus datos. ',
                              style: TextStyle(
                                fontSize: 14.0,
                                color: Colors.grey.shade600
                               ),
                              children:  [
                                TextSpan(
                                  text: 'Más información ',
                                  style: TextStyle(
                                    color: Colors.blue.shade500
                                  )
                                ),
                                WidgetSpan(
                                  alignment: PlaceholderAlignment.middle,
                                  child: Icon(
                                    Icons.help_outline,
                                    color: Colors.blue.shade500,
                                    size: 13,
                                  ),
                                )
                              ]
                            ),
                          ),
                        ],
                      ),
                    ),
                    FlutterLogo(size: 40.0),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
