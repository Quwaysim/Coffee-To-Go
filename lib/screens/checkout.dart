import 'package:coffee_to_go/widgets/bottomSheet.dart';
import 'package:coffee_to_go/widgets/customButton.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';


class Checkout extends StatefulWidget {
  @override 
  _CheckoutState createState() => _CheckoutState();
}

class _CheckoutState extends State<Checkout> {
  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      showModalBottomSheet<void>(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(40),
        ),
        clipBehavior: Clip.antiAlias,
        elevation: 2,
        isScrollControlled: true,
        isDismissible: false,
        backgroundColor: Colors.white,
        enableDrag: true,
        context: context,
        builder: (context) {
          return StatefulBuilder(
            builder: (context, StateSetter setModalState) {
              return CustomBottomSheet();
            }
          );
        }
      );
    });
    return Scaffold(
      backgroundColor: Colors.red[200],
      body: Container(
        child: SingleChildScrollView(
         physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              Ink(
                height: MediaQuery.of(context).size.height,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(12),
                    topRight: Radius.circular(12)
                  ),
                  color: Colors.red[200],
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                              top: 40,
                              bottom: 25,
                              left: 10,
                            ),
                            child: Text(
                              'Caramel \nMacchiato',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                color: Colors.white70,
                                fontFamily: 'Cabin',
                                fontSize: 24,
                                fontWeight: FontWeight.w500
                            )
                          )
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            top: 30, 
                            right: 50,
                          ),
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              shape: CircleBorder(),
                              primary: Colors.white70,
                              fixedSize: Size.fromRadius(7)
                            ),
                              child: Icon(
                                Icons.favorite,
                                color: Colors.pink[700],
                                size: 15.0,
                              ),
                            ),
                          ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                            left: 10,
                          ),    
                          child: Text(
                            'Freshly steamed milk with\nvanilla-flavored syrup is\nmarked with espresso and\ntopped with caramel drizzle',
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                              fontFamily: 'Cabin',
                              fontWeight: FontWeight.w100,
                              fontSize: 13,
                              color: Colors.white70,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: 50,
                        horizontal: 20
                      ),
                      child: Row(
                        children: [
                          Expanded(
                            child: ElevatedButton(
                            child: Text(
                              'Checkout',
                              style: TextStyle(
                                fontFamily: 'Cabin',
                              ),
                            ),
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                                Colors.brown[900],
                              ),
                              shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                )
                                
                              )
                            ),
                            onPressed: () {
                              showModalBottomSheet<void>(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(40),
                                ),
                                clipBehavior: Clip.antiAlias,
                                elevation: 2,
                                isScrollControlled: true,
                                isDismissible: false,
                                backgroundColor: Colors.white,
                                enableDrag: true,
                                context: context,
                                builder: (context) {
                                  return StatefulBuilder(
                                    builder: (context, StateSetter setModalState) {
                                      return CustomBottomSheet();
                                      }
                                    );
                                  }
                                );
                              },
                           )
                         ),
                       ],
                     )
                        
                      
                    )
                    
                  ]
                ),
              ),
              
            ],
          ),
        )
      )
    );
  }
}