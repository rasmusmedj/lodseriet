import 'package:flutter/material.dart';
import 'package:lodseriet/models/pilot_job.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class JobDetailScreen extends StatelessWidget {
  final PilotJob job;
  final Function() handleJob;

  const JobDetailScreen({super.key, required this.job, required this.handleJob});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Overtid'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Dato: ${job.startDate.toString()}',
                style: const TextStyle(fontSize: 18)),
            const SizedBox(height: 8),
            Text('Skib: ${job.shipName}',
                style: const TextStyle(fontSize: 18)),
            const SizedBox(height: 8),
            Text('IMO: ${job.imoNumber}',
                style: const TextStyle(fontSize: 18)),
            const SizedBox(height: 8),
            Text('isHandled: ${job.isHandled.toString()}',
                style: const TextStyle(fontSize: 18)),
            const SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                    'Vil du godkende overtiden på ${job.surplusHours} timer',
                    style: const TextStyle(fontSize: 18)),
              ],
            ),
            const SizedBox(height: 8),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  IconButton(
                    icon: Icon(
                      Icons.check,
                      color: job.isHandled ? Colors.green : Colors.green,
                      size: 48,
                    ),
                    onPressed: () => handleJob, // Toggle the status when pressed
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.close,
                      color: !job.isHandled ? Colors.red : Colors.red,
                      size: 48,
                    ),
                    onPressed: () => handleJob, // Toggle the status when pressed
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
