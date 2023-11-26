import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: const LoginScreenPage(title: 'Login'),
    );
  }
}

class LoginScreenPage extends StatefulWidget {
  const LoginScreenPage({super.key, required this.title});
  final String title;
  @override
  State<LoginScreenPage> createState() => _LoginScreenPageState();
}

class _LoginScreenPageState extends State<LoginScreenPage> {
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
                    child: const Text('Iniciar Sesión'),
                  ),
                ),
              ],
            ),
          ],
        )));
  }
}
