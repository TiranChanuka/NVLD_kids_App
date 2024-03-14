import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:table_calendar/table_calendar.dart';

import '../color.dart';

class MyDayMyWay extends StatefulWidget {
  const MyDayMyWay({super.key});

  @override
  State<MyDayMyWay> createState() => _MyDayMyWayState();
}

class _MyDayMyWayState extends State<MyDayMyWay> {
  CalendarFormat _calendarFormat = CalendarFormat.month;
  DateTime _selectedDay = DateTime.now();

  final List<Task> _tasks = [
    Task(title: 'Wake Up & Morning Activities', completed: false),
    Task(title: 'Get breakfast', completed: false),
    Task(title: 'Mind Relax', completed: false),
    Task(title: 'Training', completed: false),
    Task(title: 'Take Brake', completed: false),
    Task(title: 'Get Lunch', completed: false),
    Task(title: 'Training', completed: false),
    Task(title: 'Play Time or Free Time', completed: false),
    Task(title: 'Activites with Parents', completed: false),
    Task(title: 'Get Dinner', completed: false),
    Task(title: 'Go to Sleep', completed: false),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: primaryColor,
        ),
        title: Text(
          'My Daily Routing',
          style: GoogleFonts.sourceSans3(
            fontSize: 24,
            fontWeight: FontWeight.w700,
            color: primaryColor,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Lottie.asset('assets/animations/ani1.json',
                  width: 300, height: 300),
            ),
            TableCalendar(
              firstDay: DateTime(DateTime.now().year, 1,
                  1), // Set firstDay to start of the year
              lastDay: DateTime.now().add(const Duration(
                  days:
                      365)), // Set lastDay to the end of the year (adjust if needed)
              focusedDay: _selectedDay,
              calendarFormat: _calendarFormat,
              selectedDayPredicate: (day) => isSameDay(_selectedDay, day),
              onDaySelected:
                  _onDaySelected, // Potentially update tasks based on selected day
              daysOfWeekVisible: true,
              // Style the calendar as needed
            ),
            const SizedBox(height: 20), // Add spacing
            Text(
              'Daily Tasks',
              style: GoogleFonts.sourceSans3(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10), // Add spacing
            ListView.builder(
              // Set a limited height to avoid excessive scrolling
              shrinkWrap: true,
              physics:
                  const NeverScrollableScrollPhysics(), // Disable scrolling
              itemCount: _tasks.length,
              itemBuilder: (context, index) {
                return CheckboxListTile(
                  title: Text(_tasks[index].title),
                  value: _tasks[index].completed,
                  onChanged: (newValue) =>
                      setState(() => _tasks[index].completed = newValue!),
                );
              },
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  void _onDaySelected(DateTime selectedDay, DateTime focusedDay) {
    setState(() {
      _selectedDay = selectedDay;
      // You can potentially update tasks based on the selected day here
    });
  }
}

class Task {
  final String title;
  bool completed;

  Task({required this.title, this.completed = false});
}
