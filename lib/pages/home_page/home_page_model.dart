import '/components/basic_form_field_widget.dart';
import '/components/date_time_form_field_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'home_page_widget.dart' show HomePageWidget;
import 'package:flutter/material.dart';

class HomePageModel extends FlutterFlowModel<HomePageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for basicFormField component.
  late BasicFormFieldModel basicFormFieldModel1;
  // Model for basicFormField component.
  late BasicFormFieldModel basicFormFieldModel2;
  // Model for dateTimeFormField component.
  late DateTimeFormFieldModel dateTimeFormFieldModel1;
  // Model for dateTimeFormField component.
  late DateTimeFormFieldModel dateTimeFormFieldModel2;
  // Stores action output result for [Custom Action - eventToJson] action in Button widget.
  dynamic createdEvent;
  // Stores action output result for [Custom Action - signInWithGoogle] action in Button widget.
  String? accessToken;

  @override
  void initState(BuildContext context) {
    basicFormFieldModel1 = createModel(context, () => BasicFormFieldModel());
    basicFormFieldModel2 = createModel(context, () => BasicFormFieldModel());
    dateTimeFormFieldModel1 =
        createModel(context, () => DateTimeFormFieldModel());
    dateTimeFormFieldModel2 =
        createModel(context, () => DateTimeFormFieldModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    basicFormFieldModel1.dispose();
    basicFormFieldModel2.dispose();
    dateTimeFormFieldModel1.dispose();
    dateTimeFormFieldModel2.dispose();
  }
}
