import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

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
}

class _MyHomePageState extends State<MyHomePage> {
  double red_1 = 0.0;
  double green_1 = 0.0;
  double blue_1 = 0.0;
  double red_2 = 0.0;
  double green_2 = 0.0;
  double blue_2 = 0.0;

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title)
      ),
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [
                  Color.fromARGB(255, red_1.round(), green_1.round(), blue_1.round()),
                  Color.fromARGB(255, red_2.round(), green_2.round(), blue_2.round())
                ])
          ),
          child: Column(
          children: [
          Text("Red_first"),
            Slider(value: red_1, max: 255.0, divisions: 100, label: red_1.round().toString(),
              onChanged: (double value) {setState(() {
                red_1 = value;
              });},),
            Text("Green_first"),
            Slider(value: green_1, max: 255.0, divisions: 100, label: green_1.round().toString(),
              onChanged: (double value) {setState(() {
                green_1 = value;
              });},),
            Text("Blue_first"),
            Slider(value: blue_1, max: 255.0, divisions: 100, label: blue_1.round().toString(),
              onChanged: (double value) {setState(() {
                blue_1 = value;
              });},),
            Text("Red_second"),
            Slider(value: red_2, max: 255.0, divisions: 100, label: red_2.round().toString(),
              onChanged: (double value) {setState(() {
                red_2 = value;
              });},),
            Text("Green_second"),
            Slider(value: green_2, max: 255.0, divisions: 100, label: green_2.round().toString(),
              onChanged: (double value) {setState(() {
                green_2 = value;
              });},),
            Text("Blue_second"),
            Slider(value: blue_2, max: 255.0, divisions: 100, label: blue_2.round().toString(),
              onChanged: (double value) {setState(() {
                blue_2 = value;
              });},),
          ],
          ),
        )
      )
    );
  }
}
