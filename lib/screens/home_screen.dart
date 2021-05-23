import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  static const String id = '/';
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: 16),
            ),
            Image.asset(       
              'assets/images/coffee_drinkers_3.jpeg',
              // alignment: Alignment.bottomCenter,
              // height: 200,
              // width: 500,
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(
                2, 5, 2, 5),
              child: Text(
                'Get your favourite beverage on the move.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 30,
                  fontFamily: 'Cabin',
                  fontStyle: FontStyle.normal,
                ),
              ),
            ),
            
            Text(  
              "Coffee makes you happy, we know that. And that's why we curate the best coffee shop experience for you. Get in!",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'Cabin',
                fontWeight: FontWeight.w100,
              ),
            ),
            SizedBox(height: 5),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  child: Text(
                    'Register',
                    style: TextStyle(
                      fontFamily: 'Cabin'
                    )
                  ),
                  onPressed: () => Navigator.pushNamed(context, '/sign-up'),
                  style: ButtonStyle(
                    // alignment: ,
                    backgroundColor: MaterialStateProperty.all(Colors.green),
                    shape: MaterialStateProperty.resolveWith<OutlinedBorder>((_) => (
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)
                      )
                    )),
                  ),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(22),
                    bottomRight: Radius.circular(22),
                    topLeft: Radius.elliptical(10, 10),
                    bottomLeft: Radius.elliptical(10, 10)
                  ),
                  child: ElevatedButton(
                    child: Text(
                      'Sign In',
                      style: TextStyle(
                        fontFamily: 'Cabin'
                      ),
                    ),
                    onPressed: () => Navigator.pushNamed(context, '/sign-in'),
                    style: ButtonStyle(
                      // alignment: ,
                      backgroundColor: MaterialStateProperty.all(Colors.black54),
                      overlayColor: MaterialStateProperty.all(Colors.grey),
                      /*shape: MaterialStateProperty.resolveWith<OutlinedBorder>((_) => (
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(50),
                            bottomRight: Radius.circular(50),
                            bottomLeft: Radius.elliptical(50, 2),
                            topLeft: Radius.lerp(
                              Radius.elliptical(-2, 23),
                              Radius.elliptical(3, 3), 
                              100
                            ),
                          ) 
                        )
                      )),
                      */
                    ),
                  ),
                )
                
              ],
            )
            
          ]
        ) 
        
      ),
    );
  }
}
