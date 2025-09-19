import '/components/header/header_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'login_widget.dart' show LoginWidget;
import 'package:flutter/material.dart';

class LoginModel extends FlutterFlowModel<LoginWidget> {
  ///  Local state fields for this page.

  String? type = '';

  ///  State fields for stateful widgets in this page.

  final formKey1 = GlobalKey<FormState>();
  final formKey2 = GlobalKey<FormState>();
  // Model for header component.
  late HeaderModel headerModel;
  // State field(s) for email widget.
  FocusNode? emailFocusNode;
  TextEditingController? emailTextController;
  String? Function(BuildContext, String?)? emailTextControllerValidator;
  String? _emailTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Email is required';
    }

    if (!RegExp(kTextValidatorEmailRegex).hasMatch(val)) {
      return 'Has to be a valid email address.';
    }
    return null;
  }

  // State field(s) for password_signin widget.
  FocusNode? passwordSigninFocusNode;
  TextEditingController? passwordSigninTextController;
  late bool passwordSigninVisibility;
  String? Function(BuildContext, String?)?
      passwordSigninTextControllerValidator;
  String? _passwordSigninTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'password is required';
    }

    if (val.length < 8) {
      return 'Requires at least 8 characters.';
    }

    return null;
  }

  // State field(s) for name widget.
  FocusNode? nameFocusNode;
  TextEditingController? nameTextController;
  String? Function(BuildContext, String?)? nameTextControllerValidator;
  String? _nameTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Name is required';
    }

    return null;
  }

  // State field(s) for email_signup widget.
  FocusNode? emailSignupFocusNode;
  TextEditingController? emailSignupTextController;
  String? Function(BuildContext, String?)? emailSignupTextControllerValidator;
  String? _emailSignupTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Email is required';
    }

    if (!RegExp(kTextValidatorEmailRegex).hasMatch(val)) {
      return 'Has to be a valid email address.';
    }
    return null;
  }

  // State field(s) for password widget.
  FocusNode? passwordFocusNode;
  TextEditingController? passwordTextController;
  late bool passwordVisibility;
  String? Function(BuildContext, String?)? passwordTextControllerValidator;
  String? _passwordTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Password is required';
    }

    if (val.length < 8) {
      return 'Requires at least 8 characters.';
    }
    if (val.length > 20) {
      return 'Maximum 20 characters allowed, currently ${val.length}.';
    }

    return null;
  }

  // State field(s) for confirpassword widget.
  FocusNode? confirpasswordFocusNode;
  TextEditingController? confirpasswordTextController;
  late bool confirpasswordVisibility;
  String? Function(BuildContext, String?)?
      confirpasswordTextControllerValidator;

  @override
  void initState(BuildContext context) {
    headerModel = createModel(context, () => HeaderModel());
    emailTextControllerValidator = _emailTextControllerValidator;
    passwordSigninVisibility = false;
    passwordSigninTextControllerValidator =
        _passwordSigninTextControllerValidator;
    nameTextControllerValidator = _nameTextControllerValidator;
    emailSignupTextControllerValidator = _emailSignupTextControllerValidator;
    passwordVisibility = false;
    passwordTextControllerValidator = _passwordTextControllerValidator;
    confirpasswordVisibility = false;
  }

  @override
  void dispose() {
    headerModel.dispose();
    emailFocusNode?.dispose();
    emailTextController?.dispose();

    passwordSigninFocusNode?.dispose();
    passwordSigninTextController?.dispose();

    nameFocusNode?.dispose();
    nameTextController?.dispose();

    emailSignupFocusNode?.dispose();
    emailSignupTextController?.dispose();

    passwordFocusNode?.dispose();
    passwordTextController?.dispose();

    confirpasswordFocusNode?.dispose();
    confirpasswordTextController?.dispose();
  }
}
