// ignore_for_file: prefer_const_declarations

final String tableMains = 'mains';

class MainFields {
  static final List<String> values = [
    /// Add all fields
    id, isImportant, number, title, description, time
  ];

  static final String id = '_id';
  static final String isImportant = 'isImportant';
  static final String number = 'number';
  static final String title = 'title';
  static final String description = 'description';
  static final String time = 'time';
}

class Main {
  final int? id;
  final bool isImportant;
  final int number;
  final String title;
  final String description;
  final DateTime createdTime;

  const Main({
    this.id,
    required this.isImportant,
    required this.number,
    required this.title,
    required this.description,
    required this.createdTime,
  });

  Main copy({
    int? id,
    bool? isImportant,
    int? number,
    String? title,
    String? description,
    DateTime? createdTime,
  }) =>
      Main(
        id: id ?? this.id,
        isImportant: isImportant ?? this.isImportant,
        number: number ?? this.number,
        title: title ?? this.title,
        description: description ?? this.description,
        createdTime: createdTime ?? this.createdTime,
      );

  static Main fromJson(Map<String, Object?> json) => Main(
        id: json[MainFields.id] as int?,
        isImportant: json[MainFields.isImportant] == 1,
        number: json[MainFields.number] as int,
        title: json[MainFields.title] as String,
        description: json[MainFields.description] as String,
        createdTime: DateTime.parse(json[MainFields.time] as String),
      );

  Map<String, Object?> toJson() => {
        MainFields.id: id,
        MainFields.title: title,
        MainFields.isImportant: isImportant ? 1 : 0,
        MainFields.number: number,
        MainFields.description: description,
        MainFields.time: createdTime.toIso8601String(),
      };
}
