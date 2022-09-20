import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../widgtes/slider_view.dart';

class UserScreen extends StatefulWidget {
  const UserScreen({Key? key}) : super(key: key);

  @override
  State<UserScreen> createState() => _UserScreenState();
}

class _UserScreenState extends State<UserScreen> {
 

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    return Scaffold(
       drawer: const Drawer(
      child:SliderView()
    ),
 appBar:AppBar(
        backgroundColor: Colors.white,
        leading: Builder(
          builder: (context) => IconButton(
            icon:CircleAvatar(
             radius: 14,
             backgroundColor: const Color.fromARGB(255, 91, 95, 97),
             child:  Padding(
               padding: const EdgeInsets.all(8.0),
               child: SvgPicture.asset("assets/user-solid.svg",color: Colors.white,),
             )),
            onPressed: () => Scaffold.of(context).openDrawer(),
          ),
        ),
        
        
        actions: [
         IconButton(onPressed: (){}, icon: const Icon(FontAwesomeIcons.bell,color: Colors.black,))
         ],),
      

      backgroundColor: const Color.fromARGB(255, 232, 232, 232),
      body: Column(
        children: [
          SizedBox(height: height*0.01,),
          Container(
            height: height*0.3,
            width: width,
            color: Colors.white,
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    left: width*0.05,
                    top: height*0.015
                  
                  ),
                  child: Container(
                    height: height*0.03,
                    width: width*0.3,
               
                    child: Row(
                      children: [
                        Text("Total assets",
                        style: GoogleFonts.lato(color: Colors.black45,fontSize: 14),),
                        SizedBox(width: width*0.01,),
                        Icon(FontAwesomeIcons.eye,size:width*0.04,)
                      ],
                    ),
                  ),
                  ),
                   Padding(
                     padding: EdgeInsets.only(
                    left: width*0.35,
                   
                  
                  ),
                     child: Row(
                        children: [
                          Text("787.39",
                          style: GoogleFonts.lato(color: Colors.black,fontSize: 14,fontWeight: FontWeight.bold),),
                             SizedBox(width: width*0.01,),
                          Text("BDT",
                          style: GoogleFonts.lato(color: Colors.black45,fontSize: 14,fontWeight: FontWeight.bold),),
                          SizedBox(width: width*0.01,),
                          Icon(FontAwesomeIcons.angleDown,size:width*0.04,)
                        ],
                      ),
                   ),
                   SizedBox(height: height*0.04,),
                   Padding(
                      padding: EdgeInsets.only(
                    left: width*0.24,
                   
                  
                  ),
                     child: Row(
                          children: [
                            Text("Taday's earning's",
                            style: GoogleFonts.lato(color: Colors.black45,fontSize: 12,fontWeight: FontWeight.bold),),
                            Text("46.5",
                            style: GoogleFonts.lato(color: Colors.black,fontSize: 14),),
                            SizedBox(width: width*0.01,),
                            Text("+36.56%",
                            style: GoogleFonts.lato(color: Colors.greenAccent,fontSize: 14),),
                          ],
                        ),
                   ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
