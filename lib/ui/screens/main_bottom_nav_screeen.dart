import 'package:flutter/material.dart';
import 'package:task_manager_ostad/ui/screens/new_task_list_screen.dart';

class MainBottomNavScreeen extends StatefulWidget {
  const MainBottomNavScreeen({super.key});

  static const String name = '/home';

  @override
  State<MainBottomNavScreeen> createState() => _MainBottomNavScreeenState();
}

class _MainBottomNavScreeenState extends State<MainBottomNavScreeen> {
  int _selectedIndex = 0;
  final List<Widget> _screen = const[
    NewTaskListScreen(),
    NewTaskListScreen(),
    NewTaskListScreen(),
    NewTaskListScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screen[_selectedIndex],
      appBar: AppBar(
        title: Text('Home'),
      ),
      bottomNavigationBar: NavigationBar(
          selectedIndex: _selectedIndex,
          onDestinationSelected: (int index) {
            _selectedIndex = index;
            setState(() {});
          },
          destinations: const [
            NavigationDestination(
                icon: Icon(Icons.add_task_outlined), label: 'New'),
            NavigationDestination(
                icon: Icon(Icons.sync_rounded), label: 'Progress'),
            NavigationDestination(
                icon: Icon(Icons.cloud_done_outlined), label: 'Completed'),
            NavigationDestination(
                icon: Icon(Icons.free_cancellation_outlined), label: 'Cancel'),
          ]),
    );
  }
}
