import 'package:intl/intl.dart';

void main() {
  var now = DateTime.now();

  DateFormat.MMMMd().format(now); // July 10
  DateFormat.yMMMMd().format(now); // July 10, 2019
  DateFormat.yMd().format(now); // 7/10/2019
  DateFormat('EEEE, d MMMM, yyyy').format(now); // Wednesday, 10 July, 2019
  DateFormat('kk:mm:ss').format(now); // 14:18:02
  DateFormat('hh:mm a').format(now); // 02:18 PM
  DateFormat('yyyy-MM-dd – kk:mm').format(now); // 2019-07-10 – 14:18
}
