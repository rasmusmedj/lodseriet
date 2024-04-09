import 'package:flutter/material.dart';
import 'package:lodseriet/models/pilot_job.dart';
import 'package:lodseriet/widgets/job_list_widget.dart';

class Overview extends StatelessWidget {

  const Overview({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Overtid'),
      ),
      body: PilotJobListWidget(),
    );
  }
}
