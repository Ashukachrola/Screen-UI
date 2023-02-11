import 'package:assignment_project/second_page.dart';
import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Expanded(
              child: Stack(
                fit: StackFit.expand,
                children: [
                  Image.asset(
                    "assets/images/burgerimage.jpg",
                    fit: BoxFit.fitHeight,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: Column(
                      children: [
                        Container(
                          child: Text(
                            "LESS TALK,",
                            style: TextStyle(
                                fontSize: 40,
                                fontFamily: 'Schyler',
                                //fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          alignment: Alignment.topCenter,
                        ),
                        Container(
                          child: Text(
                            "EAT MORE.",
                            style: TextStyle(
                                fontSize: 40,
                                fontFamily: 'Schyler',
                                //fontWeight: FontWeight.bold,
                                color: Colors.green),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Text(
                            "Delivery solution in phone",
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.white,
                              //    fontFamily: 'Trajan'
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 15),
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => SecondPage()),
                              );
                            },
                            child: Text('Get Started',
                                style: TextStyle(
                                    color: Colors.black, fontSize: 9)),
                            style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.white),
                              shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                  // Change your radius here
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
    throw UnimplementedError();
  }
}
