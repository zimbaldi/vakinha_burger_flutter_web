import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
import 'package:flutter/material.dart';

mixin Messages<T extends StatefulWidget> on State<T> {
  void showError(String message) {
    _showSnackbar(
      AwesomeSnackbarContent(
        title: 'Error',
        message: message,
        contentType: ContentType.failure,
      ),
    );
  }

  void showWarning(String message) {
    _showSnackbar(
      AwesomeSnackbarContent(
        title: 'Warning',
        message: message,
        contentType: ContentType.warning,
      ),
    );
  }

  void showInfo(String message) {
    _showSnackbar(
      AwesomeSnackbarContent(
        title: 'Info',
        message: message,
        contentType: ContentType.help,
      ),
    );
  }

  void showSuccess(String message) {
    _showSnackbar(
      AwesomeSnackbarContent(
        title: 'Success',
        message: message,
        contentType: ContentType.success,
      ),
    );
  }

  void _showSnackbar(AwesomeSnackbarContent content) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        elevation: 0,
        behavior: SnackBarBehavior.floating,
        padding: const EdgeInsets.only(top: 72),
        backgroundColor: Colors.transparent,
        content: content,
      ),
    );
  }
}
