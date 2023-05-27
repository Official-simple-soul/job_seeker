import 'package:flutter/material.dart';
import 'package:job_seeker_/applypage.dart';
import 'package:job_seeker_/components/custom_button.dart';
import 'package:job_seeker_/components/drop_down.dart';
import 'package:job_seeker_/components/filter_option_card.dart';

List<List<String>> categories = [
  [
    'Product Design',
    'Web Development',
    'Cad',
    'Software Engineering',
    'Project Management'
  ],
  [
    '\$1k-\$2k',
    '\$3k-\$5k',
    '\$6k-\$8k',
    '\$9k-\$10k',
  ]
];

void filterSlider(context) {
  showModalBottomSheet(
    backgroundColor: Color.fromARGB(255, 236, 239, 241),
    context: context,
    isScrollControlled: true, // Set isScrollControlled to true
    builder: (BuildContext context) {
      return SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height *
              0.8, // Set desired height (80% of the screen height)
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
            child: Column(
              children: [
                Text(
                  'Set Filters',
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.w900),
                ),
                SizedBox(
                  height: 30,
                ),
                DropDown(
                  listValue: categories[0],
                  dropText: 'Category',
                ),
                SizedBox(
                  height: 30,
                ),
                SizedBox(
                  height: 100,
                  child: Row(
                    children: [
                      Expanded(
                        child: DropDown(
                          listValue: allCountries,
                          dropText: 'Location',
                        ),
                      ),
                      SizedBox(
                        width: 25,
                      ),
                      Expanded(
                        child: DropDown(
                          listValue: categories[1],
                          dropText: 'Salary',
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Text('Job Type'),
                SizedBox(
                  height: 20,
                ),
                FilterOptionCard(),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Container(
                      height: 50,
                      child: Row(
                        children: [
                          Expanded(
                            child: CustomButton(
                                buttonText: 'Apply Filter', onPress: () {}),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    },
  );
}
