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
      home: Scaffold(
        appBar: AppBar(
          title: const Text('LOGIN PAGE'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              'login',
              style: TextStyle(
                fontSize: 36,
                color: Colors.blue,
                fontWeight: FontWeight.bold,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 30),
              child: Form(
                child: Column(
                  children: [
                    TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        labelText: 'email',
                        prefixIcon: Icon(Icons.email),
                        border: OutlineInputBorder(),
                      ),
                      onChanged: (String value) {},
                      validator: (value) {
                        return value!.isEmpty ? 'please enter email' : null;
                      },
                    ),

                    SizedBox(height: 20), //
                    TextFormField(
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        labelText: 'password',
                        prefixIcon: Icon(Icons.lock),
                        border: OutlineInputBorder(),
                      ),
                      onChanged: (String value) {},
                      validator: (value) {
                        return value!.isEmpty ? 'please enter password' : null;
                      },
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: MaterialButton(
                        onPressed: () {},
                        child: Text(
                          'Login',
                          style: TextStyle(color: Colors.white),
                        ),
                        color: Colors.cyan,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
