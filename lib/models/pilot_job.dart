class PilotJob {
  int id;
  DateTime startDate;
  String shipName;
  int imoNumber;
  double surplusHours;
  bool isHandled;

  PilotJob({
    required this.id,
    required this.startDate,
    required this.shipName,
    required this.imoNumber,
    required this.surplusHours,
    required this.isHandled,
  });
}