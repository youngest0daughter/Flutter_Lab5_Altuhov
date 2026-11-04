import 'dart:math';
import 'package:flutter/material.dart';
import 'package:facts_app_altuhov/fact_card.dart';

final Random numberGenerator = Random();

class FactsScreen extends StatefulWidget {
  const FactsScreen({super.key});

  @override
  State<FactsScreen> createState() => _FactsScreenState();
}

class _FactsScreenState extends State<FactsScreen> {
  int activeIndex = 0;

  final List<String> interestingFacts = [
    'Крысы смеются от щекотки',
    'Жирафы чистят глаза своим 45-сантиметровым языком',
    'Кролики могут видеть за спиной не поворачивая головы',
  ];

  void changeRandomFact() {
    setState(() {
      activeIndex = numberGenerator.nextInt(3);
    });
  }

  @override
  Widget build(BuildContext context) {
    String currentImage = 'assets/images/fact_${activeIndex + 1}.png';
    String currentText = interestingFacts[activeIndex];

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        FactCard(
          imageSource: currentImage,
          factDescription: currentText,
        ),
        const SizedBox(height: 35),
        ElevatedButton(
          onPressed: changeRandomFact,
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.tealAccent,
            foregroundColor: Colors.black87,
            padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 14),
            textStyle: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          child: const Text('Следующий факт'),
        ),
      ],
    );
  }
}