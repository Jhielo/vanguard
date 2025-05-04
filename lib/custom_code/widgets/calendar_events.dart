// Automatic FlutterFlow imports
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/custom_code/actions/index.dart'; // Imports custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

// Set your widget name, define your parameter, and then add the
// boilerplate code using the green button on the right!

import 'dart:collection';
import 'package:table_calendar/table_calendar.dart';

/// Example event class.
class Event {
  final String title;

  const Event(this.title);

  @override
  String toString() => title;
}

/// Example events.
///
/// Using a [LinkedHashMap] is highly recommended if you decide to use a map.
/*final kEvents = LinkedHashMap<DateTime, List<Event>>(
  equals: isSameDay,
  hashCode: getHashCode,
)..addAll(_kEventSource);*/

final kEvents = LinkedHashMap<DateTime, List<Event>>(
  equals: isSameDay,
  hashCode: getHashCode,
)..addAll({
    DateTime.utc(2025, 1, 17): [
      Event('PAP Bicol Regional Professional Summit (Legazpi City Area)'),
    ],
    DateTime.utc(2025, 1, 18): [
      Event('PAP Bicol Regional Professional Summit (Legazpi City Area)'),
    ],
    DateTime.utc(2025, 1, 29): [
      Event('Chinese New Year Celebration'),
    ],
    DateTime.utc(2025, 2, 1): [
      Event('CCP Pasinaya 2025 (Sorsogon City Area)'),
    ],
    DateTime.utc(2025, 2, 2): [
      Event('CCP Pasinaya 2025 (Sorsogon City Area)'),
    ],
    DateTime.utc(2025, 4, 1): [
      Event('Eid\'l Fitr'),
    ],
    DateTime.utc(2025, 4, 17): [
      Event('Maundy Thursday'),
    ],
    DateTime.utc(2025, 4, 18): [
      Event('Good Friday'),
    ],
    DateTime.utc(2025, 4, 19): [
      Event('Black Saturday'),
    ],
    DateTime.utc(2025, 4, 20): [
      Event('Easter Sunday'),
    ],
    DateTime.utc(2025, 5, 12): [
      Event('Election Day'),
    ],
    DateTime.utc(2025, 5, 30): [
      Event('Bicol Loco Festival (Legazpi City Area)'),
    ],
    DateTime.utc(2025, 5, 31): [
      Event('Bicol Loco Festival (Legazpi City Area)'),
    ],
    DateTime.utc(2025, 6, 1): [
      Event('Bicol Loco Festival (Legazpi City Area)'),
    ],
    DateTime.utc(2025, 8, 15): [
      Event('Ibalong Festival (Legazpi City Area)'),
    ],
    DateTime.utc(2025, 8, 16): [
      Event('Ibalong Festival (Legazpi City Area)'),
    ],
    DateTime.utc(2025, 8, 17): [
      Event('Ibalong Festival (Legazpi City Area)'),
    ],
    DateTime.utc(2025, 10, 28): [
      Event('Kasanggayahan Festival (Sorsogon City Area)'),
    ],
    DateTime.utc(2025, 10, 29): [
      Event('Kasanggayahan Festival (Sorsogon City Area)'),
    ],
    DateTime.utc(2025, 10, 30): [
      Event('Kasanggayahan Festival (Sorsogon City Area)'),
    ],
    DateTime.utc(2025, 10, 31): [
      Event('Kasanggayahan Festival (Sorsogon City Area)'),
    ],
    for (int year = 2010; year <= 2030; year++) ...{
      DateTime.utc(year, 1, 1): [Event("New Year's Day")],
      DateTime.utc(year, 2, 13): [Event("Preparation of Valentine's Day")],
      DateTime.utc(year, 2, 14): [Event("Valentine's Day")],
      DateTime.utc(year, 2, 25): [Event("People Power Anniversary")],
      DateTime.utc(year, 4, 3): [Event("Albay Day (Legazpi City Area)")],
      DateTime.utc(year, 4, 9): [Event("Araw ng Kagitingan")],
      DateTime.utc(year, 5, 1): [Event("Labor Day")],
      DateTime.utc(year, 6, 12): [Event("Independence Day")],
      DateTime.utc(year, 8, 25): [Event("National Heroes Day")],
      DateTime.utc(year, 9, 2): [Event("Simeon Ola Day (Legazpi City Area)")],
      DateTime.utc(year, 11, 1): [Event("All Saint's Day")],
      DateTime.utc(year, 11, 2): [Event("All Soul's Day")],
      DateTime.utc(year, 11, 30): [Event("Bonifacio Day")],
      DateTime.utc(year, 12, 24): [Event("Preparation of Christmas Evening")],
      DateTime.utc(year, 12, 25): [Event("Christmas Day")],
      DateTime.utc(year, 12, 31): [Event("Rizal Day")],
    },
  });

/*
final _kEventSource = {
  for (var item in List.generate(50, (index) => index))
    DateTime.utc(kFirstDay.year, kFirstDay.month, item * 5): List.generate(
      item % 4 + 1,
      (index) => Event('Event $item | ${index + 1}'),
    ),
}..addAll({
    kToday: [
      const Event("Today's Event 1"),
      const Event("Today's Event 2"),
    ],
  });
*/
int getHashCode(DateTime key) {
  return key.day * 1000000 + key.month * 10000 + key.year;
}

/// Returns a list of [DateTime] objects from [first] to [last], inclusive.
List<DateTime> daysInRange(DateTime first, DateTime last) {
  final dayCount = last.difference(first).inDays + 1;
  return List.generate(
    dayCount,
    (index) => DateTime.utc(first.year, first.month, first.day + index),
  );
}

final kToday = DateTime.now();
final kFirstDay = DateTime.utc(2010, 10, 16);
final kLastDay = DateTime.utc(2030, 3, 14);

class CalendarEvents extends StatefulWidget {
  const CalendarEvents({
    super.key,
    this.width,
    this.height,
  });

  final double? width;
  final double? height;

  @override
  State<CalendarEvents> createState() => _CalendarEventsState();
}

class _CalendarEventsState extends State<CalendarEvents> {
  late final ValueNotifier<List<Event>> _selectedEvents;
  CalendarFormat _calendarFormat = CalendarFormat.month;
  RangeSelectionMode _rangeSelectionMode = RangeSelectionMode
      .toggledOff; // Can be toggled on/off by longpressing a date
  DateTime _focusedDay = DateTime.now();
  DateTime? _selectedDay;
  DateTime? _rangeStart;
  DateTime? _rangeEnd;

  @override
  void initState() {
    super.initState();

    _selectedDay = _focusedDay;
    _selectedEvents = ValueNotifier(_getEventsForDay(_selectedDay!));
  }

  @override
  void dispose() {
    _selectedEvents.dispose();
    super.dispose();
  }

  List<Event> _getEventsForDay(DateTime day) {
    // Implementation example
    return kEvents[day] ?? [];
  }

  List<Event> _getEventsForRange(DateTime start, DateTime end) {
    // Implementation example
    final days = daysInRange(start, end);

    return [
      for (final d in days) ..._getEventsForDay(d),
    ];
  }

  void _onDaySelected(DateTime selectedDay, DateTime focusedDay) {
    if (!isSameDay(_selectedDay, selectedDay)) {
      setState(() {
        _selectedDay = selectedDay;
        _focusedDay = focusedDay;
        _rangeStart = null; // Important to clean those
        _rangeEnd = null;
        _rangeSelectionMode = RangeSelectionMode.toggledOff;
      });

      _selectedEvents.value = _getEventsForDay(selectedDay);
    }
  }

  void _onRangeSelected(DateTime? start, DateTime? end, DateTime focusedDay) {
    setState(() {
      _selectedDay = null;
      _focusedDay = focusedDay;
      _rangeStart = start;
      _rangeEnd = end;
      _rangeSelectionMode = RangeSelectionMode.toggledOn;
    });

    // `start` or `end` could be null
    if (start != null && end != null) {
      _selectedEvents.value = _getEventsForRange(start, end);
    } else if (start != null) {
      _selectedEvents.value = _getEventsForDay(start);
    } else if (end != null) {
      _selectedEvents.value = _getEventsForDay(end);
    }
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: widget.width ?? double.infinity,
      height: widget.height ?? double.infinity,
      child: Column(
        children: [
          TableCalendar<Event>(
            firstDay: kFirstDay,
            lastDay: kLastDay,
            focusedDay: _focusedDay,
            selectedDayPredicate: (day) => isSameDay(_selectedDay, day),
            rangeStartDay: _rangeStart,
            rangeEndDay: _rangeEnd,
            calendarFormat: _calendarFormat,
            rangeSelectionMode: _rangeSelectionMode,
            eventLoader: _getEventsForDay,
            availableCalendarFormats: const {CalendarFormat.month: 'Month'},
            calendarStyle: const CalendarStyle(
              defaultTextStyle: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Colors.white),
              weekendTextStyle: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Colors.grey),
              todayTextStyle: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue),
              selectedTextStyle: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
              outsideDaysVisible: false,
            ),
            calendarBuilders: CalendarBuilders(
              markerBuilder: (context, date, events) {
                if (events.isNotEmpty) {
                  return Positioned(
                    bottom: 1,
                    child: Container(
                      width: 10.0, // adjust size here
                      height: 10.0,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.teal, // adjust color here
                      ),
                    ),
                  );
                }
                return const SizedBox();
              },
            ),
            daysOfWeekStyle: const DaysOfWeekStyle(
              weekdayStyle: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w600,
                color: Colors.teal,
              ),
              weekendStyle: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w600,
                color: Colors.teal,
              ),
            ),
            onDaySelected: _onDaySelected,
            onRangeSelected: _onRangeSelected,
          ),
          const SizedBox(height: 10.0),
          Expanded(
            child: ValueListenableBuilder<List<Event>>(
              valueListenable: _selectedEvents,
              builder: (context, value, _) {
                return ListView.builder(
                  itemCount: value.length,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: const EdgeInsets.symmetric(
                        horizontal: 12.0,
                        vertical: 4.0,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.grey, // Background color (fill)
                        border: Border.all(
                          color: Colors.black, // Border color
                          width: 1.5, // Border width
                        ),
                        borderRadius: BorderRadius.circular(12.0),
                        boxShadow: [
                          BoxShadow(
                            // subtle shadow for lift
                            color: Colors.black12,
                            blurRadius: 4,
                            offset: Offset(0, 2),
                          ),
                        ],
                      ),
                      child: Material(
                        color: Colors.transparent, // Keep material transparent
                        borderRadius: BorderRadius.circular(12.0),
                        child: InkWell(
                          borderRadius: BorderRadius.circular(12.0),
                          splashColor:
                              Colors.black.withOpacity(0.2), // Ripple effect
                          highlightColor:
                              Colors.black.withOpacity(0.1), // Press color
                          onTap: () => print('${value[index]}'),
                          child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Text(
                              '${value[index]}',
                              style: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Colors.black87,
                              ),
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
