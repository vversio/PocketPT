import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'radio_button_widget.dart' show RadioButtonWidget;
import 'package:flutter/material.dart';

class RadioButtonModel extends FlutterFlowModel<RadioButtonWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for RadioButton widget.
  FormFieldController<String>? radioButtonValueController1;
  // State field(s) for RadioButton widget.
  FormFieldController<String>? radioButtonValueController2;
  // State field(s) for RadioButton widget.
  FormFieldController<String>? radioButtonValueController3;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}

  /// Additional helper methods.
  String? get radioButtonValue1 => radioButtonValueController1?.value;
  String? get radioButtonValue2 => radioButtonValueController2?.value;
  String? get radioButtonValue3 => radioButtonValueController3?.value;
}
