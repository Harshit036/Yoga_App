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
                    SizedBox(
                      height: 40,
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10.0),
                      child: Image(
                        image: AssetImage('assets/images/pose2.jpg'),
                        height: 170,
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Text(
                      'This is an amazing one for beginners as it gives one the desired comfort. The asana is beyond the horizons of the physical dimension and gives a spiritual bliss. Sukhasana is best to reduce anxiety and stress and mental tiredness. It corrects the body posture and stretches the chest and spine.',
                      style: TextStyle(
                        fontSize: 18,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Tip: Sit with the legs tucked inside the opposite thighs and the spine should be vertically straight. The hands should be placed on the knees and breathe in and out gently.',
                      style: TextStyle(
                          fontSize: 13,
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
