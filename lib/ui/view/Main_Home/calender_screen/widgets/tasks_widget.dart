import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:ringo_media_flutter/ui/themes/text_theme.dart';
import 'package:ringo_media_flutter/ui/themes/ui_color.dart';

class Task {
  final String title;
  final String description;
  bool isCompleted;

  Task({
    required this.title,
    required this.description,
    this.isCompleted = false,
  });
}

class TasksWidget extends HookWidget {
  const TasksWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final tasks = useState<List<Task>>([
      Task(
        title: "Meeting Concept",
        description: "Due Date : Mon, 12 Jan 2023",
      ),
      Task(
          title: "Information Architecture",
          description: "Due Date : Mon, 12 Jan 2023"),
      Task(
          title: "Monitoring Project",
          description: "Due Date : Mon, 12 Jan 2023"),
    ]);
    return ListView.builder(
      itemCount: tasks.value.length,
      itemBuilder: (context, index) {
        final task = tasks.value[index];

        return Container(
          margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),
            boxShadow: [
              BoxShadow(
                color:
                    Colors.black.withOpacity(0.1), // Shadow color with opacity
                offset: const Offset(4, 8), // x = 4, y = 8
                blurRadius: 24, // Blur radius
                spreadRadius: 0, // Spread radius
              ),
            ],
          ),
          child: ListTile(
            contentPadding: const EdgeInsets.all(16),
            title: Text(
              task.title,
              style: context.h5,
            ),
            subtitle: Text(
              task.description,
              style: context.sub1,
            ),
            trailing: Checkbox(
              // fillColor: UIColor.kBackground,
              checkColor: UIColor.kWhite,
              activeColor: UIColor.kGreen,
              value: true,
              onChanged: (bool? value) {},
            ),
          ),
        );
      },
    );
  }
}
