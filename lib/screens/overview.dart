import 'package:flutter/material.dart';
import 'package:lodseriet/models/pilot_job.dart';
import 'package:lodseriet/widgets/job_list_widget.dart';

class Overview extends StatelessWidget {
  final List<PilotJob> jobs;

  const Overview({super.key, required this.jobs});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Overtid'),
      ),
      body: PilotJobListWidget(jobs: jobs),
    );
  }
}
