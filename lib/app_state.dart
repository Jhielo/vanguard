import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _isLoggedIn = prefs.getBool('ff_isLoggedIn') ?? _isLoggedIn;
    });
    _safeInit(() {
      _currentUserID = prefs.getString('ff_currentUserID') ?? _currentUserID;
    });
    _safeInit(() {
      _currentUserName =
          prefs.getString('ff_currentUserName') ?? _currentUserName;
    });
    _safeInit(() {
      _currentUserRole =
          prefs.getString('ff_currentUserRole') ?? _currentUserRole;
    });
    _safeInit(() {
      _userPlateNum = prefs.getString('ff_userPlateNum') ?? _userPlateNum;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  bool _isLoggedIn = false;
  bool get isLoggedIn => _isLoggedIn;
  set isLoggedIn(bool value) {
    _isLoggedIn = value;
    prefs.setBool('ff_isLoggedIn', value);
  }

  String _currentUserID = '';
  String get currentUserID => _currentUserID;
  set currentUserID(String value) {
    _currentUserID = value;
    prefs.setString('ff_currentUserID', value);
  }

  String _currentUserName = 'Adam';
  String get currentUserName => _currentUserName;
  set currentUserName(String value) {
    _currentUserName = value;
    prefs.setString('ff_currentUserName', value);
  }

  String _currentUserRole = '';
  String get currentUserRole => _currentUserRole;
  set currentUserRole(String value) {
    _currentUserRole = value;
    prefs.setString('ff_currentUserRole', value);
  }

  DateTime? _selectedDepartureTime =
      DateTime.fromMillisecondsSinceEpoch(1745504580000);
  DateTime? get selectedDepartureTime => _selectedDepartureTime;
  set selectedDepartureTime(DateTime? value) {
    _selectedDepartureTime = value;
  }

  DateTime? _selectedArrivalTime =
      DateTime.fromMillisecondsSinceEpoch(1745504580000);
  DateTime? get selectedArrivalTime => _selectedArrivalTime;
  set selectedArrivalTime(DateTime? value) {
    _selectedArrivalTime = value;
  }

  DateTime? _selectedTripDate =
      DateTime.fromMillisecondsSinceEpoch(1745504580000);
  DateTime? get selectedTripDate => _selectedTripDate;
  set selectedTripDate(DateTime? value) {
    _selectedTripDate = value;
  }

  double _originLatitude = 0.0;
  double get originLatitude => _originLatitude;
  set originLatitude(double value) {
    _originLatitude = value;
  }

  double _originLongitude = 0.0;
  double get originLongitude => _originLongitude;
  set originLongitude(double value) {
    _originLongitude = value;
  }

  double _destinationLatitude = 0.0;
  double get destinationLatitude => _destinationLatitude;
  set destinationLatitude(double value) {
    _destinationLatitude = value;
  }

  double _destinationLongitude = 0.0;
  double get destinationLongitude => _destinationLongitude;
  set destinationLongitude(double value) {
    _destinationLongitude = value;
  }

  String _route = '';
  String get route => _route;
  set route(String value) {
    _route = value;
  }

  bool _isRouteChosen = false;
  bool get isRouteChosen => _isRouteChosen;
  set isRouteChosen(bool value) {
    _isRouteChosen = value;
  }

  bool _hasStarted = false;
  bool get hasStarted => _hasStarted;
  set hasStarted(bool value) {
    _hasStarted = value;
  }

  bool _paused = true;
  bool get paused => _paused;
  set paused(bool value) {
    _paused = value;
  }

  int _tripDuration = 0;
  int get tripDuration => _tripDuration;
  set tripDuration(int value) {
    _tripDuration = value;
  }

  DateTime? _timeStarted = DateTime.fromMillisecondsSinceEpoch(629488800000);
  DateTime? get timeStarted => _timeStarted;
  set timeStarted(DateTime? value) {
    _timeStarted = value;
  }

  DateTime? _timeEnded = DateTime.fromMillisecondsSinceEpoch(629488800000);
  DateTime? get timeEnded => _timeEnded;
  set timeEnded(DateTime? value) {
    _timeEnded = value;
  }

  String _userPlateNum = '';
  String get userPlateNum => _userPlateNum;
  set userPlateNum(String value) {
    _userPlateNum = value;
    prefs.setString('ff_userPlateNum', value);
  }

  String _deleteUuid = '';
  String get deleteUuid => _deleteUuid;
  set deleteUuid(String value) {
    _deleteUuid = value;
  }

  String _predictedArrival = '';
  String get predictedArrival => _predictedArrival;
  set predictedArrival(String value) {
    _predictedArrival = value;
  }

  String _predictedDeparture = '';
  String get predictedDeparture => _predictedDeparture;
  set predictedDeparture(String value) {
    _predictedDeparture = value;
  }

  DateTime? _preferredTravelDate =
      DateTime.fromMillisecondsSinceEpoch(1745915040000);
  DateTime? get preferredTravelDate => _preferredTravelDate;
  set preferredTravelDate(DateTime? value) {
    _preferredTravelDate = value;
  }

  bool _isPaused = false;
  bool get isPaused => _isPaused;
  set isPaused(bool value) {
    _isPaused = value;
  }

  bool _isChangeSave = false;
  bool get isChangeSave => _isChangeSave;
  set isChangeSave(bool value) {
    _isChangeSave = value;
  }

  String _trafficStatus = '';
  String get trafficStatus => _trafficStatus;
  set trafficStatus(String value) {
    _trafficStatus = value;
  }

  double _sorsogonLat = 12.9763652;
  double get sorsogonLat => _sorsogonLat;
  set sorsogonLat(double value) {
    _sorsogonLat = value;
  }

  double _sorsogonLong = 124.0193223;
  double get sorsogonLong => _sorsogonLong;
  set sorsogonLong(double value) {
    _sorsogonLong = value;
  }

  double _legazpiLat = 13.1437659;
  double get legazpiLat => _legazpiLat;
  set legazpiLat(double value) {
    _legazpiLat = value;
  }

  double _legazpiLong = 123.7451897;
  double get legazpiLong => _legazpiLong;
  set legazpiLong(double value) {
    _legazpiLong = value;
  }

  String _estimatedTravelTime = '';
  String get estimatedTravelTime => _estimatedTravelTime;
  set estimatedTravelTime(String value) {
    _estimatedTravelTime = value;
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
