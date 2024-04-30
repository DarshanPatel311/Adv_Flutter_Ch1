import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


import '../provider/theme_provider.dart';

class ChangeTheme extends StatelessWidget {
  const ChangeTheme({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 50,),
            Row(
              children: [
                SizedBox(width: 5,),
                Icon(Icons.arrow_back_ios_new),
                Spacer(),
                Icon(Icons.add_circle_outline_rounded,size: 28,),
                SizedBox(width: 10,),
              ],
            ),
            SizedBox(height: 30,),
            CircleAvatar(

              backgroundColor: Colors.black12,
              radius: 100,
              backgroundImage: AssetImage('assets/img/Avtra.png'),
            ),
            SizedBox(height: 5,),
            Text("Darshan Patel",style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold
            ),),
            SizedBox(height: 40,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
              child: Row(
                children: [

                  Provider.of<ThemeProvider>(context,listen: true).isDark? Icon(Icons.dark_mode , color: Colors.yellow, size: 30,):Icon(Icons.light_mode,color: Colors.purple, size: 30,),
                  SizedBox(width:Provider.of<ThemeProvider>(context,listen: true).isDark?25:35,),
                  Text(Provider.of<ThemeProvider>(context,listen: true).isDark?"Light Mode":"Dark Mode",style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20
                  ),),
                  Spacer(),
                  Switch(value: Provider.of<ThemeProvider>(context,listen: true).isDark,inactiveTrackColor: Colors.purple,activeColor:  Colors.yellow,onChanged: (value) {
                    Provider.of<ThemeProvider>(context,listen: false).ChangeTheme(value);

                  },)
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
              child: Row(
                children: [
                  Icon(Icons.grid_on_sharp,size: 30,color:Provider.of<ThemeProvider>(context,listen: true). isDark?Colors.blue:Colors.green,),
                  SizedBox(width: 25,),
                  Text("Story",style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20
                  ),),


                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
              child: Row(
                children: [
                  Icon(Icons.settings,size: 30,color: Provider.of<ThemeProvider>(context,listen: true).isDark?Colors.pink:Colors.blue,),
                  SizedBox(width: 25,),
                  Text("Settings and Privacy",style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20
                  ),),


                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
              child: Row(
                children: [
                  Icon(Icons.message_outlined,size: 30,color: Provider.of<ThemeProvider>(context,listen: true).isDark?Colors.yellow.shade300:Colors.deepOrange.shade200,),
                  SizedBox(width: 25,),
                  Text("Help Center",style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20
                  ),),


                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
              child: Row(
                children: [
                  Icon(Icons.notifications,size: 30,color: Provider.of<ThemeProvider>(context,listen: true).isDark?Colors.amber:Colors.purple,),
                  SizedBox(width: 25,),
                  Text("Notification",style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20
                  ),),



                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
