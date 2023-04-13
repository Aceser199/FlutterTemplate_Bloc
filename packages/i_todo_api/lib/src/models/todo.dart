import 'dart:convert';

import 'package:equatable/equatable.dart';
import 'package:uuid/uuid.dart';

class Todo extends Equatable {
  final String id;
  final String value;
  final String date;
  final bool isDone;
  Todo({
    String? id,
    required this.value,
    required this.date,
    this.isDone = false,
  })  : assert(id != null && id.isNotEmpty, 'id must not be null or empty'),
        id = id ?? Uuid().v4();

  Todo copyWith({
    String? id,
    String? value,
    String? date,
    bool? isDone,
  }) {
    return Todo(
      id: id ?? this.id,
      value: value ?? this.value,
      date: date ?? this.date,
      isDone: isDone ?? this.isDone,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'value': value,
      'date': date,
      'isDone': isDone,
    };
  }

  factory Todo.fromMap(Map<String, dynamic> map) {
    return Todo(
      id: map['id'] ?? '',
      value: map['value'] ?? '',
      date: map['date'] ?? '',
      isDone: map['isDone'] ?? false,
    );
  }

  String toJson() => json.encode(toMap());

  factory Todo.fromJson(String source) => Todo.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Todo(id: $id, value: $value, date: $date, isDone: $isDone)';
  }

  @override
  List<Object> get props => [id, value, date, isDone];
}
