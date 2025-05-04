import 'dart:convert';
import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class PredictVansCall {
  static Future<ApiCallResponse> call({
    String? route = '',
    String? preferredDepTime = '',
    int? weekday,
    String? hour = '',
    int? event,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'PredictVans',
      apiUrl:
          'https://vanguardthesis.pythonanywhere.com/route/${route}/pref/${preferredDepTime}/weekday/${weekday}/hour/${hour}/event/${event}',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'route': route,
        'preferred_dep_time': preferredDepTime,
        'weekday': weekday,
        'hour': hour,
        'event': event,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? departure(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.departure''',
      ));
  static String? arrival(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.arrival''',
      ));
}

class GoogleAPICall {
  static Future<ApiCallResponse> call({
    double? originLat,
    double? originLong,
    double? destinationLat,
    double? destinationLong,
    String? apiKey = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'googleAPI',
      apiUrl:
          'https://maps.googleapis.com/maps/api/directions/json?origin=${originLat},${originLong}&destination=${destinationLat},${destinationLong}&departure_time=now&key=${apiKey}',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'origin_lat': originLat,
        'origin_long': originLong,
        'destination_lat': destinationLat,
        'destination_long': destinationLong,
        'api_key': apiKey,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static int? normalDuration(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.routes[:].legs[:].duration.value''',
      ));
  static int? durationInTraffic(dynamic response) =>
      castToType<int>(getJsonField(
        response,
        r'''$.routes[:].legs[:].duration_in_traffic.value''',
      ));
  static String? estimatedTravelTime(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.routes[:].legs[:].duration_in_traffic.text''',
      ));
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _toEncodable(dynamic item) {
  return item;
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}
