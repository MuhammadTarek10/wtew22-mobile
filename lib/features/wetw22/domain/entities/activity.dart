import 'package:equatable/equatable.dart';
import 'package:wtew22/features/wetw22/domain/entities/note.dart';

enum ActivityType { session, workshop }

class Activity extends Equatable {
  final String id;
  final int order;
  final String instructor;
  final ActivityType activityType;
  final List<Note> notes;
  final String title;
  final String description;
  final String startDate;
  final String endDate;

  const Activity({
    required this.id,
    required this.order,
    required this.instructor,
    required this.activityType,
    required this.notes,
    required this.title,
    required this.description,
    required this.startDate,
    required this.endDate,
  });

  @override
  List<Object> get props => [
        id,
        order,
        instructor,
        activityType,
        notes,
        title,
        description,
        startDate,
        endDate,
      ];
}
