import 'package:cuorse/core/constant/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Settings extends StatelessWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Settings"),
        backgroundColor: AppColor.primary,
          elevation: 0,
      ),
      body: Container(
        width: double.infinity,
        padding: EdgeInsets.only(left: 10,right: 10,top: 20,bottom: 20),
        child: Column(
          children: [
            ListTile(
              title: Text('Language'),
              subtitle: Text("System Language"),
              leading: Icon(Icons.language),
              trailing: Switch(
                onChanged: (bool value) {
                },
                value: false,

              )
            ),
            ListTile(
                title: Text('Theme Mode'),
                subtitle: Text("System Theme"),
                leading: Icon(Icons.brightness_medium),
                trailing: Switch(
                  onChanged: (bool value) {
                  },
                  value: false,

                )
            ),
            ListTile(
                title: Text('Contact Me'),
                subtitle: Text("WhatsApp"),
                leading: Icon(Icons.whatsapp),

            ),
            ListTile(
              title: Text('About Us'),
              subtitle: Text("ALbara & Abdu Development") ,
              leading: Icon(Icons.contact_support),

            ),
            Container(
              padding: EdgeInsets.only(bottom: 10,top: 200),
              child: InkWell
                (
                child: ListTile(
                title:  Text('LogOut'),
                leading: Icon(Icons.logout),
                onTap: (){
                  Get.offAndToNamed("/tentative");
                },
                ),
              ) ,
            )
          ],
        ),
      )
    );
  }
}
