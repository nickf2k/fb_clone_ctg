import 'package:fb_clone_ctg/untils/spref_util.dart';
import 'package:flutter/cupertino.dart';

import 'app.dart';

main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SpUtil.getInstance();
  runApp(MyApp());
}
