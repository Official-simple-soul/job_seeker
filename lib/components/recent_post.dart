import 'package:flutter/material.dart';
import 'package:job_seeker_/data/data.dart';
import 'recent_post_card.dart';

class RecentPost extends StatelessWidget {
  const RecentPost({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: jobs.length,
        itemBuilder: (context, index) {
          final job = jobs[index];

          return RecentPostCard(
            companyLogo: job['companyLogo'],
            jobTitle: job['jobTitle'],
            jobType: job['type'],
            salary: job['salary'],
            companyName: job['companyName'],
            location: job['location'],
          );
        });
  }
}
