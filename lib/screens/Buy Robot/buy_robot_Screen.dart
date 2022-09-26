import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

import '../../widgtes/slider_view.dart';

class BuyRobot extends StatefulWidget {
  const BuyRobot({super.key});

  @override
  State<BuyRobot> createState() => _BuyRobotState();
}

class _BuyRobotState extends State<BuyRobot> {
  int buyRobotAmount = 0;

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    return Scaffold(
      drawer: const Drawer(child: SliderView()),
      backgroundColor: const Color(0xffE5E5E5),
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Builder(
          builder: (context) => IconButton(
            icon: CircleAvatar(
                radius: 14,
                backgroundColor: const Color.fromARGB(255, 91, 95, 97),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SvgPicture.asset(
                    "assets/user-solid.svg",
                    color: Colors.white,
                  ),
                )),
            onPressed: () => Scaffold.of(context).openDrawer(),
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                FontAwesomeIcons.bell,
                color: Colors.black,
              ))
        ],
      ),
      body: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: height * 0.17,
                width: width * 8,
                color: Colors.white,
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                          left: width * 0.04, top: height * 0.01),
                      child: Row(
                        children: [
                          Icon(
                            FontAwesomeIcons.robot,
                            size: 16,
                            color: Colors.blue,
                          ),
                          SizedBox(
                            width: width * 0.02,
                          ),
                          Text(
                            "Robot No 1",
                            style: GoogleFonts.lato(
                                color: Colors.black,
                                fontSize: 14,
                                fontWeight: FontWeight.w800),
                          )
                        ],
                      ),
                    ),
                    RobotBuyDetails(
                        width: width,
                        height: height,
                        robotPrice: "5",
                        robotWorkingDays: "60",
                        startupDeposit: "0"),
                    SizedBox(
                        height: height * 0.03,
                        width: width * 0.7,
                        child: ElevatedButton(
                            onPressed: () {
                              showMaterialModalBottomSheet(
                                context: context,
                                builder: (context) => Container(
                                  height: height * 0.5,
                                  width: width,
                                  decoration: BoxDecoration(
                                      color: Colors.white30,
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Center(
                                        child: Text("Buy robot",
                                            style: GoogleFonts.lato(
                                                color: Colors.black,
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold)),
                                      ),
                                      Padding(
                                        padding:
                                            EdgeInsets.only(left: width * 0.02),
                                        child: Text(
                                          "purchase price",
                                          style: GoogleFonts.lato(
                                              color: Colors.black38),
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            EdgeInsets.only(left: width * 0.02),
                                        child: Row(
                                          children: [
                                            Text(
                                              "40.74",
                                              style: GoogleFonts.lato(
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            SizedBox(
                                              width: width * 0.01,
                                            ),
                                            Text(
                                              "USDT=",
                                              style: GoogleFonts.lato(
                                                  color: const Color.fromARGB(
                                                      255, 108, 107, 107)),
                                            ),
                                            SizedBox(
                                              width: width * 0.01,
                                            ),
                                            Text(
                                              "40.74",
                                              style: GoogleFonts.lato(
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            SizedBox(
                                              width: width * 0.01,
                                            ),
                                            Text("BDT",
                                                style: GoogleFonts.lato(
                                                  color: const Color.fromARGB(
                                                      255, 108, 107, 107),
                                                ))
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            EdgeInsets.only(left: width * 0.09),
                                        child: RobotBuyDetails(
                                            width: width,
                                            height: height,
                                            robotPrice: "5",
                                            robotWorkingDays: "60",
                                            startupDeposit: "0"),
                                      ),
                                      Padding(
                                        padding:
                                            EdgeInsets.only(left: width * 0.02),
                                        child: Column(
                                          children: [
                                            Row(
                                              children: [
                                                Text(
                                                  "Please enter the quantity to buy",
                                                  style: GoogleFonts.lato(
                                                      color: Colors.black,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                                IconButton(
                                                    onPressed: () {
                                                      setState(() {
                                                        buyRobotAmount++;
                                                      });
                                                    },
                                                    icon: Icon(
                                                        FontAwesomeIcons.plus)),
                                                Container(
                                                  height: height * 0.03,
                                                  width: width * 0.08,
                                                  color: Colors.white,
                                                  child: Center(
                                                      child: Text(
                                                          "${buyRobotAmount}")),
                                                ),
                                                IconButton(
                                                    onPressed: () {
                                                      setState(() {
                                                        buyRobotAmount--;
                                                      });
                                                    },
                                                    icon: Icon(FontAwesomeIcons
                                                        .minus)),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                      Center(
                                        child: ElevatedButton(
                                            onPressed: () {
                                              Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        const BuyRobot()),
                                              );
                                              var snackBar = SnackBar(
                                                elevation: 0,
                                                behavior:
                                                    SnackBarBehavior.floating,
                                                backgroundColor:
                                                    Colors.transparent,
                                                content: AwesomeSnackbarContent(
                                                  title: 'Succesfully send!',
                                                  message:
                                                      'Thank you sir our team will response soon',
                                                  contentType:
                                                      ContentType.success,
                                                ),
                                              );

                                              ScaffoldMessenger.of(context)
                                                  .showSnackBar(snackBar);
                                            },
                                            child: Text(
                                                "Confirm to active robot")),
                                      )
                                    ],
                                  ),
                                ),
                              );
                            },
                            child: Text("Buy Now")))
                  ],
                ),
              ),
            );
          }),
    );
  }
}

class RobotBuyDetails extends StatelessWidget {
  const RobotBuyDetails(
      {Key? key,
      required this.width,
      required this.height,
      required this.robotPrice,
      required this.robotWorkingDays,
      required this.startupDeposit})
      : super(key: key);

  final double width;
  final double height;

  final String robotPrice;
  final String robotWorkingDays;
  final String startupDeposit;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: EdgeInsets.only(left: width * 0.15),
          child: Column(
            children: [
              Row(
                children: [
                  Text(robotPrice,
                      style: GoogleFonts.oswald(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.w800)),
                  Padding(
                    padding: EdgeInsets.only(
                        top: height * 0.005, left: width * 0.005),
                    child: Text("u",
                        style: GoogleFonts.lato(
                          color: Colors.black,
                          fontSize: 15,
                        )),
                  )
                ],
              ),
              Text("Robot Price",
                  style: GoogleFonts.lato(
                      color: Colors.black38,
                      fontSize: 10,
                      fontWeight: FontWeight.w800))
            ],
          ),
        ),
        SizedBox(
          width: width * 0.04,
        ),
        Container(
          height: height * 0.1,
          width: width * 0.003,
          color: Colors.black,
        ),
        SizedBox(
          width: width * 0.04,
        ),
        Column(
          children: [
            Row(
              children: [
                Text(robotWorkingDays,
                    style: GoogleFonts.oswald(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.w800)),
                Padding(
                  padding:
                      EdgeInsets.only(top: height * 0.005, left: width * 0.005),
                  child: Text("day",
                      style: GoogleFonts.lato(
                        color: Colors.black,
                        fontSize: 15,
                      )),
                )
              ],
            ),
            Text("Expiratio\nn date",
                style: GoogleFonts.lato(
                    color: Colors.black38,
                    fontSize: 10,
                    fontWeight: FontWeight.w800))
          ],
        ),
        SizedBox(
          width: width * 0.04,
        ),
        Container(
          height: height * 0.1,
          width: width * 0.003,
          color: Colors.black,
        ),
        SizedBox(
          width: width * 0.04,
        ),
        Column(
          children: [
            Row(
              children: [
                Text(startupDeposit,
                    style: GoogleFonts.oswald(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.w800)),
                Padding(
                  padding:
                      EdgeInsets.only(top: height * 0.005, left: width * 0.005),
                  child: Text("u",
                      style: GoogleFonts.lato(
                        color: Colors.black,
                        fontSize: 15,
                      )),
                )
              ],
            ),
            Text("Startup\n deposit",
                style: GoogleFonts.lato(
                    color: Colors.black38,
                    fontSize: 10,
                    fontWeight: FontWeight.w800))
          ],
        ),
      ],
    );
  }
}
