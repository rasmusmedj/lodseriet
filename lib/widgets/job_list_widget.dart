import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:lodseriet/job_provider.dart';
import 'package:lodseriet/widgets/pilot_job_widget.dart';
import 'package:lodseriet/models/pilot_job.dart';

class PilotJobListWidget extends ConsumerStatefulWidget {
  const PilotJobListWidget({super.key});

  @override
  _PilotJobListWidgetState createState() => _PilotJobListWidgetState();
}

class _PilotJobListWidgetState extends ConsumerState<PilotJobListWidget> {
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
    final jobs = ref.watch(jobListProvider);
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
                  PilotJobWidget(
                    job: jobs[index],
                    handleJob:
                    () => print("object")
                        // () => ref.read(jobListProvider.notifier).handleJob(jobs[index])
                      // ref.read(jobListProvider.notifier).handleJob(jobs[index]);
                    ,
                  ),
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
