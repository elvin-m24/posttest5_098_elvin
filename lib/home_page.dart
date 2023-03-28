import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool selected = false;
  @override
  Widget build(BuildContext context) {
    var lebar = MediaQuery.of(context).size.width;
    var tinggi = MediaQuery.of(context).size.height;
    Widget header() {
      return Container(
        margin: EdgeInsets.all(
          30.0,
        ),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Hello Elvin',
                    style: TextStyle(
                        fontSize: 24,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    '@elvinpratama',
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                        fontWeight: FontWeight.normal),
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  selected = !selected;
                });
              },
              child: AnimatedContainer(
                decoration: BoxDecoration(
                  color: selected ? Colors.black : Colors.orange,
                  borderRadius: BorderRadius.circular(8),
                ),
                duration: Duration(seconds: 1),
                padding: EdgeInsets.all(18),
                child: Icon(
                  Icons.shopping_cart,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget Slogan() {
      return Container(
        margin: EdgeInsetsDirectional.only(
          top: 10.0,
          start: 30.0,
          end: 30.0,
        ),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Meet Your Other Half',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  // CUPERTINO
                  CupertinoSearchTextField(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    }

    Widget Category() {
      return Container(
        margin: EdgeInsets.all(30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Category",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 250,
              child: Image.asset(
                "assets/guitar-el.jpg",
                width: lebar,
                height: tinggi,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 250,
              child: Image.asset(
                "assets/bass-el.jpg",
                width: lebar,
                height: tinggi,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 250,
              child: Image.asset(
                "assets/guitar-kl.jpg",
                width: lebar,
                height: tinggi,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 250,
              child: Image.asset(
                "assets/amp.jpg",
                width: lebar,
                height: tinggi,
              ),
            ),
          ],
        ),
      );
    }

    return ListView(
      children: [
        header(),
        Slogan(),
        Category(),
      ],
    );
  }
}
