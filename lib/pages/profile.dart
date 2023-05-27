import 'package:flutter/material.dart';
import 'package:job_seeker_/components/top_title.dart';
import 'package:job_seeker_/pages/editprofile.dart';
import 'package:job_seeker_/pages/home.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 236, 239, 241),
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                TopTitle(titleText: 'Profile'),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 30),
                  child: Column(
                    children: [
                      Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 198, 197, 197),
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                                image: AssetImage('img/profileImg.png'))),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Adam Shafi',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontWeight: FontWeight.w800, fontSize: 25),
                        ),
                      ),
                    ],
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    ProfileDetails(
                      labelText: 'AShafi',
                      label: 'User Name',
                    ),
                    ProfileDetails(
                      labelText: 'Adam Shafi',
                      label: 'Account Name',
                    ),
                    ProfileDetails(
                      labelText: '01, James Crescent, London',
                      label: 'Address',
                    ),
                    ProfileDetails(
                      labelText: '+23466778877',
                      label: 'Phone Number',
                    ),
                    ProfileDetails(
                      labelText: 'shafi_adams@mail.com',
                      label: 'Email Addres',
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 50),
                  child: Container(
                    width: 100,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 166, 27, 27),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8),
                      child: Center(
                        child: Text(
                          'Log Out',
                          style: TextStyle(color: Colors.white, fontSize: 17),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}

class ProfileDetails extends StatelessWidget {
  ProfileDetails({super.key, required this.labelText, required this.label});

  final String label;
  final String labelText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => EditProfile(
                        label: label,
                        labelText: labelText,
                      )));
        },
        child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              boxShadow: [
                BoxShadow(
                    color: Color.fromARGB(255, 217, 216, 216),
                    offset: Offset(1.0, 1.0),
                    blurRadius: 1.0,
                    spreadRadius: 1.0),
              ],
              color: Colors.white,
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          labelText,
                          style: TextStyle(fontSize: 18),
                        ),
                        Text(
                          label,
                          style: TextStyle(color: Colors.grey),
                        )
                      ],
                    ),
                  ),
                  Icon(Icons.arrow_forward_outlined)
                ],
              ),
            )),
      ),
    );
  }
}
