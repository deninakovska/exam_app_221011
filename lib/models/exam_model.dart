class Exam {
  final String subject;
  final DateTime date;
  final DateTime time;
  final String location;

  Exam({
    required this.subject,
    required this.date,
    required this.time,
    required this.location,
  });
  static DateTime createTime(int hour, int minute) {
    return DateTime(0, 0, 0, hour, minute);
  }
  String get formattedDate {
    return '${date.day.toString().padLeft(2, '0')}.${date.month.toString().padLeft(2, '0')}.${date.year}';
  }

  String get formattedTime {
    return '${time.hour.toString().padLeft(2, '0')}:${time.minute.toString().padLeft(2, '0')}';
  }

  DateTime get dateTime {
    return DateTime(
      date.year,
      date.month,
      date.day,
      time.hour,
      time.minute,
    );
  }

  bool get hasPassed {
    return dateTime.isBefore(DateTime.now());
  }
}
