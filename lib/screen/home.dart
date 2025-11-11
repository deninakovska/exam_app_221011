import 'package:flutter/material.dart';
import '../models/exam_model.dart';
import '../widgets/exam_grid.dart';

class ExamListPage extends StatelessWidget {
  const ExamListPage({super.key});

  @override
  Widget build(BuildContext context) {
    final exams = [
      Exam(
          subject: 'Калкулус',
          date: DateTime(2025, 11, 3),
          time: Exam.createTime(13,30),
          location: 'Амфитеатар Финки'
      ),
      Exam(
          subject: 'Бази на податоци',
          date: DateTime(2025, 11, 5),
          time: Exam.createTime(10,30),
          location: 'Лабораторија 13'
      ),
      Exam(
          subject: 'Дискретна математика',
          date: DateTime(2025, 11, 17),
          time: Exam.createTime(10,0),
          location: 'ТМФ 215'
      ),
      Exam(
          subject: 'Сајбер безбеност',
          date: DateTime(2025, 11, 17),
          time:Exam.createTime(15,0),
          location: 'Амфитеатар 1'
      ),
      Exam(
          subject: 'Веројатност и статистика',
          date: DateTime(2025, 11, 24),
          time: Exam.createTime(9,30),
          location: 'Б2.1'
      ),
      Exam(
          subject: 'Вештачка интелигенција',
          date: DateTime(2025, 11, 18),
          time:Exam.createTime(14,45),
          location: 'Б2.2'
      ),
      Exam(
          subject: 'Оперативни системи',
          date: DateTime(2025, 11, 19),
          time: Exam.createTime(11,30),
          location: 'ТМФ 117'
      ),
      Exam(
          subject: 'Вовед во наука за податоците',
          date: DateTime(2025, 11, 20),
          time: Exam.createTime(8,0),
          location: 'Амфитеатар Финки'
      ),
      Exam(
          subject: 'Компјутерски мрежи и безбедност',
          date: DateTime(2025, 11, 4),
          time: Exam.createTime(13,0),
          location: 'Б3.1'
      ),
      Exam(
          subject: 'Веб програмирање',
          date: DateTime(2025, 11, 25),
          time: Exam.createTime(8,30),
          location: 'Б3.2'
      ),
    ];
    exams.sort((a, b) => a.dateTime.compareTo(b.dateTime));
    return Scaffold(
      appBar: AppBar(
        title: const Text('Распоред на испити - 221011'),
        backgroundColor: Colors.indigo,
        foregroundColor: Colors.white,
      ),
      body: Column(
          children: [
      Expanded(
        child: ExamGrid(exams: exams),
      ),
            Container(
            width: double.infinity,
            padding: const EdgeInsets.all(14),
            margin: const EdgeInsets.all(14),
            decoration: BoxDecoration(
              color: Colors.indigo[50],
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: Colors.indigo, width: 2),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Вкупно испити:',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.indigo,
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                    color: Colors.indigo,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Text(
                    '${exams.length}',
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),

        ],
      ),
    );
  }
}