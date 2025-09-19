import '/components/appbar_authenticated/appbar_authenticated_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/index.dart';
import 'dashboard_widget.dart' show DashboardWidget;
import 'package:flutter/material.dart';

class DashboardModel extends FlutterFlowModel<DashboardWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for appbar_authenticated component.
  late AppbarAuthenticatedModel appbarAuthenticatedModel;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;

  @override
  void initState(BuildContext context) {
    appbarAuthenticatedModel =
        createModel(context, () => AppbarAuthenticatedModel());
  }

  @override
  void dispose() {
    appbarAuthenticatedModel.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
