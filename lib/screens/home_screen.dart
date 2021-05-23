import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeScreen extends StatefulWidget {
  static const String id = 'home_screen';
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 20.0, horizontal: 0.0),
            child: Container(
              child: Column(
                children: [
                  ListTile(
                    title: Text(
                      "Welcome, Nadia",
                      style: TextStyle(
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.brown[900],
                      ),
                    ),
                    trailing: CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://images.unsplash.com/photo-1517677129300-07b130802f46?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTR8fGdpcmx8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60'),
                    ),
                  ),
                  Container(
                    alignment: AlignmentDirectional.topStart,
                    padding:
                        EdgeInsets.symmetric(vertical: 0.0, horizontal: 16.0),
                    child: Text(
                      "Let's select the best taste for your next coffee break!",
                      style: TextStyle(
                        fontSize: 16.0,
                        color: Colors.brown[200],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          ListTile(
            title: Text(
              "Taste of the week",
              style: TextStyle(
                color: Colors.brown[900],
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            trailing: TextButton(
              child: Text(
                "See all",
                style: TextStyle(
                  color: Colors.brown[200],
                  fontSize: 20.0,
                ),
              ),
            ),
          ),
          Container(
            height: 350.0,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Container(
                  margin: EdgeInsets.all(16.0),
                  width: 200.0,
                  child: Column(
                    children: [
                      Expanded(
                        flex: 4,
                        child: Container(
                          margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 10.0),
                          decoration: BoxDecoration(
                            color: Colors.brown[200],
                            borderRadius: BorderRadius.all(
                              Radius.circular(25.0),
                            ),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Padding(
                                padding: const EdgeInsets.fromLTRB(
                                    16.0, 0.0, 16.0, 4.0),
                                child: Container(
                                  width: 200.0,
                                  child: Text(
                                    "CofeeShop's",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(
                                    16.0, 0.0, 16.0, 0.0),
                                child: Container(
                                  width: 200.0,
                                  child: Text(
                                    "Caffe Misto",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 37.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.all(16.0),
                                child: Container(
                                  child: Text(
                                    "Our dark, rich espresso balanced with steamed milk and a light layer of foam",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15.0,
                                    ),
                                  ),
                                ),
                              ),
                              ListTile(
                                title: Text(
                                  "\$4.99",
                                  style: TextStyle(
                                    fontSize: 30.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                trailing: CircleAvatar(
                                  backgroundColor: Colors.white,
                                  child: Icon(
                                    Icons.favorite_sharp,
                                    color: Colors.brown[200],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Container(
                          width: 200.0,
                          margin: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 0.0),
                          decoration: BoxDecoration(
                              color: Colors.brown[900],
                              borderRadius: BorderRadius.all(
                                Radius.circular(25.0),
                              )),
                          child: TextButton(
                            child: Text(
                              "Order Now",
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(16.0),
                  width: 200.0,
                  child: Column(
                    children: [
                      Expanded(
                        flex: 4,
                        child: Container(
                          margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 10.0),
                          decoration: BoxDecoration(
                            color: Colors.brown[200],
                            borderRadius: BorderRadius.all(
                              Radius.circular(25.0),
                            ),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Padding(
                                padding: const EdgeInsets.fromLTRB(
                                    16.0, 0.0, 16.0, 4.0),
                                child: Container(
                                  width: 200.0,
                                  child: Text(
                                    "BrownHouse's",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(
                                    16.0, 0.0, 16.0, 0.0),
                                child: Container(
                                  width: 200.0,
                                  child: Text(
                                    "Caffe Latte",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 37.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.all(16.0),
                                child: Container(
                                  child: Text(
                                    "Rich, full-bodied espresso with bittersweet milk sauce and steamed foam",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15.0,
                                    ),
                                  ),
                                ),
                              ),
                              ListTile(
                                title: Text(
                                  "\$3.99",
                                  style: TextStyle(
                                    fontSize: 30.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                trailing: CircleAvatar(
                                  backgroundColor: Colors.white,
                                  child: Icon(
                                    Icons.favorite_sharp,
                                    color: Colors.brown[200],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Container(
                          width: 200.0,
                          margin: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 0.0),
                          decoration: BoxDecoration(
                              color: Colors.brown[900],
                              borderRadius: BorderRadius.all(
                                Radius.circular(25.0),
                              )),
                          child: TextButton(
                            child: Text(
                              "Order Now",
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(16.0),
                  width: 200.0,
                  child: Column(
                    children: [
                      Expanded(
                        flex: 4,
                        child: Container(
                          margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 10.0),
                          decoration: BoxDecoration(
                            color: Colors.brown[200],
                            borderRadius: BorderRadius.all(
                              Radius.circular(25.0),
                            ),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Padding(
                                padding: const EdgeInsets.fromLTRB(
                                    16.0, 0.0, 16.0, 4.0),
                                child: Container(
                                  width: 200.0,
                                  child: Text(
                                    "CofeeShop's",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(
                                    16.0, 0.0, 16.0, 0.0),
                                child: Container(
                                  width: 200.0,
                                  child: Text(
                                    "Caffe Misto",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 37.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.all(16.0),
                                child: Container(
                                  child: Text(
                                    "Our dark, rich espresso balanced with steamed milk and a light layer of foam",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15.0,
                                    ),
                                  ),
                                ),
                              ),
                              ListTile(
                                title: Text(
                                  "\$4.99",
                                  style: TextStyle(
                                    fontSize: 30.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                trailing: CircleAvatar(
                                  backgroundColor: Colors.white,
                                  child: Icon(
                                    Icons.favorite_sharp,
                                    color: Colors.brown[200],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Container(
                          width: 200.0,
                          margin: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 0.0),
                          decoration: BoxDecoration(
                              color: Colors.brown[900],
                              borderRadius: BorderRadius.all(
                                Radius.circular(25.0),
                              )),
                          child: TextButton(
                            child: Text(
                              "Order Now",
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(16.0),
                  width: 200.0,
                  child: Column(
                    children: [
                      Expanded(
                        flex: 4,
                        child: Container(
                          margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 10.0),
                          decoration: BoxDecoration(
                            color: Colors.brown[200],
                            borderRadius: BorderRadius.all(
                              Radius.circular(25.0),
                            ),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Padding(
                                padding: const EdgeInsets.fromLTRB(
                                    16.0, 0.0, 16.0, 4.0),
                                child: Container(
                                  width: 200.0,
                                  child: Text(
                                    "CofeeShop's",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(
                                    16.0, 0.0, 16.0, 0.0),
                                child: Container(
                                  width: 200.0,
                                  child: Text(
                                    "Caffe Misto",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 37.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.all(16.0),
                                child: Container(
                                  child: Text(
                                    "Our dark, rich espresso balanced with steamed milk and a light layer of foam",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15.0,
                                    ),
                                  ),
                                ),
                              ),
                              ListTile(
                                title: Text(
                                  "\$4.99",
                                  style: TextStyle(
                                    fontSize: 30.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                trailing: CircleAvatar(
                                  backgroundColor: Colors.white,
                                  child: Icon(
                                    Icons.favorite_sharp,
                                    color: Colors.brown[200],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Container(
                          width: 200.0,
                          margin: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 0.0),
                          decoration: BoxDecoration(
                              color: Colors.brown[900],
                              borderRadius: BorderRadius.all(
                                Radius.circular(25.0),
                              )),
                          child: TextButton(
                            child: Text(
                              "Order Now",
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          ListTile(
            title: Text(
              "Explore nearby",
              style: TextStyle(
                color: Colors.brown[900],
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            trailing: TextButton(
              child: Text(
                'See all',
                style: TextStyle(
                  color: Colors.brown[200],
                  fontSize: 20.0,
                ),
              ),
            ),
          ),
          Container(
            height: 350.0,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Container(
                  margin: EdgeInsets.all(16.0),
                  width: 200.0,
                  child: Column(
                    children: [
                      Expanded(
                        flex: 4,
                        child: Container(
                          margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 10.0),
                          decoration: BoxDecoration(
                            color: Colors.brown[200],
                            borderRadius: BorderRadius.all(
                              Radius.circular(25.0),
                            ),
                            image: DecorationImage(
                              fit: BoxFit.fill,
                              image: NetworkImage(
                                  'https://images.unsplash.com/photo-1483648969698-5e7dcaa3444f?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=667&q=80'),
                            ),
                          ),
                          child: Image.network(
                              'https://images.unsplash.com/photo-1483648969698-5e7dcaa3444f?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=667&q=80'),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Container(
                          width: 200.0,
                          margin: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 0.0),
                          decoration: BoxDecoration(
                              color: Colors.brown[900],
                              borderRadius: BorderRadius.all(
                                Radius.circular(25.0),
                              )),
                          child: TextButton(
                            child: Text(
                              "Visit",
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(16.0),
                  width: 200.0,
                  child: Column(
                    children: [
                      Expanded(
                        flex: 4,
                        child: Container(
                          margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 10.0),
                          decoration: BoxDecoration(
                            color: Colors.brown[200],
                            borderRadius: BorderRadius.all(
                              Radius.circular(25.0),
                            ),
                            image: DecorationImage(
                              fit: BoxFit.fill,
                              image: NetworkImage(
                                  'https://images.unsplash.com/photo-1508766917616-d22f3f1eea14?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTJ8fGNvZmZlZSUyMHNob3BzfGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60'),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Container(
                          width: 200.0,
                          margin: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 0.0),
                          decoration: BoxDecoration(
                              color: Colors.brown[900],
                              borderRadius: BorderRadius.all(
                                Radius.circular(25.0),
                              )),
                          child: TextButton(
                            child: Text(
                              "Visit",
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(16.0),
                  width: 200.0,
                  child: Column(
                    children: [
                      Expanded(
                        flex: 4,
                        child: Container(
                          margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 10.0),
                          decoration: BoxDecoration(
                            color: Colors.brown[200],
                            borderRadius: BorderRadius.all(
                              Radius.circular(25.0),
                            ),
                            image: DecorationImage(
                              fit: BoxFit.fill,
                              image: NetworkImage(
                                  'https://images.unsplash.com/photo-1527596428171-7885b82c91c6?ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8Y29mZmVlJTIwc2hvcHN8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60'),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Container(
                          width: 200.0,
                          margin: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 0.0),
                          decoration: BoxDecoration(
                              color: Colors.brown[900],
                              borderRadius: BorderRadius.all(
                                Radius.circular(25.0),
                              )),
                          child: TextButton(
                            child: Text(
                              "Visit",
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(16.0),
                  width: 200.0,
                  child: Column(
                    children: [
                      Expanded(
                        flex: 4,
                        child: Container(
                          margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 10.0),
                          decoration: BoxDecoration(
                            color: Colors.brown[200],
                            borderRadius: BorderRadius.all(
                              Radius.circular(25.0),
                            ),
                            image: DecorationImage(
                              fit: BoxFit.fill,
                              image: NetworkImage(
                                  'https://images.unsplash.com/photo-1534040385115-33dcb3acba5b?ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mjd8fGNvZmZlZSUyMHNob3BzfGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60'),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Container(
                          width: 200.0,
                          margin: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 0.0),
                          decoration: BoxDecoration(
                              color: Colors.brown[900],
                              borderRadius: BorderRadius.all(
                                Radius.circular(25.0),
                              )),
                          child: TextButton(
                            child: Text(
                              "Visit",
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: 0,
        unselectedIconTheme: IconThemeData(
          color: Colors.brown[200],
        ),
        selectedIconTheme: IconThemeData(
          color: Colors.brown,
        ),
        selectedLabelStyle: TextStyle(
          color: Colors.brown,
        ),
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.fastfood_outlined),
            label: "Order",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border),
            label: "Favorites",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: "Profile",
          ),
        ],
      ),
    );
  }
}
