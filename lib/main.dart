import 'package:flutter/material.dart';

void main() {
  runApp(const ShrineApp());
}

class ShrineApp extends StatelessWidget {
  const ShrineApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shrine',
      home: LoginPage(),
      // Define your theme here if needed
    );
  }
}

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login Page'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          TextField(
            controller: _usernameController,
            decoration: const InputDecoration(
              filled: true,
              labelText: 'Username',
            ),
          ),
          const SizedBox(height: 12.0),
          TextField(
            controller: _passwordController,
            decoration: const InputDecoration(
              filled: true,
              labelText: 'Password',
            ),
            obscureText: true,
          ),
          const SizedBox(height: 12.0),
          ButtonBar(
            alignment: MainAxisAlignment.end,
            children: <Widget>[
              TextButton(
                child: const Text('CANCEL'),
                onPressed: () {
                  _usernameController.clear();
                  _passwordController.clear();
                },
              ),
              ElevatedButton(
                child: const Text('NEXT'),
                onPressed: () {
                  // TODO: Show the next page
                  // You can navigate to the next page here
                  // Example: Navigator.push(context, MaterialPageRoute(builder: (context) => NextPage()));
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomePage()),
                  );
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: Center(
        child: Text('You did it!'),
      ),
      resizeToAvoidBottomInset: false,
    );
  }
}
