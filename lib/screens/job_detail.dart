import 'package:flutter/material.dart';
import 'package:lodseriet/models/pilot_job.dart';

class JobDetailScreen extends StatelessWidget {
  final PilotJob job;

  const JobDetailScreen({super.key, required this.job});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Overtid'), // The title from your wireframe
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Dato: ${job.startDate.toString()}', style: const TextStyle(fontSize: 18)),
            const SizedBox(height: 8),
            Text('Skib: ${job.shipName}', style: const TextStyle(fontSize: 18)),
            const SizedBox(height: 8),
            Text('IMO: ${job.imoNumber}', style: const TextStyle(fontSize: 18)),
            const SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text('Vil du godkende overtiden på ${job.surplusHours} timer', style: const TextStyle(fontSize: 18)),
              ],
            ),
            const SizedBox(height: 8),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  IconButton(
                    icon: const Icon(Icons.check, color: Colors.green, size: 48),
                    onPressed: () {
                      // Handle the check (isHandled) action
                    },
                  ),
                  IconButton(
                    icon: const Icon(Icons.close, color: Colors.red, size: 48),
                    onPressed: () {
                      // Handle the close action
                    },
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
