import 'package:bookly_app/core/utils/functions/show_snack_bar.dart';
import 'package:url_launcher/url_launcher.dart';

Future<void> lunchCustomUrl({context, String? url}) async {
  if (url != null) {
    Uri uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      launchUrl(uri);
    } else {
      showSnackbar(context, 'cannot Launch $url');
    }
  }
}
