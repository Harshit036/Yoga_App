import 'package:flutter/material.dart';
import 'package:yoga/widgets/drawer.dart';

class Asan1 extends StatelessWidget {
  const Asan1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
              title: Text("Sukhasana Or Easy Pose"),
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
                    Image(
                      image: AssetImage('assets/images/pose2.jpg'),
                      height: 400,
                    ),
                    Text(
                        'This is an amazing one for beginners as it gives one the desired comfort. The asana is beyond the horizons of the physical dimension and gives a spiritual bliss. Sukhasana is best to reduce anxiety and stress and mental tiredness. It corrects the body posture and stretches the chest and spine.')
                  ],
                ),
              ),
            )));
  }
}
