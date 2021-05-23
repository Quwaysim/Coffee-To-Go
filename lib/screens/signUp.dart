import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}


class _SignUpState extends State<SignUp> with TickerProviderStateMixin {
  bool _isHidden = true;

  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _usernameController = TextEditingController();

  AnimationController _animationController;
  Animation<double> _animation; 

  AnimationController _signUpAnimationController;
  Animation<double> _signUpAnimation;

  AnimationController _signInAnimationController;
  Animation<double> _signInAnimation;
  
  @override
  void initState() {
    super.initState();

    _animationController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 20),
    );

    _signUpAnimationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 250),
    );

    _animation = CurvedAnimation(
      parent: _animationController, 
      curve: Curves.linear
    )..addListener(() {
      setState(() {});
    })
    ..addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        _animationController.reset();
        _animationController.forward();
      }
    });

    Future.delayed(Duration.zero, () {
      _signUpAnimation = 
      Tween(begin: MediaQuery.of(context).size.height, end: 450.0)
        .animate(
          _signUpAnimationController
            .drive(CurveTween(curve: Curves.easeOut))
        )
        ..addListener(() {
          setState(() {});
        });
        /*..addStatusListener((status) {
          if (status == AnimationStatus.completed) {
            _signInAnimationController.forward();
          }
        });*/
    });

    _animationController.forward();
    _signUpAnimationController.forward();
  }
  @override 
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/coffee-mug-0.jpeg'),
          fit: BoxFit.cover
        ),
        // backgroundBlendMode: BlendMode.hardLight
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: Container(
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.transparent
            ),
            child: Padding(
              padding: EdgeInsets.only(
                top: 20, bottom: 20,
                left: 10, right: 20
              ),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        MaterialButton(
                          minWidth: 2,
                          height: 37,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(11),
                            side: BorderSide(color: Colors.black),
                          ),
                          clipBehavior: Clip.antiAlias,
                          visualDensity: VisualDensity.comfortable,
                          onPressed: () => Navigator.pop(context),
                          child: Icon(Icons.arrow_back_ios_new_rounded)
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                        ),
                        Text(
                          'Sign up!',
                          style: TextStyle(
                            fontFamily: 'Cabin',
                            fontSize: 30,
                            fontWeight: FontWeight.w500
                          ),
                        ),
                        // SizedBox(height: 50),
                      ]
                    ),
                    SizedBox(height: 50), 
                    Form(
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.fromLTRB(
                              0, 20, 0, 10
                            ),
                            child: TextFormField(
                              controller: _emailController,
                              decoration: InputDecoration(
                                isDense: true,
                                labelText: 'Email',
                                labelStyle: TextStyle(
                                  fontFamily: 'Cabin',
                                  color: Colors.black
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20),
                                  borderSide: BorderSide(color: Colors.black),
                                )
                              ),
                            ),
                          ),
                          TextFormField(
                            controller: _usernameController,
                            decoration: InputDecoration(
                              isDense: true,
                              labelText: 'Username',
                              labelStyle: TextStyle(
                                fontFamily: 'Cabin',
                                color: Colors.black,
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide: BorderSide(color: Colors.black),
                              )
                            ),
                          ),
                          SizedBox(height: 10),
                          TextFormField(
                            controller: _passwordController,
                            obscureText: _isHidden,
                            validator: (val) {
                              return val.length > 6 ? null :
                                'Enter password of more than 6 characters';
                            },
                            decoration: InputDecoration(
                              isDense: true,
                              labelText: 'Password',
                              labelStyle: TextStyle(
                                fontFamily: 'Cabin',
                                color: Colors.black,
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide: BorderSide(color: Colors.black),
                              ),
                              suffix: InkWell(
                                onTap: () => _toggleShowPassword(),
                                child: Icon(
                                  _isHidden ? Icons.visibility_off
                                  : Icons.visibility
                                ),
                              )
                            ),
                          ),
                          SizedBox(height: 20),
                          ElevatedButton(
                            onPressed: () {}, // TODO
                            style: ButtonStyle(
                              shape: MaterialStateProperty.all<OutlinedBorder>(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(11)
                                )
                              ),
                              backgroundColor: MaterialStateProperty.all(
                                Colors.black54
                              )
                            ),
                            child: Text(
                              'Create your account',
                              style: TextStyle(
                                fontFamily: 'Cabin',
                              ),
                            ),
                          ),
                          SizedBox(height: 10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              RichText(
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text: 'Already have an account? ',
                                      style: TextStyle(
                                        fontFamily: 'Cabin',
                                        color: Colors.black
                                      )
                                    ),
                                    
                                  ]
                                ),
                              ),
                              GestureDetector(
                                onTap: () => Navigator.pushNamed(context, '/sign-in'),
                                child: Text(
                                  'Sign In',
                                  style: TextStyle(
                                    fontFamily: 'Cabin',
                                    color: Colors.black,
                                    decoration: TextDecoration.underline,
                                  )
                                )
                              )
                            ],
                          ),
                          
                        ],
                      ),
                    )
                  ],
                ),
              )
            ),
          ),
        )   
      ),
    );
    
  }

  @override
  void dispose() {
    _animationController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _usernameController.dispose();
    super.dispose();
  }

  void _toggleShowPassword() {
    setState(() => _isHidden = !_isHidden);
  }
}