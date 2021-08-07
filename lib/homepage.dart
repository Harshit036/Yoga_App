import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:yoga/asans/asan1.dart';
import 'package:yoga/asans/asan2.dart';
import 'package:yoga/widgets/carousel.dart';
import 'package:yoga/widgets/drawer.dart';
import 'package:yoga/loginpage.dart';

import 'asans/asan3.dart';
import 'asans/asan4.dart';
import 'asans/asan5.dart';
import 'asans/asan6.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: new ThemeData(
          scaffoldBackgroundColor: const Color.fromRGBO(124, 118, 118, 1)),
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            title: Text("Yoga Guru"),
            titleSpacing: 00.0,
            centerTitle: true,
            toolbarHeight: 100.2,
            elevation: 0.00,
            backgroundColor: Colors.lightBlue,
            bottom: TabBar(
              tabs: [
                Tab(icon: Icon(Icons.home)),
                Tab(icon: Icon(Icons.fitness_center)),
              ],
            ),
          ),
          //AppBar
          drawer: MyDrawer(),
          body: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/logo.png'),
                fit: BoxFit.fitHeight,
                colorFilter: new ColorFilter.mode(
                    Colors.black.withOpacity(0.2), BlendMode.dstATop),
              ),
            ),
            child: TabBarView(
              children: <Widget>[
                ListView(
                  children: [
                    // CircularProgressIndicator(),
                    MyCarouselSlider(),
                    SizedBox(
                      height: 40,
                    ),
                    Center(
                      child: Container(
                        child: Text(
                          'Welcome, $name',
                          style: TextStyle(
                              fontSize: 25,
                              fontStyle: FontStyle.italic,
                              fontWeight: FontWeight.w900),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(20, 20, 20, 20),
                      child: const Center(
                        child: Text(
                          '“When you listen to yourself, everything comes naturally. It comes from inside, like a kind of will to do something. Try to be sensitive. That is yoga.” ― Petri Räisänen',
                          style: TextStyle(
                            fontSize: 18,
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(5, 7, 5, 7),
                  child: GridView.count(
                    crossAxisCount: 2,
                    mainAxisSpacing: 20,
                    crossAxisSpacing: 20,
                    children: [
                      Card(
                        elevation: 5,
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Asan1()),
                            );
                          },
                          child: Column(
                            children: [
                              Image(
                                image:
                                    AssetImage('assets/images/iconpose1.png'),
                                height: 100,
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                'Easy pose',
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ),
                      ),
                      Card(
                        elevation: 5,
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Asan2()),
                            );
                          },
                          child: Column(
                            children: [
                              Image(
                                image:
                                    AssetImage('assets/images/iconpose2.png'),
                                height: 100,
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                'Boat Pose',
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ),
                      ),
                      Card(
                        elevation: 5,
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Asan3()),
                            );
                          },
                          child: Column(
                            children: [
                              Image(
                                image:
                                    AssetImage('assets/images/iconpose3.png'),
                                height: 100,
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                'Bow Pose',
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ),
                      ),
                      Card(
                        elevation: 5,
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Asan4()),
                            );
                          },
                          child: Column(
                            children: [
                              Image(
                                image:
                                    AssetImage('assets/images/iconpose4.png'),
                                height: 120,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                'Twisted Pose',
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ),
                      ),
                      Card(
                        elevation: 5,
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Asan5()),
                            );
                          },
                          child: Column(
                            children: [
                              Image(
                                image:
                                    AssetImage('assets/images/iconpose5.png'),
                                height: 120,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                'Crow Pose',
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ),
                      ),
                      Card(
                        elevation: 5,
                        child: InkWell(
                          onTap: () {
                            Navigator.pop(context,
                                true); // It worked for me instead of above line
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(builder: (context) => Asan6()),
                            );
                          },
                          child: Column(
                            children: [
                              Image(
                                image:
                                    AssetImage('assets/images/iconpose6.png'),
                                height: 120,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                'Cobra Pose',
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
