import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:yoga/widgets/drawer.dart';
import 'package:yoga/loginpage.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            title: Text("Welcome, $name"),
            titleSpacing: 00.0,
            centerTitle: true,
            toolbarHeight: 100.2,
            elevation: 0.00,
            backgroundColor: Colors.lightBlue,
            bottom: TabBar(
              tabs: [
                Tab(icon: Icon(Icons.music_note)),
                Tab(icon: Icon(Icons.music_video)),
                Tab(icon: Icon(Icons.camera_alt)),
              ],
            ),
          ),
          //AppBar
          drawer: MyDrawer(),
          body: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/img2.png'),
                fit: BoxFit.cover,
                colorFilter: new ColorFilter.mode(
                    Colors.black.withOpacity(0.2), BlendMode.dstATop),
              ),
            ),
            child: TabBarView(
              children: <Widget>[
                ListView(
                  children: [
                    CarouselSlider(
                      items: [
                        //1st Image of Slider
                        Container(
                          margin: EdgeInsets.all(6.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.0),
                            image: DecorationImage(
                              image: AssetImage('assets/images/img1.jpg'),
                              fit: BoxFit.fitHeight,
                            ),
                          ),
                        ),

                        //2nd Image of Slider
                        Container(
                          margin: EdgeInsets.all(6.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.0),
                            image: DecorationImage(
                              image: AssetImage('assets/images/img2.png'),
                              fit: BoxFit.fitHeight,
                            ),
                          ),
                        ),

                        //3rd Image of Slider
                        Container(
                          margin: EdgeInsets.all(6.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.0),
                            image: DecorationImage(
                              image: AssetImage('assets/images/img3.png'),
                              fit: BoxFit.fitHeight,
                            ),
                          ),
                        ),

                        //4th Image of Slider
                        Container(
                          margin: EdgeInsets.all(6.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.0),
                            image: DecorationImage(
                              image: AssetImage('assets/images/img4.jpg'),
                              fit: BoxFit.fitHeight,
                            ),
                          ),
                        ),

                        //5th Image of Slider
                        Container(
                          margin: EdgeInsets.all(6.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.0),
                            image: DecorationImage(
                              image: AssetImage('assets/images/img5.png'),
                              fit: BoxFit.fitHeight,
                            ),
                          ),
                        ),
                      ],

                      //Slider Container properties
                      options: CarouselOptions(
                        height: 250.0,
                        enlargeCenterPage: true,
                        autoPlay: true,
                        aspectRatio: 16 / 9,
                        autoPlayCurve: Curves.fastOutSlowIn,
                        enableInfiniteScroll: true,
                        autoPlayAnimationDuration: Duration(milliseconds: 800),
                        viewportFraction: 0.5,
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
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Center(
                  child: Text('Hello beautiful'),
                ),
                Center(
                  child: Text('Hello beautiful'),
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
