import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/supabase/supabase.dart';
import '/auth/supabase_auth/auth_util.dart';

double extractLatLong(
  LatLng inputLatLong,
  bool isLat,
) {
  if (isLat) {
    return inputLatLong.latitude;
  } else {
    return inputLatLong.longitude;
  }
}

double? setMarker(
  String route,
  bool isDest,
  bool isLat,
) {
  double sorsogonLatitude, sorsogonLongitude, legazpiLatitude, legazpiLongitude;

  sorsogonLatitude = 12.9746771;
  sorsogonLongitude = 124.0169445;
  legazpiLatitude = 13.1434739;
  legazpiLongitude = 123.7432691;

  if (route == "Sorsogon - Legazpi") {
    if (isDest) {
      //set to legazpi
      if (isLat) {
        return legazpiLatitude;
      } else {
        return legazpiLongitude;
      }
    } else {
      //set to sorsogon
      if (isLat) {
        return sorsogonLatitude;
      } else {
        return sorsogonLongitude;
      }
    }
  } else {
    //Legazpi - sorsogon
    if (isDest) {
      //set to sorsogon
      if (isLat) {
        return sorsogonLatitude;
      } else {
        return sorsogonLongitude;
      }
    } else {
      //set to legazpi
      if (isLat) {
        return legazpiLatitude;
      } else {
        return legazpiLongitude;
      }
    }
  }
}

String getTime(
  DateTime datetime,
  bool isDate,
) {
  //check default, just to remove warning

  DateTime defDatetime = DateTime.parse('1989-12-13 02:00:00.000');

  if (datetime == defDatetime) {
    return "";
  }

  if (isDate) {
    return DateFormat('yyyy-MM-dd').format(datetime);
  } else {
    return DateFormat('hh:mm a').format(datetime);
  }
}

String getDuration(
  int milliseconds,
  bool forDisplay,
) {
  int seconds = milliseconds ~/ 1000;
  int minutes = seconds ~/ 60;
  int hours = minutes ~/ 60;
  minutes = minutes % 60;

  if (forDisplay) {
    return '${hours}h ${minutes}m';
  } else {
    return '${hours}:${minutes.toString().padLeft(2, '0')}';
  }
}

String increment(int num) {
  return (num + 1).toString();
}

String? parseTime(
  bool isDate,
  bool isTime,
  String datetime,
) {
  if (isTime) {
    List<String> parts = datetime.split(":");
    int hour = int.parse(parts[0]);
    String minute = parts[1];

    // Determine AM or PM
    String period = hour >= 12 ? "PM" : "AM";

    // Convert hour to 12-hour format
    hour = hour % 12;
    if (hour == 0) {
      hour = 12;
    }

    // Return the formatted string
    return "$hour:$minute $period";
  } else if (isDate) {
    // Parse the input
    DateTime date = DateFormat('M/d/yyyy').parse(datetime);

    // Format it to "Month Day, Year"
    return DateFormat('MMMM d, yyyy').format(date);
  } else {
    List<String> parts = datetime.split(":");
    String hours = parts[0];
    String minutes = parts[1];

    return "${hours}h ${minutes}m";
  }
}

int? getData(
  bool isHour,
  DateTime datetime,
  bool isWeekday,
) {
  if (isHour) {
    return datetime.hour;
  } else if (isWeekday) {
    return datetime.weekday;
  } else {
    return 0;
  }
}

String getTrafficStatus(
  int duration,
  int durationInTraffic,
) {
  double diff = durationInTraffic.toDouble() - duration.toDouble();
  double percentChange = (diff / duration.toDouble()) * 100;

  if (percentChange.abs() <= 5) {
    // Within ±5% → Normal
    return "Normal Traffic";
  } else if (percentChange > 5) {
    return "Heavy Traffic";
  } else {
    return "Light Traffic";
  }
}

String isRushHour(DateTime time) {
  final int hour = time.hour;

  if (16 <= hour && hour <= 18) {
    return "Rush hour. Earlier might be better?";
  } else if (6 <= hour && hour <= 8) {
    return "Rush hour. Later might be better?";
  } else if (11 <= hour && hour <= 13) {
    return "Rush hour. Earlier might be better?";
  } else if (hour <= 4) {
    return "The vans are not here yet, pick a later time.";
  } else if (hour >= 20) {
    return "The vans are no longer available, pick an earlier time.";
  }

  return "";
}
