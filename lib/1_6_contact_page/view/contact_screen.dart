import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart' as launcher;

class ContactScreen extends StatelessWidget {
  const ContactScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(30, 60, 0, 0),
            child: Row(
              children: [
                Icon(
                  Icons.arrow_back_ios_new,
                  size: 28,
                  color: Colors.blue,
                ),
                Text(
                  "  Contact Us",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                      color: Colors.blue),
                )
              ],
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Text(
            "If you have any queries, get in touch with\n         us.We will be happy to help you! ",
            style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.bold,
                color: Colors.black54),
          ),
          SizedBox(
            height: 50,
          ),
          //call
          InkWell(
            onTap: () {
              Uri uri=Uri.parse('tel:+91 6353600958');
              launcher.launchUrl(uri);
            },
            child: Container(
              height: 70,
              width: 300,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.blue)),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    Icon(
                      Icons.phone_android_rounded,
                      size: 35,
                      color: Colors.blue,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      "+91 6353600958",
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
                    )
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          //mail
          InkWell(
            onTap: () { 
              Uri uri=Uri.parse('mailto:dkpatel3116@gmail.com');
              launcher.launchUrl(uri);
            },
            child: Container(
              height: 70,
              width: 300,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.blue)),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    Icon(
                      Icons.mail_outline_outlined,
                      size: 35,
                      color: Colors.blue,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      "info@gmail.com",
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
                    )
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          //sms
          InkWell(
            onTap: () {
              Uri uri=Uri.parse('sms:+91 6353600958');
              launcher.launchUrl(uri);
            },
            child: Container(
              height: 70,
              width: 300,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.blue)),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    Icon(
                      Icons.sms_failed_outlined,
                      size: 35,
                      color: Colors.blue,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      "SMS",
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
                    )
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            height: 70,
            width: 300,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.blue)),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Center(
                  child: Text(
                "Social Media",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25,
                color: Colors.blue),
              )),
            ),
          ),
          SizedBox(height: 20,),
          //insta
          InkWell(
            onTap: () {
              Uri uri=Uri.parse('https://www.instagram.com/');
              launcher.launchUrl(uri);
            },
            child: Container(
              height: 70,
              width: 300,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.blue)),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    Image.asset("assets/img/images.jpg",height: 40,),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      "Instagram",
                      style:
                      TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
                    )
                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: 10,),
          //github
          InkWell(
            onTap: () {
              Uri uri=Uri.parse('https://github.com/DarshanPatel311');
              launcher.launchUrl(uri);
            },
            child: Container(
              height: 70,
              width: 300,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.blue)),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    Image.asset("assets/img/github.png",height: 40,),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      "Github",
                      style:
                      TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
                    )
                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: 10,),
          //LinkdIn
          InkWell(
            onTap: () {
              Uri uri=Uri.parse('https://www.linkedin.com/in/darshan-patel-9a543b280/');
              launcher.launchUrl(uri);
            },
            child: Container(
              height: 70,
              width: 300,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.blue)),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    Image.asset("assets/img/linkedin.webp",height: 40,),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      "LinkedIn",
                      style:
                      TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
                    )
                  ],
                ),
              ),
            ),
          ),

        ],
      ),
    );
  }
}
