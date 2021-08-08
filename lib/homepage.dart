import 'package:google_fonts/google_fonts.dart';
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
                          'Welcome! $name',
                          style: TextStyle(
                              fontSize: 25,
                              // fontStyle: FontStyle.italic,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(20, 20, 20, 20),
                      child: const Center(
                        child: Text(
                          '"The very heart of yoga practice is \'abyhasa\' – steady effort in the direction you want to go."',
                          style: TextStyle(
                            fontSize: 23,
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Column(
                      children: [
                        Text(
                          'Why Yoga?',
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'Yoga improves strength, balance and flexibility, helps with back pain relief. Yoga can ease arthritis symptoms. Yoga benefits heart health. Yoga relaxes you, to help you sleep better. Yoga can mean more energy and brighter moods, helps you manage stress. Yoga connects you with a supportive community and promotes better self-care.   ',
                            textAlign: TextAlign.center,
                            style: GoogleFonts.cairo(
                                textStyle: TextStyle(fontSize: 23)),
                          ),
                        )
                      ],
                    )
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
