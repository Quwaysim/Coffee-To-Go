import 'package:flutter/material.dart';

import 'customButton.dart';

class CustomBottomSheet extends StatefulWidget {
  @override
  _CustomBottomSheetState createState() => _CustomBottomSheetState();
}

class _CustomBottomSheetState extends State<CustomBottomSheet> {
  List<DropdownMenuItem> _numOfCups = List<DropdownMenuItem<String>>.generate(
      10,
      (int i) => (DropdownMenuItem(
          value: '${i + 1}',
          child: Text(
            '${i + 1}',
            style: TextStyle(
              fontWeight: FontWeight.w600,
              color: Colors.black,
            ),
          )))).toList();

  List _sizeCups = ['S', 'M', 'L'];
  int _quantity = 1;

  bool isEnabled = true;
  ValueChanged onChanged;
  var _selectedValue;
  var _selectedSize;

  @override
  void initState() {
    super.initState();
    _selectedValue = _numOfCups[0].value;
    _selectedSize = _sizeCups[0];
  }

  @override
  Widget build(BuildContext context) {
    return Ink(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.vertical(
              top: Radius.elliptical(40, 40),
              bottom: Radius.elliptical(40, 40))),
      child: Padding(
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          child: SingleChildScrollView(
            child: Column(children: [
              Container(
                alignment: Alignment.topRight,
                child: IconButton(
                    onPressed: () => Navigator.pop(context),
                    icon: Icon(Icons.close, color: Colors.black26)),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Temperature',
                      style: TextStyle(
                          letterSpacing: 0.5,
                          fontFamily: 'Cabin',
                          fontWeight: FontWeight.w600,
                          fontSize: 13)),
                  Text('Quantity',
                      style: TextStyle(
                          letterSpacing: 0.5,
                          fontFamily: 'Cabin',
                          fontWeight: FontWeight.w600,
                          fontSize: 13)),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'Hot',
                      style: TextStyle(
                          color: Colors.red[200],
                          fontFamily: 'Cabin',
                          fontSize: 11,
                          fontWeight: FontWeight.w400),
                    ),
                    style: ButtonStyle(
                        padding: MaterialStateProperty.all(EdgeInsets.all(2)),
                        backgroundColor:
                            MaterialStateProperty.all(Colors.teal[50]),
                        overlayColor:
                            MaterialStateProperty.all(Colors.red[200]),
                        visualDensity: VisualDensity.adaptivePlatformDensity,
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(30),
                                bottomLeft: Radius.circular(30),
                                topRight: Radius.elliptical(10, 10)))),
                        shadowColor:
                            MaterialStateProperty.all(Colors.pinkAccent),
                        minimumSize: MaterialStateProperty.resolveWith(
                            (_) => (Size(50, 25)))),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'Cold',
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Cabin',
                        fontSize: 11,
                      ),
                    ),
                    style: ButtonStyle(
                        padding: MaterialStateProperty.all(EdgeInsets.all(2)),
                        visualDensity: VisualDensity.adaptivePlatformDensity,
                        overlayColor: MaterialStateProperty.all(Colors.white54),
                        backgroundColor:
                            MaterialStateProperty.all(Colors.brown[900]),
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30))),
                        minimumSize: MaterialStateProperty.resolveWith(
                            (_) => (Size(50, 25)))),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(71, 0, 0, 0),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      TextButton(
                        onPressed: () {   
                          if (_quantity > 1) setState(() {_quantity--;});
                        },
                        style: ButtonStyle(
                          padding: MaterialStateProperty.all(
                            EdgeInsets.all(3),
                          ),
                          shape: MaterialStateProperty.all(CircleBorder()),
                          minimumSize: MaterialStateProperty.resolveWith((_) {
                            return Size(10, 10);
                          }),
                          overlayColor: MaterialStateProperty.all(
                            Colors.white54,
                          ),
                          backgroundColor: MaterialStateProperty.all(
                            Colors.green[400],
                          ),
                        ),
                        child:
                            Icon(Icons.remove, size: 15, color: Colors.white70),
                      ),
                      Padding(padding: EdgeInsets.zero),
                      Text(
                        _quantity.toString(),
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      TextButton(
                        onPressed: () { 
                          if (_quantity < 9) setState(() {_quantity++;});
                        },
                        style: ButtonStyle(
                          padding: MaterialStateProperty.all(
                            EdgeInsets.all(3),
                          ),
                          shape: MaterialStateProperty.all(CircleBorder()),
                          minimumSize: MaterialStateProperty.resolveWith((_) {
                            return Size(10, 10);
                          }),
                          overlayColor:
                              MaterialStateProperty.all(Colors.white54),
                          backgroundColor: MaterialStateProperty.all(
                            Colors.green[400],
                          ),
                        ),
                        child: Icon(Icons.add, size: 15, color: Colors.white70),
                      ),
                    ],
                  ),

                  // )
                ],
              ),
              SizedBox(height: 10),
              Container(
                  child: Row(
                children: [
                  Text(
                    'Select Cup',
                    style: TextStyle(
                        letterSpacing: 0.5,
                        color: Colors.black,
                        fontFamily: 'Cabin',
                        fontSize: 13,
                        fontWeight: FontWeight.w500),
                  ),
                  Padding(
                      padding: EdgeInsets.only(left: 10, right: 10),
                      child: Container(
                          padding: EdgeInsets.only(left: 7),
                          height: 30,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: Colors.teal[50]),
                          child: DropdownButtonHideUnderline(
                              child: DropdownButton(
                            dropdownColor: Colors.white,
                            icon: Icon(
                              Icons.keyboard_arrow_down_rounded,
                              size: 20,
                            ),
                            items: _numOfCups,
                            value: _selectedValue,
                            onChanged: (item) =>
                                setState(() => (_selectedValue = item)),
                            style: TextStyle(fontSize: 12),
                          )))),
                  Padding(padding: EdgeInsets.only(left: 15)),
                  Text(
                    'Select Size',
                    style: TextStyle(
                      fontFamily: 'Cabin',
                      fontSize: 13,
                      letterSpacing: 0.5,
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 7),
                    child: Container(
                        padding: EdgeInsets.only(left: 7),
                        height: 30,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.teal[50],
                        ),
                        child: DropdownButtonHideUnderline(
                          child: DropdownButton(
                            dropdownColor: Colors.white,
                            icon: Icon(
                              Icons.keyboard_arrow_down_rounded,
                              size: 20,
                            ),
                            style: TextStyle(
                              fontSize: 12,
                            ),
                            value: _selectedSize,
                            onChanged: (selected) =>
                                setState(() => (_selectedSize = selected)),
                            items: _sizeCups
                                .map((size) => (DropdownMenuItem(
                                      child: Text(size,
                                          style: TextStyle(
                                              fontWeight: FontWeight.w600,
                                              color: Colors.black)),
                                      value: size,
                                    )))
                                .toList(),
                          ),
                        )),
                  ),
                ],
              )),
              SizedBox(height: 20),
              Container(
                padding: EdgeInsets.only(left: 30),
                child: Row(
                  children: [
                    Image.asset('assets/images/cube_icon.jpeg', height: 30),
                    CustomButton(placeholder: 'cube',)
                  ],
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 30),
                  ),
                  Text(
                    'Sugar',
                    style: TextStyle(
                        fontWeight: FontWeight.w900,
                        fontFamily: 'Cabin',
                        color: Colors.black12,
                        letterSpacing: 0.5,
                        fontSize: 13),
                  )
                ],
              ),
              SizedBox(height: 15),
              Container(
                padding: EdgeInsets.only(left: 30),
                child: Row(
                  children: [
                    Image.asset('assets/images/iced_cube-2.png', height: 30),
                    CustomButton(placeholder: 'cube',)
                  ],
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 30),
                  ),
                  Text(
                    'Ice',
                    style: TextStyle(
                        fontWeight: FontWeight.w900,
                        fontFamily: 'Cabin',
                        color: Colors.black12,
                        letterSpacing: 0.5,
                        fontSize: 13),
                  )
                ],
              ),
              SizedBox(height: 15),
              Container(
                padding: EdgeInsets.only(left: 30),
                child: Row(
                  children: [
                    Image.asset('assets/images/cream_2-layer.png', height: 30),
                    CustomButton(placeholder: 'No',),
                  ],
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 25),
                  ),
                  Text(
                    'Cream',
                    style: TextStyle(
                        fontWeight: FontWeight.w900,
                        fontFamily: 'Cabin',
                        color: Colors.black12,
                        letterSpacing: 0.5,
                        fontSize: 13),
                  )
                ],
              ),
              SizedBox(height: 40),
              Row(children: [
                Padding(
                  padding: EdgeInsets.only(left: 20),
                ),
                Text(
                  'Total',
                  style: TextStyle(
                      fontFamily: 'Cabin',
                      fontSize: 18,
                      fontWeight: FontWeight.w500),
                ),
              ]),
              Row(children: [
                Padding(padding: EdgeInsets.only(left: 20, top: 0.5)),
                Text(
                  '\$9,50',
                  style: TextStyle(
                      fontFamily: 'Cabin',
                      fontSize: 25,
                      fontWeight: FontWeight.w700,
                      color: Colors.green[300],
                      letterSpacing: 0.5),
                ),
                Padding(padding: EdgeInsets.fromLTRB(15, 20, 0, 20)),
                Expanded(
                    child: ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                        Colors.brown[900],
                      ),
                      shape: MaterialStateProperty.all<OutlinedBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(31)))),
                  child: Text(
                    'Place Order',
                    style: TextStyle(
                        fontFamily: 'Cabin',
                        fontWeight: FontWeight.w500,
                        fontSize: 15,
                        color: Colors.white,
                        letterSpacing: 0.5),
                  ),
                )),
              ])
            ]),
          )),
    );
  }
}
