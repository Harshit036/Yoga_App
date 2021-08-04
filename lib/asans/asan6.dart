import 'package:flutter/material.dart';
import 'package:yoga/widgets/drawer.dart';

class Asan6 extends StatelessWidget {
  const Asan6({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
              title: Text("Bhujangasana Or Cobra Stretch"),
              titleSpacing: 00.0,
              centerTitle: true,
              toolbarHeight: 80.2,
              elevation: 0.00,
              backgroundColor: Colors.blueGrey,
            ),
            drawer: MyDrawer(),
            body: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/logo.png'),
                  fit: BoxFit.cover,
                  colorFilter: new ColorFilter.mode(
                      Colors.black.withOpacity(0.2), BlendMode.dstATop),
                ),
              ),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(
                      height: 40,
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10.0),
                      child: Image(
                        image: AssetImage('assets/images/pose6.jpg'),
                        height: 200,
                      ),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Text(
                      'It is known as the corrector of the curvature and makes the spine flexible. The curve structure of the asana massages the deep back muscles, spine and nerves. It can be a great asana for people dealing with arthritis of the lower back and lower back pains. It relieves menstrual problems by stretching the uterus and ovaries. It releases stress through invigorating adrenal glands and kidneys.',
                      style: TextStyle(
                        fontSize: 18,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      'Tip: After lying on the floor on the stomach, the hands should be on the floor after the upper body should be stretched and uplifted.',
                      style: TextStyle(
                          fontSize: 16,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              ),
            )));
  }
}
