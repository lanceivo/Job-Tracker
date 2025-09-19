import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'edit_job_item_widget.dart' show EditJobItemWidget;
import 'package:flutter/material.dart';

class EditJobItemModel extends FlutterFlowModel<EditJobItemWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
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
      return 'Position title is required';
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

  // State field(s) for salary widget.
  FocusNode? salaryFocusNode;
  TextEditingController? salaryTextController;
  String? Function(BuildContext, String?)? salaryTextControllerValidator;
  // State field(s) for link widget.
  FocusNode? linkFocusNode;
  TextEditingController? linkTextController;
  String? Function(BuildContext, String?)? linkTextControllerValidator;
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
    companyNameTextControllerValidator = _companyNameTextControllerValidator;
    positionTitleTextControllerValidator =
        _positionTitleTextControllerValidator;
    locationTextControllerValidator = _locationTextControllerValidator;
  }

  @override
  void dispose() {
    companyNameFocusNode?.dispose();
    companyNameTextController?.dispose();

    positionTitleFocusNode?.dispose();
    positionTitleTextController?.dispose();

    locationFocusNode?.dispose();
    locationTextController?.dispose();

    salaryFocusNode?.dispose();
    salaryTextController?.dispose();

    linkFocusNode?.dispose();
    linkTextController?.dispose();

    contactpersonFocusNode?.dispose();
    contactpersonTextController?.dispose();

    contactemailFocusNode?.dispose();
    contactemailTextController?.dispose();

    notesFocusNode?.dispose();
    notesTextController?.dispose();
  }
}
