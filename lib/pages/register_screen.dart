import 'package:flutter/material.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: const RegisterScreenPage(title: 'Registro'),
    );
  }
}

class RegisterScreenPage extends StatefulWidget {
  const RegisterScreenPage({super.key, required this.title});
  final String title;
  @override
  State<RegisterScreenPage> createState() => _RegisterScreenPageState();
}

class _RegisterScreenPageState extends State<RegisterScreenPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text(
            widget.title,
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: Center(
            child: ListView(
          //shrinkWrap: true,

          padding: EdgeInsets.symmetric(vertical: 100),
          children: [
            Column(
              children: [
                Image.asset(
                  "assets/images/user.png",
                  color: Colors.purple.shade100,
                  height: 100,
                ),
                Title(
                  color: Colors.green,
                  child: Text("Bienvenido",
                      style: TextStyle(color: Colors.black54, fontSize: 50)),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 40),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      border: UnderlineInputBorder(),
                      labelText: 'Email',
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 40),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      border: UnderlineInputBorder(),
                      labelText: 'Password',
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(50.0),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      foregroundColor: Colors.white,
                      shape: LinearBorder(),
                    ),
                    onPressed: () {},
                    child: const Text('Registro'),
                  ),
                ),
              ],
            ),
          ],
        )));
  }
}