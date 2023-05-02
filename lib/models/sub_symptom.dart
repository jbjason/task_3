class SubSymptom {
  final String id;
  final String title;
  final String icon;
  bool isSelct;
  SubSymptom({
    required this.id,
    required this.title,
    required this.icon,
    this.isSelct = false,
  });

  SubSymptom copyWith({
    String? id,
    String? title,
    String? icon,
    bool? isSelct,
  }) {
    return SubSymptom(
      id: id ?? this.id,
      title: title ?? this.title,
      icon: icon ?? this.icon,
      isSelct: isSelct ?? this.isSelct,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'title': title,
      'icon': icon,
      'isSelct': isSelct,
    };
  }

  factory SubSymptom.fromMap(Map<String, dynamic> map) {
    return SubSymptom(
      id: map['id'].toString(),
      title: map['title'].toString(),
      icon: map['icon'].toString(),
    );
  }
}
