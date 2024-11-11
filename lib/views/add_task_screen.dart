// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// import '../controllers/task_provider.dart';

// class AddTaskScreen extends StatelessWidget {
//   const AddTaskScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final controller = TextEditingController();

//     return Scaffold(
//       appBar: AppBar(title: const Text('Add Task')),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           children: [
//             TextField(
//               controller: controller,
//               decoration: const InputDecoration(labelText: 'Task Title'),
//             ),
//             const SizedBox(height: 20),
//             ElevatedButton(
//               onPressed: () {
//                 final title = controller.text.trim();
//                 if (title.isNotEmpty) {
//                   Provider.of<TaskProvider>(context, listen: false)
//                       .addTask(title);
//                   Navigator.pop(context);
//                 }
//               },
//               child: const Text('Add Task'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }


import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/task_provider.dart';

class AddTaskScreen extends StatelessWidget {
  const AddTaskScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = TextEditingController();
    final taskController = Get.find<TaskController>();

    return Scaffold(
      appBar: AppBar(title: const Text('Add Task')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: controller,
              decoration: const InputDecoration(labelText: 'Task Title'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                final title = controller.text.trim();
                if (title.isNotEmpty) {
                  taskController.addTask(title);
                  Get.back();
                }
              },
              child: const Text('Add Task'),
            ),
          ],
        ),
      ),
    );
  }
}
