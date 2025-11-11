import 'package:flutter/material.dart';

import '../models/exam_model.dart';

class DetailData extends StatelessWidget {
  final Exam exam;

  const DetailData({super.key, required this.exam});

  @override
  Widget build(BuildContext context) {
    final bool hasPassed = exam.hasPassed;
    final String timeRemaining = _calculateTimeRemaining(exam.dateTime);

    return Container(
      height: 450,
      width: double.infinity,
      padding: const EdgeInsets.all(25),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Информации за испит',
            style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: const [
                  Icon(Icons.school_outlined, size: 20, color: Colors.black),
                  SizedBox(width: 8),
                  Text('Предмет:',
                      style: TextStyle(color: Colors.black, fontSize: 18)),
                ],
              ),
              Text(
                exam.subject,
                style: const TextStyle(
                    fontWeight: FontWeight.bold, fontSize: 18),
              ),
            ],
          ),
          const SizedBox(height: 12),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: const [
                  Icon(Icons.calendar_today_outlined, size: 20,
                      color: Colors.black),
                  SizedBox(width: 8),
                  Text('Датум:',
                      style: TextStyle(color: Colors.black, fontSize: 18)),
                ],
              ),
              Text(
                exam.formattedDate,
                style: const TextStyle(
                    fontWeight: FontWeight.bold, fontSize: 18),
              ),
            ],
          ),
          const SizedBox(height: 12),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(
                    Icons.access_time_filled,
                    size: 20,
                    color: hasPassed ? Colors.red : Colors.black,
                  ),
                  const SizedBox(width: 8),
                  const Text('Час:',
                      style: TextStyle(color: Colors.black, fontSize: 18)),
                ],
              ),
              Text(
                hasPassed ? 'Испитот помина' : exam.formattedTime,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: hasPassed ? Colors.red : Colors.black,
                ),
              ),
            ],
          ),
          const SizedBox(height: 12),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: const [
                  Icon(Icons.location_on_outlined, size: 20,
                      color: Colors.black),
                  SizedBox(width: 8),
                  Text('Локација:',
                      style: TextStyle(color: Colors.black, fontSize: 18)),
                ],
              ),
              Text(
                exam.location,
                style: const TextStyle(
                    fontWeight: FontWeight.bold, fontSize: 18),
              ),
            ],
          ),
          const SizedBox(height: 12),
          if (!hasPassed)
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: const [
                    SizedBox(width: 8),
                    Text('Преостанува:',
                        style: TextStyle(color: Colors.black, fontSize: 18)),
                  ],
                ),
                Text(
                  timeRemaining,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 18),
                ),
              ],
            ),
        ],
      ),
    );
  }
}
String _calculateTimeRemaining(DateTime examDateTime) {
  final now = DateTime.now();
  final difference = examDateTime.difference(now);
  final days = difference.inDays;
  final hours = difference.inHours.remainder(24);

  return '$days дена, $hours часа';
}
