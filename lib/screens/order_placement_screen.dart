import 'package:flutter/material.dart';

class OrderPlacementScreen extends StatefulWidget {
  static const String id = 'order_placement_screen';

  @override
  _OrderPlacementScreenState createState() => _OrderPlacementScreenState();
}

class _OrderPlacementScreenState extends State<OrderPlacementScreen> {
  @override
  Widget build(BuildContext context) {
    print(MediaQuery.of(context).size.width);
    return Scaffold(
      backgroundColor: Color(0xFFFF9fAB),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 16.0, top: 8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    FractionallySizedBox(
                      widthFactor: 0.5,
                      child: Text(
                        'Caramel Macchiato',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 36.0,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(width: 10.0),
                    FractionallySizedBox(
                      widthFactor: 0.5,
                      child: Text(
                        'Freshly steamed milk with vanilla flavoured syrup is marked with espresso and topped with caramel drizzle for oh-so-sweet finish.',
                        style: TextStyle(color: Colors.white, fontSize: 16.0),
                      ),
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30.0),
                          topRight: Radius.circular(30.0)),
                      color: Colors.white,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 10.0,
                          ),
                          Text(
                            'Preparation Time',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 10.0),
                          Text(
                            '5 mins',
                            style: TextStyle(color: Colors.grey),
                          ),
                          SizedBox(height: 10.0),
                          Divider(
                            color: Colors.grey,
                            thickness: 0.5,
                          ),
                          SizedBox(height: 10.0),
                          Text(
                            'Ingredients',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 10.0),
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: [
                                IngredientsCard(
                                  image: 'water',
                                  color: Colors.lightBlueAccent,
                                  title: 'Water',
                                ),
                                SizedBox(width: 10.0),
                                IngredientsCard(
                                  image: 'coffee',
                                  color: Colors.brown,
                                  title: 'Brewed Espresso',
                                ),
                                SizedBox(width: 10.0),
                                IngredientsCard(
                                  image: 'sugar',
                                  color: Color(0xFFFF9fAB),
                                  title: 'Sugar',
                                ),
                                SizedBox(width: 10.0),
                                IngredientsCard(
                                  image: 'nut',
                                  color: Colors.green,
                                  title: 'Toffee Nut Syrup',
                                ),
                                SizedBox(width: 10.0),
                                IngredientsCard(
                                  image: 'plant',
                                  color: Colors.teal,
                                  title: 'Natural Flavors',
                                ),
                                SizedBox(width: 10.0),
                                IngredientsCard(
                                  image: 'water',
                                  title: 'Vanilla Syrup',
                                  color: Colors.yellow,
                                ),
                                SizedBox(width: 10.0),
                                IngredientsCard(
                                  image: 'coffee',
                                  title: 'Creamer',
                                  color: Colors.black38,
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 10.0),
                          Divider(
                            color: Colors.grey,
                            thickness: 0.5,
                          ),
                          SizedBox(height: 10.0),
                          Text(
                            'Nutrition Information',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 15.0),
                          Row(
                            children: [
                              Text(
                                'Calories',
                                style: TextStyle(color: Colors.grey),
                              ),
                              SizedBox(width: 10.0),
                              Text(
                                '250',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                          SizedBox(height: 10.0),
                          Row(
                            children: [
                              Text(
                                'Proteins',
                                style: TextStyle(color: Colors.grey),
                              ),
                              SizedBox(width: 10.0),
                              Text(
                                '10g',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                          SizedBox(height: 10.0),
                          Row(
                            children: [
                              Text(
                                'Caffeine',
                                style: TextStyle(color: Colors.grey),
                              ),
                              SizedBox(width: 10.0),
                              Text(
                                '150mg',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                          SizedBox(height: 10.0),
                          Divider(
                            color: Colors.grey,
                            thickness: 0.5,
                          ),
                          SizedBox(height: 10.0),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Expanded(
                                child: ElevatedButton(
                                  onPressed: () {
                                    //TODO - implement ModalBottomSheet
                                  },
                                  style: ButtonStyle(
                                      // backgroundColor: MaterialStateProperty.all<Color>(),
                                      shape: MaterialStateProperty.all<
                                          RoundedRectangleBorder>(
                                        RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(30.0),
                                        ),
                                      ),
                                      backgroundColor:
                                          MaterialStateProperty.all(
                                              Colors.brown)),
                                  child: Padding(
                                    padding: const EdgeInsets.all(16.0),
                                    child: Text(
                                      'Make Order',
                                      style: TextStyle(fontSize: 16.0),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class IngredientsCard extends StatelessWidget {
  final String image;
  final Color color;
  final String title;

  const IngredientsCard({this.image, this.color, this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(
          width: 50.0,
          height: 50.0,
          child: Card(
            color: color,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16.0)),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(
                'images/icons/$image.png',
                fit: BoxFit.fill,
              ),
            ),
          ),
        ),
        SizedBox(height: 5.0),
        SizedBox(
          width: 50.0,
          height: 30.0,
          child: Text(
            title ?? '',
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.grey, fontSize: 12.0),
          ),
        )
      ],
    );
  }
}
