import 'dart:convert';
import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class PredictCall {
  static Future<ApiCallResponse> call() async {
    const ffApiRequestBody = '''
{
  "muscle_group": "Upper Extremity",
  "specific_muscle": "Biceps",
  "functional_goal": "Pain Relief",
  "pain_level": 2
}
''';
    return ApiManager.instance.makeApiCall(
      callName: 'predict',
      apiUrl: 'http://127.0.0.1:8000/docs',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GenerateRehabilitationPlanCall {
  static Future<ApiCallResponse> call({
    String? userId = '',
  }) async {
    final ffApiRequestBody = '''
{
  "user_id": "$userId"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'GenerateRehabilitationPlan',
      apiUrl:
          'https://4641-136-158-49-47.ngrok-free.app/generate_rehabilitation_plan',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static dynamic recommendedTreatment(dynamic response) => getJsonField(
        response,
        r'''$.Recommended_Treatment''',
      );
  static dynamic recommendedTraining(dynamic response) => getJsonField(
        response,
        r'''$.Recommended_Training''',
      );
  static dynamic recommendedStrengthening(dynamic response) => getJsonField(
        response,
        r'''$.Recommended_Strengthening''',
      );
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
  if (item is DocumentReference) {
    return item.path;
  }
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
