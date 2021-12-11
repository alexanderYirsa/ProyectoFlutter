import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'VecindApp',
        theme: ThemeData(
          primarySwatch: Colors.yellow,
        ),
        routes: <String, WidgetBuilder>{
          "/inicio": (BuildContext context) => const Inicio(),
          "/productos": (BuildContext context) => const AlertPage(),
          "/empresa": (BuildContext context) => const AvatarPage(),
          "/clientes": (BuildContext context) => const Clientes(),
          "/pedidos": (BuildContext context) => const Pedidos(),
          "/notificaciones": (BuildContext context) => const Notificaciones(),
          "/localizacion": (BuildContext context) => const Localizacion(),
          "/contacto": (BuildContext context) => const Contacto(),
        },
        home: const Inicio());
  }
}

class AvatarPage extends StatefulWidget {
  const AvatarPage({Key? key}) : super(key: key);
  @override
  _AvatarPageState createState() => _AvatarPageState();
}

class _AvatarPageState extends State<AvatarPage> {
  String _nombre = '';
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tiendas'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
        children: <Widget>[
          _crearInput(),
          const Divider(),
          _cardTipo1(),
          const SizedBox(height: 30.0),
          _cardTipo2(),
          _cardTipo3(),
          const SizedBox(height: 30.0),
          _cardTipo4(),
        ],
      ),
    );
  }

  Widget _crearInput() {
    return TextField(
      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
          counter: Text('Letras ${_nombre.length}'),
          hintText: 'Buscar Tienda',
          labelText: 'Buscar Tienda',
          helperText: 'Nombre de tienda',
          suffixIcon: const Icon(Icons.accessibility),
          icon: const Icon(Icons.store_mall_directory)),
      onChanged: (valor) {
        setState(() {
          _nombre = valor;
        });
      },
    );
  }

  Widget _cardTipo1() {
    return Card(
      elevation: 10.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      child: Column(
        children: <Widget>[
          const ListTile(
            leading: Icon(Icons.shopping_cart, color: Colors.blue),
            title: Text('Agregar'),
            subtitle:
                Text('Desea agregar los productos de la tienda al carrito'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              TextButton(
                onPressed: () {},
                child: const Text('Aceptar'),
              ),
              TextButton(
                onPressed: () {},
                child: const Text('Cancelar'),
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget _cardTipo2() {
    final card = Container(
      child: Column(
        children: <Widget>[
          const FadeInImage(
            image: NetworkImage(
                'https://www.filiadei.com/wp-content/uploads/2020/11/exito_grupo_exito_colombia.jpg'),
            placeholder: AssetImage('assets/jar-loading.gif'),
            fadeInDuration: Duration(milliseconds: 200),
            height: 400.0,
            fit: BoxFit.cover,
          ),

          //Image(
          //image: NetworkImage(
          //'http://www.ossom.cl/wp-content/uploads/2014/05/El-chavo-animado.jpg'),
          //),
          Container(
            padding: const EdgeInsets.all(10.0),
            child: const Text('Exito'),
          )
        ],
      ),
    );

    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30.0),
          color: Colors.white,
          boxShadow: const <BoxShadow>[
            BoxShadow(
                color: Colors.black26,
                blurRadius: 10.0,
                spreadRadius: 2.0,
                offset: Offset(2.0, 10.0))
          ]),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30.0),
        child: card,
      ),
    );
  }

  Widget _cardTipo3() {
    final card = Container(
      child: Column(
        children: <Widget>[
          const FadeInImage(
            image: NetworkImage(
                'https://ccplazacentral.com/wp-content/uploads/2021/07/LOGO-JUMBO-01.jpg'),
            placeholder: AssetImage('assets/jar-loading.gif'),
            fadeInDuration: Duration(milliseconds: 200),
            height: 400.0,
            fit: BoxFit.cover,
          ),

          //Image(
          //image: NetworkImage(
          //'http://www.ossom.cl/wp-content/uploads/2014/05/El-chavo-animado.jpg'),
          //),
          Container(
            padding: const EdgeInsets.all(10.0),
            child: const Text('Jumbo'),
          )
        ],
      ),
    );

    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30.0),
          color: Colors.white,
          boxShadow: const <BoxShadow>[
            BoxShadow(
                color: Colors.black26,
                blurRadius: 10.0,
                spreadRadius: 2.0,
                offset: Offset(2.0, 10.0))
          ]),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30.0),
        child: card,
      ),
    );
  }

  Widget _cardTipo4() {
    final card = Container(
      child: Column(
        children: <Widget>[
          const FadeInImage(
            image: NetworkImage(
                'https://static.ofertia.com.co/comercios/surtimax/profile-157163312.v5.png'),
            placeholder: AssetImage('assets/jar-loading.gif'),
            fadeInDuration: Duration(milliseconds: 200),
            height: 400.0,
            fit: BoxFit.cover,
          ),
          Container(
            padding: const EdgeInsets.all(10.0),
            child: const Text('SurtiMax'),
          )
        ],
      ),
    );

    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30.0),
          color: Colors.white,
          boxShadow: const <BoxShadow>[
            BoxShadow(
                color: Colors.black26,
                blurRadius: 10.0,
                spreadRadius: 2.0,
                offset: Offset(2.0, 10.0))
          ]),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30.0),
        child: card,
      ),
    );
  }
}

class AlertPage extends StatefulWidget {
  const AlertPage({Key? key}) : super(key: key);

  @override
  _AlertPageState createState() => _AlertPageState();
}

class _AlertPageState extends State<AlertPage> {
  String _nombre = '';
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Productos'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(10.0),
        children: <Widget>[
          _crearInput(),
          const Divider(),
          _cardTipo1(),
          const SizedBox(height: 30.0),
          _cardTipo2(),
          _cardTipo3(),
          const SizedBox(height: 30.0),
          _cardTipo4(),
        ],
      ),
    );
  }

  Widget _crearInput() {
    return TextField(
      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
          counter: Text('Letras ${_nombre.length}'),
          hintText: 'Buscar Producto',
          labelText: 'Buscar Producto',
          helperText: 'Nombre del producto',
          suffixIcon: const Icon(Icons.accessibility),
          icon: const Icon(Icons.store_mall_directory)),
      onChanged: (valor) {
        setState(() {
          _nombre = valor;
        });
      },
    );
  }

  Widget _cardTipo1() {
    return Card(
      elevation: 10.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      child: Column(
        children: <Widget>[
          const ListTile(
            leading: Icon(Icons.shopping_cart, color: Colors.blue),
            title: Text('Agregar al carrito'),
            subtitle: Text('Desea agregar los productos al carrito'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              TextButton(
                onPressed: () {},
                child: const Text('Aceptar'),
              ),
              TextButton(
                onPressed: () {},
                child: const Text('Cancelar'),
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget _cardTipo2() {
    final card = Container(
      child: Column(
        children: <Widget>[
          const FadeInImage(
            image: NetworkImage(
                'https://dam.cocinafacil.com.mx/wp-content/uploads/2021/08/que-provoca-el-consumo-excesivo-de-azucar.jpg'),
            placeholder: AssetImage('assets/jar-loading.gif'),
            fadeInDuration: Duration(milliseconds: 200),
            height: 400.0,
            fit: BoxFit.cover,
          ),
          Container(
            padding: EdgeInsets.all(10.0),
            child: Text('Azucar'),
          )
        ],
      ),
    );

    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30.0),
          color: Colors.white,
          boxShadow: const <BoxShadow>[
            BoxShadow(
                color: Colors.black26,
                blurRadius: 10.0,
                spreadRadius: 2.0,
                offset: Offset(2.0, 10.0))
          ]),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30.0),
        child: card,
      ),
    );
  }

  Widget _cardTipo3() {
    final card = Container(
      child: Column(
        children: <Widget>[
          const FadeInImage(
            image: NetworkImage(
                'https://www.clikisalud.net/wp-content/uploads/2021/01/vida-util-arroz-seco-crudo.jpg'),
            placeholder: AssetImage('assets/jar-loading.gif'),
            fadeInDuration: Duration(milliseconds: 200),
            height: 400.0,
            fit: BoxFit.cover,
          ),
          Container(
            padding: const EdgeInsets.all(10.0),
            child: const Text('Arroz'),
          )
        ],
      ),
    );

    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30.0),
          color: Colors.white,
          boxShadow: const <BoxShadow>[
            BoxShadow(
                color: Colors.black26,
                blurRadius: 10.0,
                spreadRadius: 2.0,
                offset: Offset(2.0, 10.0))
          ]),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30.0),
        child: card,
      ),
    );
  }

  Widget _cardTipo4() {
    final card = Container(
      child: Column(
        children: <Widget>[
          const FadeInImage(
            image: NetworkImage(
                'https://s3.amazonaws.com/static.om.anigamy.net/static.selecciones.com.ar/App/Article/8-beneficios-de-las-lentejas-5295-mainImage-0.jpg'),
            placeholder: AssetImage('assets/jar-loading.gif'),
            fadeInDuration: Duration(milliseconds: 200),
            height: 400.0,
            fit: BoxFit.cover,
          ),
          Container(
            padding: EdgeInsets.all(10.0),
            child: Text('Lenteja'),
          )
        ],
      ),
    );

    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30.0),
          color: Colors.white,
          boxShadow: const <BoxShadow>[
            BoxShadow(
                color: Colors.black26,
                blurRadius: 10.0,
                spreadRadius: 2.0,
                offset: Offset(2.0, 10.0))
          ]),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30.0),
        child: card,
      ),
    );
  }
}

class Clientes extends StatelessWidget {
  const Clientes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Clientes"),
      ),
      body: const Center(
        child: Text("SECCIÓN CLIENTES"),
      ),
    );
  }
}

class Pedidos extends StatelessWidget {
  const Pedidos({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Pedidos"),
      ),
      body: const Center(
        child: Text("SECCIÓN PEDIDOS"),
      ),
    );
  }
}

class Notificaciones extends StatelessWidget {
  const Notificaciones({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Notificaciones"),
      ),
      body: const Center(
        child: Text("SECCIÓN NOTIFICACIONES"),
      ),
    );
  }
}

class Localizacion extends StatelessWidget {
  const Localizacion({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Localizacion"),
      ),
      body: const Center(
        child: Text("SECCIÓN LOCALIZACION"),
      ),
    );
  }
}

class Contacto extends StatelessWidget {
  const Contacto({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Contacto"),
      ),
      body: const Center(
        child: Text("SECCIÓN CONTACTO"),
      ),
    );
  }
}

class Inicio extends StatelessWidget {
  const Inicio({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding:
            const EdgeInsets.only(top: 130, bottom: 10, right: 10, left: 10),
        decoration: const BoxDecoration(
            color: Colors.cyan,
            image: DecorationImage(
                image: NetworkImage(
                    "https://blog.chespirito.com/wp-content/uploads/2020/03/Creacio%CC%81n-serie-animada.jpg"),
                alignment: Alignment.topCenter)),
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Padding(
                        padding: const EdgeInsets.all(10),
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.pushNamed(context, "/inicio");
                          },
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all<Color>(Colors.amber),
                            shadowColor:
                                MaterialStateProperty.all<Color>(Colors.green),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(32.0),
                                side: const BorderSide(
                                  color: Colors.black26,
                                  width: 2.0,
                                  style: BorderStyle.solid,
                                ),
                              ),
                            ),
                            elevation: MaterialStateProperty.all(
                                40), //Defines Elevation
                          ),
                          child: const SizedBox(
                            width: 115,
                            height: 115,
                            child: Center(
                              child: Text(
                                "INICIO",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Colors.indigo,
                                    fontWeight: FontWeight.w900),
                              ),
                            ),
                          ),
                        ))
                  ],
                ),
                Column(
                  children: <Widget>[
                    Padding(
                        padding: const EdgeInsets.all(10),
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.pushNamed(context, "/productos");
                          },
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all<Color>(Colors.amber),
                            shadowColor:
                                MaterialStateProperty.all<Color>(Colors.green),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(32.0),
                                side: const BorderSide(
                                  color: Colors.black26,
                                  width: 2.0,
                                  style: BorderStyle.solid,
                                ),
                              ),
                            ),
                            elevation: MaterialStateProperty.all(
                                40), //Defines Elevation
                          ),
                          child: const SizedBox(
                            width: 115,
                            height: 115,
                            child: Center(
                              child: Text(
                                "PRODUCTOS",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Colors.indigo,
                                    fontWeight: FontWeight.w900),
                              ),
                            ),
                          ),
                        ))
                  ],
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Padding(
                        padding: const EdgeInsets.all(10),
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.pushNamed(context, "/empresa");
                          },
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all<Color>(Colors.amber),
                            shadowColor:
                                MaterialStateProperty.all<Color>(Colors.green),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(32.0),
                                side: const BorderSide(
                                  color: Colors.black26,
                                  width: 2.0,
                                  style: BorderStyle.solid,
                                ),
                              ),
                            ),
                            elevation: MaterialStateProperty.all(
                                40), //Defines Elevation
                          ),
                          child: const SizedBox(
                            width: 115,
                            height: 115,
                            child: Center(
                              child: Text(
                                "TIENDAS",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Colors.indigo,
                                    fontWeight: FontWeight.w900),
                              ),
                            ),
                          ),
                        ))
                  ],
                ),
                Column(
                  children: <Widget>[
                    Padding(
                        padding: const EdgeInsets.all(10),
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.pushNamed(context, "/clientes");
                          },
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all<Color>(Colors.amber),
                            shadowColor:
                                MaterialStateProperty.all<Color>(Colors.green),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(32.0),
                                side: const BorderSide(
                                  color: Colors.black26,
                                  width: 2.0,
                                  style: BorderStyle.solid,
                                ),
                              ),
                            ),
                            elevation: MaterialStateProperty.all(
                                40), //Defines Elevation
                          ),
                          child: const SizedBox(
                            width: 115,
                            height: 115,
                            child: Center(
                              child: Text(
                                "CLIENTES",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Colors.indigo,
                                    fontWeight: FontWeight.w900),
                              ),
                            ),
                          ),
                        ))
                  ],
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Padding(
                        padding: const EdgeInsets.all(10),
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.pushNamed(context, "/pedidos");
                          },
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all<Color>(Colors.amber),
                            shadowColor:
                                MaterialStateProperty.all<Color>(Colors.green),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(32.0),
                                side: const BorderSide(
                                  color: Colors.black26,
                                  width: 2.0,
                                  style: BorderStyle.solid,
                                ),
                              ),
                            ),
                            elevation: MaterialStateProperty.all(
                                40), //Defines Elevation
                          ),
                          child: const SizedBox(
                            width: 115,
                            height: 115,
                            child: Center(
                              child: Text(
                                "PEDIDOS",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Colors.indigo,
                                    fontWeight: FontWeight.w900),
                              ),
                            ),
                          ),
                        ))
                  ],
                ),
                Column(
                  children: <Widget>[
                    Padding(
                        padding: const EdgeInsets.all(10),
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.pushNamed(context, "/notificaciones");
                          },
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all<Color>(Colors.amber),
                            shadowColor:
                                MaterialStateProperty.all<Color>(Colors.green),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(32.0),
                                side: const BorderSide(
                                  color: Colors.black26,
                                  width: 2.0,
                                  style: BorderStyle.solid,
                                ),
                              ),
                            ),
                            elevation: MaterialStateProperty.all(
                                40), //Defines Elevation
                          ),
                          child: const SizedBox(
                            width: 115,
                            height: 115,
                            child: Center(
                              child: Text(
                                "NOTIFICACIONES",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Colors.indigo,
                                    fontWeight: FontWeight.w900),
                              ),
                            ),
                          ),
                        ))
                  ],
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Padding(
                        padding: const EdgeInsets.all(10),
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.pushNamed(context, "/localizacion");
                          },
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all<Color>(Colors.amber),
                            shadowColor:
                                MaterialStateProperty.all<Color>(Colors.green),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(32.0),
                                side: const BorderSide(
                                  color: Colors.black26,
                                  width: 2.0,
                                  style: BorderStyle.solid,
                                ),
                              ),
                            ),
                            elevation: MaterialStateProperty.all(
                                40), //Defines Elevation
                          ),
                          child: const SizedBox(
                            width: 115,
                            height: 115,
                            child: Center(
                              child: Text(
                                "LOCALIZACION",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Colors.indigo,
                                    fontWeight: FontWeight.w900),
                              ),
                            ),
                          ),
                        ))
                  ],
                ),
                Column(
                  children: <Widget>[
                    Padding(
                        padding: const EdgeInsets.all(10),
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.pushNamed(context, "/contacto");
                          },
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all<Color>(Colors.amber),
                            shadowColor:
                                MaterialStateProperty.all<Color>(Colors.green),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(32.0),
                                side: const BorderSide(
                                  color: Colors.black26,
                                  width: 2.0,
                                  style: BorderStyle.solid,
                                ),
                              ),
                            ),
                            elevation: MaterialStateProperty.all(
                                40), //Defines Elevation
                          ),
                          child: const SizedBox(
                            width: 115,
                            height: 115,
                            child: Center(
                              child: Text(
                                "CONTACTO",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Colors.indigo,
                                    fontWeight: FontWeight.w900),
                              ),
                            ),
                          ),
                        ))
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
