import 'package:flutter/material.dart';

import '../models/exam_model.dart';

class ExamCard extends StatelessWidget {
  final Exam exam;

  const ExamCard({super.key, required this.exam});

  @override
  Widget build(BuildContext context) {
    final bool hasPassed = exam.hasPassed;

    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, "/details", arguments: exam);
      },
      child: Card(
      color: hasPassed ? Colors.grey[500] : Colors.blue[50],
      shape: RoundedRectangleBorder(
        side: const BorderSide(color: Colors.indigo, width: 3),
        borderRadius: BorderRadius.circular(10),
      ),
      elevation: 4,
      margin: const EdgeInsets.all(8),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              exam.subject,
              style: const TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 6),
            Text(
              "Локација: ${exam.location}",
              style: const TextStyle(fontSize: 10),
            ),
            const SizedBox(height: 6),
            Row(
              children: [
                const Icon(Icons.calendar_today_outlined, size: 14, color: Colors.black),
                const SizedBox(width: 6),
                Text(
                  exam.formattedDate,
                  style: const TextStyle(fontSize: 12),
                ),
              ],
            ),
            const SizedBox(height: 4),
            Row(
              children: [
                Icon(
                  Icons.access_time_outlined,
                  size: 14,
                  color: hasPassed ? Colors.red : Colors.black,
                ),
                const SizedBox(width: 6),
                Text(
                  hasPassed ? 'Испитот помина' : exam.formattedTime,
                  style: TextStyle(
                    fontSize: 12,
                    color: hasPassed ? Colors.red : Colors.black,
                    fontWeight: hasPassed ? FontWeight.bold : FontWeight.normal,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    ),
    );
  }
}
