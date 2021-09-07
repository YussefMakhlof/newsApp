import 'package:share/share.dart';
import 'package:clipboard/clipboard.dart';
import 'package:url_launcher/url_launcher.dart';

class Func{
static  Future<void> openLink(String link) async {
    var urlLink = link;
    if (await canLaunch(urlLink)) {
      await launch(urlLink);
    } else {
      await launch(urlLink);
    }
  }

static  Future<void> shareLink(String link) async {
  var urlLink = link;
  if (await canLaunch(urlLink)) {
    Share.share(link);
  }

}
static  Future<void> copyLink(String link) async {
  var urlLink = link;
  if (await canLaunch(urlLink)) {
    FlutterClipboard.copy(link).then((value) => print('copied'));
  }

}




}