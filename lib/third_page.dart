import 'package:assignment_project/second_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ThirdPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop(MaterialPageRoute(
              builder: (context) => SecondPage(),
            ));
          },
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.menu_open,color: Colors.black,),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.info_outline,color: Colors.black,),
          )
        ],
      ),
      //backgroundColor: Colors.white30,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 50, left: 30, right: 30),
              child: Container(
                decoration: BoxDecoration(color: Colors.white),
                child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(color: Colors.white),
                      child: Row(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(50),
                            child: Image.asset(
                              'assets/images/macd.png',
                              height: 50,
                              width: 50,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Text(
                              "McDonald's, Teuku Umar Bali",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                          )
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(5),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.white10,
                                  borderRadius: BorderRadius.circular(30)),
                              child: Row(
                                children: [
                                  Container(
                                      child: Icon(
                                    Icons.verified_user,
                                    color: Colors.green,
                                  )),
                                  Container(child: Text("Verified"))
                                ],
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.white10,
                                borderRadius: BorderRadius.circular(30)),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.star,
                                  color: Colors.yellow,
                                ),
                                Text("4.8")
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.white10,
                                borderRadius: BorderRadius.circular(30)),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.location_on_rounded,
                                  color: Colors.red,
                                ),
                                Text("2.4 km")
                              ],
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 255, 255, 255),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: TextFormField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search_rounded),
                    hintText: 'Search',
                    //label: Text("Search your food"),
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20), color: Colors.green),
              //color: Colors.green,
              padding: const EdgeInsets.all(8.0),
              margin: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  Padding(
                    padding: EdgeInsets.all(15),
                    child: Text(
                      'Voucher \n \n 3 voucher available there',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 25, left: 20, right: 20),
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Text(
                        "All menu",
                        style:
                            TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 15),
                      child: Text(
                        "View all",
                        style: TextStyle(color: Colors.green, fontSize: 10),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Row(
              children: [
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 30),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(30),
                        child: Image.asset(
                          'assets/images/three layer burger.jpg',
                          height: 150,
                          width: 150,
                        ),
                      ),
                    ),
                    Text("BigMac Cheese \n -1,88",style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
                    Padding(
                      padding: const EdgeInsets.only(top: 15),
                      child: ElevatedButton(
                        onPressed: () {
                        },
                        child: Text('Add to bag',
                            style: TextStyle(
                                color: Colors.white, fontSize: 10)),
                        style: ButtonStyle(
                          backgroundColor:
                          MaterialStateProperty.all(Colors.black),
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
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 5),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(30),
                        child: Image.asset(
                          'assets/images/double cheese burger.jpg',
                          height: 150,
                          width: 150,
                        ),
                      ),
                    ),
                    Text("Double Cheese \n -1,88",style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
                    Padding(
                      padding: const EdgeInsets.only(top: 15),
                      child: ElevatedButton(
                        onPressed: () {
                        },
                        child: Text('Add to bag',
                            style: TextStyle(
                                color: Colors.white, fontSize: 10)),
                        style: ButtonStyle(
                          backgroundColor:
                          MaterialStateProperty.all(Colors.black),
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
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Row(
                children: [
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 5),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(30),
                          child: Image.asset(
                            'assets/images/double cheese burger.jpg',
                            height: 150,
                            width: 150,
                          ),
                        ),
                      ),
                      Text("Double Cheese \n -1,88",style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
                      Padding(
                        padding: const EdgeInsets.only(top: 15),
                        child: ElevatedButton(
                          onPressed: () {
                          },
                          child: Text('Add to bag',
                              style: TextStyle(
                                  color: Colors.white, fontSize: 10)),
                          style: ButtonStyle(
                            backgroundColor:
                            MaterialStateProperty.all(Colors.black),
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
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 5),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(30),
                          child: Image.asset(
                            'assets/images/double cheese burger.jpg',
                            height: 150,
                            width: 150,
                          ),
                        ),
                      ),
                      Text("Double Cheese \n -1,88",style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
                      Padding(
                        padding: const EdgeInsets.only(top: 15),
                        child: ElevatedButton(
                          onPressed: () {
                          },
                          child: Text('Add to bag',
                              style: TextStyle(
                                  color: Colors.white, fontSize: 10)),
                          style: ButtonStyle(
                            backgroundColor:
                            MaterialStateProperty.all(Colors.black),
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
                ],
              ),
            ),
          ],
        ),
      ),
    );
    throw UnimplementedError();
  }
}
