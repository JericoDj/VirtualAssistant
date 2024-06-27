class Task {
  String title;
  String description;
  String assignedAssistant;
  DateTime? startDate;
  DateTime? endDate;
  String recurrence;
  String priority;
  DateTime? dueDate;

  Task({
    required this.title,
    required this.description,
    required this.assignedAssistant,
    this.startDate,
    this.endDate,
    required this.recurrence,
    required this.priority,
    this.dueDate,
  });

  bool isTodayTask() {
    final now = DateTime.now();
    return startDate?.day == now.day && startDate?.month == now.month && startDate?.year == now.year;
  }
}
