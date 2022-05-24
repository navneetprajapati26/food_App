import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:meal_mate/home.dart';
import 'package:meal_mate/otp.dart';

class logIn_pase extends StatefulWidget {
  const logIn_pase({Key? key}) : super(key: key);

  @override
  State<logIn_pase> createState() => _logIn_paseState();
}

class _logIn_paseState extends State<logIn_pase> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          children: [
            Container(
              alignment: Alignment.topCenter,
              padding: EdgeInsets.all(25),
              child: Text(
                "welcome",
                style: TextStyle(
                  color: Color(0xAD516541),
                  fontWeight: FontWeight.bold,
                  fontSize: 80,
                ),
              ),
            ),

            //this Container for bottme tiffin icon
            Container(
              height: 760,
              width: 350,
              decoration: BoxDecoration(
                color: Colors.transparent,
                borderRadius: BorderRadius.circular(30),
              ),
              padding: EdgeInsets.all(17),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        height: 100,
                        width: 65.5,
                        child: SvgPicture.asset(
                          'assets/Group.svg',
                          height: 100,
                          width: 65.5,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Container(
                        height: 100,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Row(
                              //mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Container(
                                  height: 50,
                                  width: 50,
                                  child: SvgPicture.asset(
                                    'assets/Frame_1.svg',
                                    height: 50,
                                    width: 50,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Container(
                                  height: 50,
                                  width: 50,
                                  child: SvgPicture.asset(
                                    'assets/Frame.svg',
                                    height: 50,
                                    width: 50,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            //log in
            Center(
              child: Container(
                height: 450,
                width: 350,
                decoration: BoxDecoration(
                  color: Color(0x83EEDC7B),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    //log of meal mate
                    Image.asset(
                      'assets/meal-mate.png',
                      height: 85,
                      width: 275,
                      fit: BoxFit.cover,
                    ),

                    //text field Container
                    Container(
                      margin: EdgeInsets.all(30),
                      decoration: BoxDecoration(
                          //color: Colors.black12,
                          borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(30),
                        bottomRight: Radius.circular(30),
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(30),
                      )),
                      child: TextField(
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(30),
                            bottomRight: Radius.circular(30),
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(30),
                          )),
                          // hintText: "Phone Number",
                          labelText: 'Phone Number',
                        ),
                      ),
                    ),

                    //Get otp Btn
                    InkWell(
                      onTap: () {
                        // TODO: add funtion which have Firebass Auth
                        setState(() {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Otp()));
                        });
                      },
                      child: Container(
                        alignment: Alignment.center,
                        height: 60,
                        width: 200,
                        decoration: const BoxDecoration(
                          color: Colors.amber,
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(30),
                            bottomRight: Radius.circular(30),
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(30),
                          ),
                        ),
                        child: Text(
                          "Get OTP",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),

                    SizedBox(
                      height: 20,
                    ),

                    //"skip" text btn
                    InkWell(
                      onTap: () {
                        setState(() {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Home()));
                        });
                      },
                      child: Text(
                        "Skip",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
