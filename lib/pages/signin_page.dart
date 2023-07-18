import 'package:flutter/material.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 250,
          height: 500,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                "Sign In",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
              ),
              Container(
                padding: EdgeInsets.all(8),
                width: 250,
                height: 40,
                color: Colors.grey,
                child: Center(
                  child: TextField(
                    decoration: InputDecoration.collapsed(
                      hintText: "Username",
                    ),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(8),
                width: 250,
                height: 40,
                color: Colors.grey,
                child: Center(
                  child: TextField(
                    decoration: InputDecoration.collapsed(
                      hintText: "Password",
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Checkbox(
                    value: false,
                    onChanged: (value) {},
                  ),
                  Text("Remember"),
                  Text("Forgot Password?"),
                ],
              ),
              ElevatedButton(onPressed: () {}, child: Text("SIGN IN")),
              Text("Or"),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  OutlinedButton(
                    onPressed: () {},
                    child: Text("Lorem"),
                  ),
                  OutlinedButton(
                    onPressed: () {},
                    child: Text("Lorem"),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text("Don't have Account?"),
                  Text(
                    "Create Account",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
