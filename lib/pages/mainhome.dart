import 'package:flutter/material.dart';
import 'package:job_seeker_/components/filter_slider.dart';
import '../components/recent_post.dart';
import '../components/inputs.dart';
import '../components/popular_jobs.dart';

class MainHome extends StatelessWidget {
  const MainHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 236, 239, 241),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    filterSlider(context);
                  },
                  child: Container(
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('img/Filter.png'))),
                    width: 50,
                    height: 50,
                  ),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    decoration: BoxDecoration(
                        // color: Colors.grey,
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                            image: AssetImage('img/profileImg.png'))),
                    width: 50,
                    height: 50,
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                    // Adjust the width as needed
                    child: InputsBox(
                  placeholder: 'Search here...',
                )),
                const SizedBox(width: 15.0),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    decoration: BoxDecoration(
                        color: Color(0xFF291150),
                        borderRadius: BorderRadius.circular(8)),
                    width: 50,
                    height: 50,
                    child: Center(
                        child: Icon(
                      Icons.search,
                      color: const Color.fromARGB(255, 230, 229, 229),
                      size: 30,
                    )),
                  ),
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Popular Job',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Text('Show All'),
              ],
            ),
          ),
          Container(
            height: 150,
            child: PopularJobs(),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Recent Post',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Text('Show All'),
              ],
            ),
          ),
          Expanded(
            child: RecentPost(),
          ),
        ]),
      )),
    );
  }
}
