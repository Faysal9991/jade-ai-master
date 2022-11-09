import 'package:flutter/material.dart';
import 'package:jadeais/screens/signupscreen/signuppage.dart';

import '../../widgtes/phonenumberpicker.dart';
import '../signupscreen/tabbar view/nevegation_screen.dart';

class LoginPage extends StatelessWidget {
  LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: height * 0.18,
                ),
                const Text(
                  "স্বাগতম Jade Ai!",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: height * 0.06,
                ),
                const Text(
                  "আপনার ফোন নম্বার",
                  style: const TextStyle(color: Color(0xffA5A3A3)),
                ),
                SizedBox(
                  height: height * 0.02,
                ),
                SizedBox(
                    height: height * 0.07, child: const PhoneNumberPicker()),
                SizedBox(
                  height: height * 0.02,
                ),
                const Text(
                  "পাসওয়ার্ড লিখুন",
                  style: TextStyle(color: Color(0xffA5A3A3)),
                ),
                SizedBox(
                  height: height * 0.02,
                ),
                Container(
                  height: height * 0.07,
                  decoration: BoxDecoration(
                      color: const Color(0xffF6F6F6),
                      borderRadius: BorderRadius.circular(5)),
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: "পাসওয়ার্ড লিখুন",
                        contentPadding: const EdgeInsets.all(20.0),
                        border: InputBorder.none,
                        suffixIcon: IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.remove_red_eye))),
                  ),
                ),
                SizedBox(
                  height: height * 0.02,
                ),
                const Text(
                  "পাসওয়ার্ড ভুলে গেছেন?",
                  style: TextStyle(color: Color(0xffA5A3A3)),
                ),
                SizedBox(
                  height: height * 0.02,
                ),
                SizedBox(
                    width: width,
                    child: ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).pushReplacement(
                              MaterialPageRoute(
                                  builder: (context) => NavegationBar()));
                        },
                        child: const Text("প্রবেশ করুন"))),
                SizedBox(
                  height: height * 0.02,
                ),
                Row(
                  children: [
                    const Text(
                      "কোন একাউন্ট নেই?",
                      style: TextStyle(color: Color(0xffA5A3A3)),
                    ),
                    const Spacer(),
                    InkWell(
                        onTap: () {
                          Navigator.of(context).pushReplacement(
                              MaterialPageRoute(
                                  builder: (context) => SignUpPage()));
                        },
                        child: const Text(
                          "এখান থেকে একাউন্ট  খুলুন।",
                          style: TextStyle(color: Colors.teal),
                        ))
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
