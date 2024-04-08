import 'package:flutter/material.dart';
import 'package:lodseriet/widgets/pilot_job_widget.dart';
import 'package:lodseriet/models/pilot_job.dart';

class PilotJobListWidget extends StatelessWidget {
  final List<PilotJob> jobs;

  const PilotJobListWidget({super.key, required this.jobs});

  Widget _buildTableHeader() {
    return Table(
      columnWidths: const {
        0: FlexColumnWidth(2),
        1: FlexColumnWidth(3),
        2: FixedColumnWidth(80),
        3: FixedColumnWidth(64),
        4: FixedColumnWidth(40),
      },
      children: const [
        TableRow(
          children: [
            Text(
              'Dato',
              style: TextStyle(fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            Text(
              'Skib',
              style: TextStyle(fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            Text(
              'IMO',
              style: TextStyle(fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            Text(
              'Timer',
              style: TextStyle(fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            Text(
              '',
              style: TextStyle(fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        // Headers
        _buildTableHeader(),
        // List of items
        Expanded(
          child: ListView.builder(
            itemCount: jobs.length,
            itemBuilder: (context, index) {
              return Column(
                children: [
                  PilotJobWidget(job: jobs[index],),
                  const Divider(
                      height: 1, color: Colors.grey), // Dividers between rows
                ],
              );
            },
          ),
        ),
      ],
    );
  }
}
