import 'package:bookly_app/core/utils/function/custom_snack_bar.dart';
import 'package:url_launcher/url_launcher.dart';

/* 
  The url_launcher package requires certain permissions to work on Android and iOS platforms.
  Additionally, the app needs to be restarted after granting the necessary permissions.
  Please ensure that the app has the required internet permissions as well.
*/
Future<void> launchCustomURL(context, String? url) async {
  if (url != null) {
    final Uri uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    } else {
      showCustomSnackBar(context, 'Could not launch $url');
    }
  }
}
