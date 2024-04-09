import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:lodseriet/data/dummy_data.dart';
import 'package:lodseriet/models/pilot_job.dart';

final jobListProvider =
      StateNotifierProvider<JobProvider, List<PilotJob>>((ref) {
    return JobProvider(dummyData);
  });

class JobProvider extends StateNotifier<List<PilotJob>> {
  JobProvider(super.state);

  void handleJob(PilotJob job) {
    job.isHandled = !job.isHandled;
    state = [...state];
    print("object");
  }
}
