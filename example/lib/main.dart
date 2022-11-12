import 'package:flutter/material.dart';
import 'package:flutter_social_login_widget/flutter_social_login_widget.dart';
import 'package:flutter_social_login_widget/models/login_method.model.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Social Login Widget by justecdev'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<LoginMethod> loginMethods = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text('Single Login Method'),
            SocialLogin(
              methods: [
                LoginMethod(
                  image: Image.asset('assets/google.png'),
                  onMethodTap: ((i) {}),
                ),
              ],
            ),
            const Text('Multiple Login Methods'),
            SocialLogin(
              methods: [
                LoginMethod(
                  image: Image.asset('assets/google.png'),
                  onMethodTap: (i) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text("Clicked on ${i + 1}. item"),
                        backgroundColor: Colors.purple,
                      ),
                    );
                  },
                ),
                LoginMethod(
                  image: Image.asset('assets/facebook.png'),
                  onMethodTap: (i) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text("Clicked on ${i + 1}.item"),
                        backgroundColor: Colors.purple,
                      ),
                    );
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
