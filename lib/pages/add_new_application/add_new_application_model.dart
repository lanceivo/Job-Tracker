import '/components/appbar_authenticated/appbar_authenticated_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/index.dart';
import 'add_new_application_widget.dart' show AddNewApplicationWidget;
import 'package:flutter/material.dart';

class AddNewApplicationModel extends FlutterFlowModel<AddNewApplicationWidget> {
  ///  Local state fields for this page.

  bool applicationDone = false;

  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // Model for appbar_authenticated component.
  late AppbarAuthenticatedModel appbarAuthenticatedModel;
  // State field(s) for company_name widget.
  FocusNode? companyNameFocusNode;
  TextEditingController? companyNameTextController;
  String? Function(BuildContext, String?)? companyNameTextControllerValidator;
  String? _companyNameTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Company name is required';
    }

    return null;
  }

  // State field(s) for position_title widget.
  FocusNode? positionTitleFocusNode;
  TextEditingController? positionTitleTextController;
  String? Function(BuildContext, String?)? positionTitleTextControllerValidator;
  String? _positionTitleTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Position title  is required';
    }

    return null;
  }

  // State field(s) for location widget.
  FocusNode? locationFocusNode;
  TextEditingController? locationTextController;
  String? Function(BuildContext, String?)? locationTextControllerValidator;
  String? _locationTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Location is required';
    }

    return null;
  }

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController4;
  String? Function(BuildContext, String?)? textController4Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController5;
  String? Function(BuildContext, String?)? textController5Validator;
  // State field(s) for status widget.
  String? statusValue;
  FormFieldController<String>? statusValueController;
  DateTime? datePicked;
  // State field(s) for contactperson widget.
  FocusNode? contactpersonFocusNode;
  TextEditingController? contactpersonTextController;
  String? Function(BuildContext, String?)? contactpersonTextControllerValidator;
  // State field(s) for contactemail widget.
  FocusNode? contactemailFocusNode;
  TextEditingController? contactemailTextController;
  String? Function(BuildContext, String?)? contactemailTextControllerValidator;
  // State field(s) for notes widget.
  FocusNode? notesFocusNode;
  TextEditingController? notesTextController;
  String? Function(BuildContext, String?)? notesTextControllerValidator;

  @override
  void initState(BuildContext context) {
    appbarAuthenticatedModel =
        createModel(context, () => AppbarAuthenticatedModel());
    companyNameTextControllerValidator = _companyNameTextControllerValidator;
    positionTitleTextControllerValidator =
        _positionTitleTextControllerValidator;
    locationTextControllerValidator = _locationTextControllerValidator;
  }

  @override
  void dispose() {
    appbarAuthenticatedModel.dispose();
    companyNameFocusNode?.dispose();
    companyNameTextController?.dispose();

    positionTitleFocusNode?.dispose();
    positionTitleTextController?.dispose();

    locationFocusNode?.dispose();
    locationTextController?.dispose();

    textFieldFocusNode1?.dispose();
    textController4?.dispose();

    textFieldFocusNode2?.dispose();
    textController5?.dispose();

    contactpersonFocusNode?.dispose();
    contactpersonTextController?.dispose();

    contactemailFocusNode?.dispose();
    contactemailTextController?.dispose();

    notesFocusNode?.dispose();
    notesTextController?.dispose();
  }
}
