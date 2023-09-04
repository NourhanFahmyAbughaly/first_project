import 'package:first_project/component/dot.dart';
import 'package:first_project/component/first_image.dart';
import 'package:first_project/screens/Auth/login_screen.dart';
import 'package:flutter/material.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  int inilInde = 0;
  List<Map<String, dynamic>> image = [
    {
      "image": FirstImageOnBoarding(),
      "title": "Take Care of Your Self",
      "subtitle": "Your Skin deserves the best care"
    },
    {
      "image": Image.asset("assets/Skincare-amico1.png"),
      "title": "Take Care of Your Self",
      "subtitle": "reveal your true beauty with our skincare line"
    },
    {
      "image": Image.asset("assets/Skincare-cuate 1.png"),
      "title": "Your Skin deserves the best car",
      "subtitle": "Indulge In self-Care With Our Premium Skincare Products"
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color(0xffD0E5AF),
            Color(0xffD0E5AF),
            Colors.grey,
            Colors.grey,
          ],
          end: Alignment.bottomCenter,
          begin: Alignment.topCenter,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            alignment: Alignment.topRight,
            child: TextButton(
              onPressed: () {
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => LoginScreen()));
              },
              child: Text(
                "Skip",
                style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                    fontSize: 16),
              ),
            ),
          ),
          Expanded(
            child: PageView.builder(
              onPageChanged: (ind) {
                setState(() {
                  inilInde = ind;

                });
              },
              itemCount: image.length,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      height: 300,
                      child: image[inilInde]["image"],
                    ),
                    Container(
                      alignment: Alignment.center,
                      child: Text(image[index]["title"]),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 20),
                      alignment: Alignment.center,
                      child: Text(image[index]["subtitle"]),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(30)),
                        color: Colors.green,
                      ),
                      width: double.infinity,
                      margin:
                          EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                      padding: EdgeInsets.symmetric(vertical: 5),
                      child: MaterialButton(
                        onPressed: () {
                          setState(() {
                            inilInde++;

                          });

                          if (inilInde == 3) {
                            Navigator.of(context).pushReplacement(
                                MaterialPageRoute(
                                    builder: (context) => LoginScreen()));
                          }
                        },
                        child: Text(
                          inilInde == 2 ? "Get Start" : "Next",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 24),
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Dote(
                          iniIinilInde: inilInde,
                          number: 0,
                        ),
                        Dote(
                          iniIinilInde: inilInde,
                          number: 1,
                        ),
                        Dote(
                          iniIinilInde: inilInde,
                          number: 2,
                        )
                      ],
                    ),
                  ],
                );
              },
            ),
          )
        ],
      ),
    ));
  }
}
