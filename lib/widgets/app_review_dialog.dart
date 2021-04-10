import 'dart:io';

import 'package:app_review/app_review.dart';
import 'package:flutter/material.dart';
import 'package:trufi_core/l10n/trufi_localization.dart';

void showAppReviewDialog(BuildContext context) async {
  final localization = TrufiLocalization.of(context);
  if (Platform.isIOS) {
    // Show native app review dialog for iOS users
    await AppReview.requestReview;
  } else {
    // Show a custom dialog for Android users
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(localization.appReviewDialogTitle),
          content: Text(localization.appReviewDialogContent),
          actions: <Widget>[
            FlatButton(
              child: Text(localization.appReviewDialogButtonDecline),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            FlatButton(
              child: Text(localization.appReviewDialogButtonAccept),
              onPressed: () {
                Navigator.of(context).pop();
                AppReview.writeReview;
              },
            ),
          ],
        );
      },
    );
  }
}
