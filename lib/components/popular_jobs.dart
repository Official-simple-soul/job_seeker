import 'package:flutter/material.dart';
import 'popular_jobs_card.dart';
import '../data/data.dart';

class PopularJobs extends StatelessWidget {
  const PopularJobs({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: jobs.length,
        itemBuilder: (context, index) {
          final job = jobs[index];

          return PopularJobCard(
            companyLogo: job['companyLogo'],
            companyName: job['companyName'],
            jobTitle: job['jobTitle'],
            jobType: job['type'],
            salary: job['salary'],
            location: job['location'],
          );
        });
  }
}
