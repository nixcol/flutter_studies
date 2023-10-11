import 'package:flutter/material.dart';

void main() { //o primeiro método a ser executado
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) { //o método build é o que constrói a interface, o que vai ser exibido na tela
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a blue toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.pink),
        // fromSeed is a static method on ColorScheme that creates a color scheme based on a seed color. for more info, see https://api.flutter.dev/flutter/material/ColorScheme/fromSeed.html
        //ColorScheme.fromSeed é um construtor de fábrica do Flutter que gera um esquema de cores derivado de uma única "cor semente", criando uma variedade de cores que são geradas a partir da cor semente fornecida, garantindo que elas combinem bem juntas e ofereçam contraste suficiente entre elas
        useMaterial3: true, 
        //useMaterial3 é uma flag que habilita o novo design do Material 3, que é a nova versão do Material Design do Google https://api.flutter.dev/flutter/material/MaterialApp/useMaterial3.html
      ),
      home: const MyHomePage(title: 'My App'), 
      //home é o widget que será exibido na tela, no caso, a classe MyHomePage que é a classe que constrói a tela inicial do app
    );
  }
}

class MyHomePage extends StatefulWidget { //a classe MyHomePage é um StatefulWidget, ou seja, é um widget que pode ter seu estado alterado
  const MyHomePage({super.key, required this.title}); //o construtor da classe MyHomePage recebe um parâmetro obrigatório chamado title e um parâmetro opcional chamado key

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState(); 
  //o método createState retorna uma instância da classe _MyHomePageState, que é a classe que constrói a interface da tela inicial do app
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      //Scaffold is a layout for the major Material Components. It provides a default visual structure upon which you can build your app. https://api.flutter.dev/flutter/material/Scaffold-class.html
      appBar: AppBar(
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        // inversePrimary is a color from the colorScheme that is the inverse of the primary color. https://api.flutter.dev/flutter/material/ColorScheme/inversePrimary.html
        // Theme.of(context) is a static method that returns the nearest Theme ancestor. https://api.flutter.dev/flutter/material/Theme/of.html
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //(horizontalmente, a Column tentará se ajustar para acomodar a largura do filho mais largo que possui)
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          //
          // TRY THIS: Invoke "debug painting" (choose the "Toggle Debug Paint"
          // action in the IDE, or press "p" in the console), to see the
          // wireframe for each widget.
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
