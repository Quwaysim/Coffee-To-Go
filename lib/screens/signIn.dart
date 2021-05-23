
import 'package:flutter/material.dart';


class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  bool _isHidden = true;

  void _toggleShowPassword() {
    setState(() => _isHidden = !_isHidden);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        maintainBottomViewPadding: true,
        child: Container(
            padding: EdgeInsets.symmetric(horizontal: 24),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 20),
                  ),
                  // Spacer(),
                  Text("Let's sign you in.",
                      style: TextStyle(
                        fontFamily: 'Cabin',
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                      )),
                  SizedBox(height: 10),
                  Text(
                    "Welcome back.\nWe missed you!",
                    style: TextStyle(
                      fontFamily: 'Cabin',
                      fontSize: 24,
                      fontWeight: FontWeight.w200,
                    ),
                  ),
                  SizedBox(height: 30),
                  Form(
                    child: Column(
                      children: [
                        TextFormField(
                          decoration: InputDecoration(
                            isDense: true,
                            labelText: 'Email',
                            labelStyle: TextStyle(
                              fontFamily: 'Cabin',
                            ),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(23),
                                borderSide: BorderSide(color: Colors.black54)),
                          ),
                          controller: emailController,
                        ),
                        SizedBox(height: 10),
                        TextFormField(
                          decoration: InputDecoration(
                              isDense: true,
                              labelText: 'Password',
                              labelStyle: TextStyle(
                                fontFamily: 'Cabin',
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(23),
                                borderSide: BorderSide(color: Colors.black54),
                              ),
                              suffix: InkWell(
                                onTap: () => _toggleShowPassword(),
                                child: _isHidden
                                    ? Icon(Icons.visibility_off)
                                    : Icon(Icons.visibility),
                              )),
                          obscureText: _isHidden,
                          controller: passwordController,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 16, vertical: 5),
                              child: GestureDetector(
                                onTap: () {}, // TODO
                                child: Text('Forgot Password',
                                    style: TextStyle(
                                        color: Colors.redAccent,
                                        fontFamily: 'Cabin')),
                              ),
                            ),
                          ],
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(vertical: 20),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: ElevatedButton(
                            autofocus: true,
                            style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.black54),
                            ),
                            child: Text('Sign In'),
                            onPressed: () {}, // TODO
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Don't have an account? ",
                              style: TextStyle(
                                  color: Colors.black54, fontFamily: 'Cabin'),
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.pushNamed(context, '/sign-up');
                              }, // TODO
                              child: Text('Register here',
                                  style: TextStyle(
                                    fontFamily: 'Cabin',
                                    decoration: TextDecoration.underline,
                                  )),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )),
      ),
    );
  }
  
  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }
}
