import 'package:flutter/material.dart';
import 'package:job_seeker_/components/custom_button.dart';
import 'package:job_seeker_/components/drop_down.dart';
import 'package:job_seeker_/components/file_upload.dart';
import 'package:job_seeker_/profile.dart';

List<String> allCountries = [
  'Afghanistan',
  'Albania',
  'Algeria',
  'Andorra',
  'Angola',
  'Antigua and Barbuda',
  'Argentina',
  'Armenia',
  'Australia',
  'Austria',
  'Azerbaijan',
  'Bahamas',
  'Bahrain',
  'Bangladesh',
  'Barbados',
  'Belarus',
  'Belgium',
  'Belize',
  'Benin',
  'Bhutan',
  'Bolivia',
  'Bosnia and Herzegovina',
  'Botswana',
  'Brazil',
  'Brunei',
  'Bulgaria',
  'Burkina Faso',
  'Burundi',
  'Cambodia',
  'Cameroon',
  'Canada',
  'Cape Verde',
  'Central African Republic',
  'Chad',
  'Chile',
  'China',
  'Colombia',
  'Comoros',
  'Congo, Democratic Republic of the',
  'Congo, Republic of the',
  'Costa Rica',
  'Côte d\'Ivoire',
  'Croatia',
  'Cuba',
  'Cyprus',
  'Czech Republic',
  'Denmark',
  'Djibouti',
  'Dominica',
  'Dominican Republic',
  'East Timor',
  'Ecuador',
  'Egypt',
  'El Salvador',
  'England',
  'Equatorial Guinea',
  'Eritrea',
  'Estonia',
  'Eswatini',
  'Ethiopia',
  'Federated States of Micronesia',
  'Fiji',
  'Finland',
  'France',
  'Gabon',
  'Gambia',
  'Georgia',
  'Germany',
  'Ghana',
  'Greece',
  'Grenada',
  'Guatemala',
  'Guinea',
  'Guinea-Bissau',
  'Guyana',
  'Haiti',
  'Honduras',
  'Hungary',
  'Iceland',
  'India',
  'Indonesia',
  'Iran',
  'Iraq',
  'Ireland',
  'Israel',
];

const List<String> list = <String>['One', 'Two', 'Three', 'Four'];

class ApplyPage extends StatefulWidget {
  const ApplyPage({super.key, required this.jobTitle});

  final String jobTitle;

  @override
  State<ApplyPage> createState() => _ApplyPageState();
}

class _ApplyPageState extends State<ApplyPage> {
  String selectedCountry = allCountries.first;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 236, 239, 241),
        title: Text(
          'Apply for ${widget.jobTitle}',
          style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
        ),
        iconTheme: IconThemeData(size: 18),
      ),
      backgroundColor: Color.fromARGB(255, 236, 239, 241),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Container(
              height: 80,
              child: Row(
                children: [
                  Expanded(
                      child: ProfileDetails(
                          labelText: 'Adam', label: 'First Name')),
                  SizedBox(
                    width: 16,
                  ),
                  Expanded(
                      child: ProfileDetails(
                          labelText: 'Shafi', label: 'Last Name')),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ProfileDetails(
                labelText: 'helloben@mail.com', label: 'Email Address'),
            SizedBox(
              height: 20,
            ),
            DropDown(listValue: allCountries, dropText: 'Select a country:',),
            SizedBox(
              height: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Message',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 8),
                Container(
                  height: 100,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: TextFormField(
                    maxLines: null,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                      hintText: 'Enter your message...',
                      hintStyle: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 40,),
            FileUploadWidget(),
            Expanded(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                    child:
                        CustomButton(buttonText: 'Apply Now', onPress: () {})),
              ],
            ))
          ],
        ),
      )),
    );
  }
}
