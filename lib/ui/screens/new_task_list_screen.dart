import 'package:flutter/material.dart';
import 'package:task_manager_ostad/ui/screens/add_new_task_screen.dart';
import 'package:task_manager_ostad/ui/widgets/screen_background.dart';
import 'package:task_manager_ostad/ui/widgets/task_item.dart';
import 'package:task_manager_ostad/ui/widgets/task_status_summary_counter.dart';
import 'package:task_manager_ostad/ui/widgets/tm_app_bar.dart';

class NewTaskListScreen extends StatefulWidget {
  const NewTaskListScreen({super.key});

  @override
  State<NewTaskListScreen> createState() => _NewTaskListScreenState();
}

class _NewTaskListScreenState extends State<NewTaskListScreen> {
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: TMAppBar(),
      body: ScreenBackground(
        child: SingleChildScrollView(
          child: Column(
            children: [
              _buildTaskSummaryStatus(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: _buildTaskListView(),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, AddNewTaskScreen.name);
        },
        child: Icon(Icons.add),
      ),
    );
  }

  Widget _buildTaskListView() {
    return ListView.builder(
      shrinkWrap: true,
      primary: false,
      itemCount: 10,
      itemBuilder: (context, index) {
        return TaskItem();
      },
    );
  }

  Widget _buildTaskSummaryStatus() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            TaskStatusSummaryCounter(
              title: 'New',
              count: '12',
            ),
            TaskStatusSummaryCounter(
              title: 'Progress',
              count: '12',
            ),
            TaskStatusSummaryCounter(
              title: 'Completed',
              count: '12',
            ),
            TaskStatusSummaryCounter(
              title: 'Cancelled',
              count: '12',
            ),
          ],
        ),
      ),
    );
  }
}
