import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:lodseriet/models/pilot_job.dart';
import 'package:lodseriet/screens/job_detail_screen.dart';

class PilotJobWidget extends StatelessWidget {
  final PilotJob job;
  final Function() handleJob;

  const PilotJobWidget(
      {super.key, required this.job, required this.handleJob});

  @override
  Widget build(BuildContext context) {
    // Formatting the date as YY/MM/DD
    String formattedDate = DateFormat('yy/MM/dd').format(job.startDate);

    return InkWell(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => JobDetailScreen(
              job: job,
              handleJob: handleJob,
            ),
          ),
        );
      },
      child: Table(
        columnWidths: const {
          0: FlexColumnWidth(2),
          1: FlexColumnWidth(3),
          2: FixedColumnWidth(80),
          3: FixedColumnWidth(64),
          4: FixedColumnWidth(40),
        },
        border: TableBorder.symmetric(
          inside: BorderSide(
              color: Colors.grey.shade800,
              width: 0.5), // For less prominent grid lines
        ),
        children: [
          TableRow(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 50),
                child:
                    Text(formattedDate, style: const TextStyle(fontSize: 16)),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 50),
                child: Text(
                  job.shipName.length > 10
                      ? '${job.shipName.substring(0, 12)}...'
                      : job.shipName,
                  style: const TextStyle(fontSize: 16),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 50),
                child: Text(
                  job.imoNumber.toString(),
                  style: const TextStyle(fontSize: 16),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 50),
                child: Text(
                  '${job.surplusHours}',
                  style: const TextStyle(fontSize: 16),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 50),
                child: Icon(
                  job.isHandled
                      ? Icons.check_box_rounded
                      : Icons.check_box_outline_blank,
                  color: job.isHandled ? Colors.green : Colors.grey,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
