import 'package:flutter/material.dart';

import '../models/exam_model.dart';
import '../widgets/detail_data.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final exam = ModalRoute.of(context)!.settings.arguments as Exam;
    return Scaffold(
      backgroundColor: Colors.blue.shade50,
      appBar: AppBar(
        title: Text(exam.subject.toUpperCase()),
        centerTitle: true,
        backgroundColor: Colors.indigo,
        foregroundColor: Colors.white,
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 30),
            DetailData(exam: exam),
          ],
        ),
      ),
    );
  }
}

