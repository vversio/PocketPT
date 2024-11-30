import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'rehabilitation_plan_widget.dart' show RehabilitationPlanWidget;
import 'package:flutter/material.dart';

class RehabilitationPlanModel
    extends FlutterFlowModel<RehabilitationPlanWidget> {
  ///  Local state fields for this page.

  List<dynamic> rehabPlan = [];
  void addToRehabPlan(dynamic item) => rehabPlan.add(item);
  void removeFromRehabPlan(dynamic item) => rehabPlan.remove(item);
  void removeAtIndexFromRehabPlan(int index) => rehabPlan.removeAt(index);
  void insertAtIndexInRehabPlan(int index, dynamic item) =>
      rehabPlan.insert(index, item);
  void updateRehabPlanAtIndex(int index, Function(dynamic) updateFn) =>
      rehabPlan[index] = updateFn(rehabPlan[index]);

  String purposeZero = 'fetching data...';

  String purposeOne = 'fetching data...';

  String treatmentZero = 'fetching data...';

  String treatmentOne = 'fetching data...';

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (GenerateRehabilitationPlan)] action in RehabilitationPlan widget.
  ApiCallResponse? apiResult;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
