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

  factory SubSymptom.fromMap(dynamic map) {
    return SubSymptom(
      id: map['id'].toString(),
      title: map['title'].toString(),
      icon: map['icon'].toString(),
    );
  }
}
