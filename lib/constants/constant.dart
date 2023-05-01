import 'package:flutter/material.dart';
import 'package:task_3/models/group.dart';
import 'package:task_3/models/symptom.dart';

const backColor = Color(0xFFF8F8F8);
const secondaryColor = Color(0xFFF05A76);
const cardPrimaryColor = Color(0xFFFFFFFF);
const cardSecondaryColor = Color(0xFFEEEEEE);

const textPrimaryColor = Colors.black;
const textSecondaryColor = Colors.black38;

const groups = [
  Group(title: 'Cycle', img: 'assets/icons/group1.png'),
  Group(title: 'My Health', img: 'assets/icons/group2.png'),
  Group(title: 'Meditation', img: 'assets/icons/group3.png'),
  Group(title: 'Shop', img: 'assets/icons/group4.png'),
];

const navItems = [
  'assets/icons/nav1.png',
  'assets/icons/nav2.png',
  'assets/icons/nav3.png',
  'assets/icons/nav4.png',
];

const categoryImg = 'assets/icons/category.png';

final boxShadow = [
  BoxShadow(
    color: Colors.grey[400]!,
    blurRadius: 20,
    offset: const Offset(0, 3),
  ),
  const BoxShadow(
    color: Colors.white,
    blurRadius: 20,
    offset: Offset(0, -3),
  ),
];

const demoDetailText = """Free unlimited consultation with our panel doctor
Up to 15% discount on Home Diagnostic sample collection
 \$15000 dicount on health & life insurance.""";

final symptomsList = [
  Symptom(
    id: '1',
    title: 'Head',
    subSymptoms: [
      const SubSymptom(
        id: '1',
        icon: "https://img.icons8.com/?size=512\u0026id=53377\u0026format=png",
        title: "Headache",
      ),
      const SubSymptom(
        id: '2',
        icon: "https://img.icons8.com/?size=512\u0026id=53377\u0026format=png",
        title: "Migrane",
      ),
      const SubSymptom(
        id: '3',
        icon: "https://img.icons8.com/?size=512\u0026id=53377\u0026format=png",
        title: "Dizziness",
      ),
      const SubSymptom(
        id: '4',
        icon: "https://img.icons8.com/?size=512\u0026id=53377\u0026format=png",
        title: " Synus",
      ),
    ],
  ),
  Symptom(
    id: '2',
    title: 'Abdomen',
    subSymptoms: [
      const SubSymptom(
        id: '1',
        icon: "https://img.icons8.com/?size=512\u0026id=1800\u0026format=png",
        title: "Bloating",
      ),
      const SubSymptom(
        id: '2',
        icon: "https://img.icons8.com/?size=512\u0026id=1800\u0026format=png",
        title: "Constipation",
      ),
      const SubSymptom(
        id: '3',
        icon: "https://img.icons8.com/?size=512\u0026id=1800\u0026format=png",
        title: "Diarrhea",
      ),
    ],
  ),
];
