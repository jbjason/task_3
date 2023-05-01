class Symptom {
  final String id;
  final String title;
  final List<SubSymptom> subSymptoms;
  Symptom({
    required this.id,
    required this.title,
    required this.subSymptoms,
  });

  Symptom copyWith({
    String? id,
    String? title,
    List<SubSymptom>? subSymptoms,
  }) {
    return Symptom(
      id: id ?? this.id,
      title: title ?? this.title,
      subSymptoms: subSymptoms ?? this.subSymptoms,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'title': title,
      'subSymptoms': subSymptoms.map((x) => x.toMap()).toList(),
    };
  }

  factory Symptom.fromMap(Map<String, dynamic> map) {
    return Symptom(
      id: map['id'] as String,
      title: map['title'] as String,
      subSymptoms: List<SubSymptom>.from(
        (map['subSymptoms'] as List<int>).map<SubSymptom>(
          (x) => SubSymptom.fromMap(x as Map<String, dynamic>),
        ),
      ),
    );
  }
}

class SubSymptom {
  final String id;
  final String title;
  final String icon;
  const SubSymptom({
    required this.id,
    required this.title,
    required this.icon,
  });

  SubSymptom copyWith({
    String? id,
    String? title,
    String? icon,
  }) {
    return SubSymptom(
      id: id ?? this.id,
      title: title ?? this.title,
      icon: icon ?? this.icon,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'title': title,
      'icon': icon,
    };
  }

  factory SubSymptom.fromMap(Map<String, dynamic> map) {
    return SubSymptom(
      id: map['id'] as String,
      title: map['title'] as String,
      icon: map['icon'] as String,
    );
  }
}
