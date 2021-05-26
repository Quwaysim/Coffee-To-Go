import 'package:flutter/material.dart';


class CustomButton extends StatefulWidget {
  int quantity;
  String placeholder;
  bool useCream;

  CustomButton({
    this.quantity = 1,
    this.placeholder = '',
    this.useCream = false,
  });

  @override 
  _CustomButtonState createState() => _CustomButtonState();
}


class _CustomButtonState extends State<CustomButton> {

  @override 
  Widget build(BuildContext context) {
    return  Container(
    // Container controls this entire button and its outer functionality
    padding: EdgeInsets.only(left: 30),
    height: 25,
      
    child:
      // The actual button that holds the other button children
      // This is where the pill-shaped styling is done
      TextButton(
        onPressed: () {},
        style: ButtonStyle(
          padding: MaterialStateProperty.all(
            EdgeInsets.all(2)),
          backgroundColor: MaterialStateProperty.all(Colors.teal[50]),
          // overlayColor: MaterialStateProperty.all(Colors.red[100]),
          visualDensity: VisualDensity.adaptivePlatformDensity,
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30)
            )
          ),
          // shadowColor: MaterialStateProperty.all(Colors.pinkAccent),
          minimumSize: MaterialStateProperty.resolveWith((_) => (
            Size(
              50, 25
            )
          ))
        ),
        child: Row(
          // Convenience widget to allow us insert other childre in the parent button. Doesn't do much for styling.
          children: [
            // This widget controls the inner button.
            Container(
              padding: EdgeInsets.zero,
              height: 20,           
              child: ElevatedButton(
                onPressed: () => {
                  if (widget.quantity <= 10) {
                    widget.quantity -= 1,
                    setState(() {})
                  }
                },
                style: ButtonStyle(
                  padding: MaterialStateProperty.all(
                    EdgeInsets.all(3),
                  ),
                  shape: MaterialStateProperty.all(
                    CircleBorder()
                  ),
                  minimumSize: MaterialStateProperty.resolveWith((_) {
                    return Size(10, 10);
                  }),
                  backgroundColor: MaterialStateProperty.all(
                    Colors.green[400],
                  ),
                ),
                child: Icon(
                  Icons.remove,
                  size: 15,
                  color: Colors.white70
                ),
              ),
            ),

            Padding(
              padding: EdgeInsets.zero,
              child: Text(
                _formatPlaceHolder(widget.placeholder),
                style: TextStyle(
                  fontFamily: 'Cabin',
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                  letterSpacing: 0.5
                ),
              )
            ),

            Container(
              padding: EdgeInsets.zero,
              height: 20,
              
              child: ElevatedButton(
                onPressed: () => {
                  if (widget.quantity < 10) {
                    widget.quantity += 1,
                    setState(() {})               
                  } else if(widget.placeholder == 'None') {
                    widget.quantity = 1,
                    setState(() {})
                  } 
                },
                style: ButtonStyle(
                  padding: MaterialStateProperty.all(
                    EdgeInsets.all(3),
                  ),
                  shape: MaterialStateProperty.all(
                    CircleBorder()
                  ),
                  minimumSize: MaterialStateProperty.resolveWith((_) {
                    return Size(10, 10);
                  }),
                  backgroundColor: MaterialStateProperty.all(
                    Colors.green[400],
                  ),
                ),
                child: Icon(
                  Icons.add,
                  size: 15,
                  color: Colors.white70
                ),
              ),
            ),
          ]
        ),
      ),
    );
  }

  String _formatPlaceHolder(placeholder) {
    if (placeholder == 'cube') {
        return widget.quantity < 1 ? 'None' :
        widget.quantity == 1 ? '${widget.quantity} $placeholder'
        : '${widget.quantity} ${placeholder}s';    
    } else if (placeholder == 'No' || placeholder == 'Yes') {
      return '$placeholder';
    }
    return '';
  }
}
