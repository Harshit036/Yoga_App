import 'package:flutter/material.dart';
import 'package:yoga/widgets/drawer.dart';

class Asan4 extends StatelessWidget {
  const Asan4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
              title: Text("Vakrasana Or Twisted Pose"),
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
                  image: AssetImage('assets/images/img2.png'),
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
                        image: AssetImage('assets/images/pose4.jpg'),
                        height: 170,
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Text(
                      'Vakrasana makes the body flexible and reduces belly fat and also helps in improving digestion by regulating digestive juices.',
                      style: TextStyle(
                        fontSize: 18,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Tip: One needs to make a posture like a steady stance by placing the right foot high up on the left thigh and the hands should be over the head with the palms together. The spine must be straight and the sole of the foot flat and firm. After releasing the pose, one needs to change the position and try the other leg.',
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
