import 'dart:html';

import 'package:ngdart/angular.dart';

@Component(
  selector: 'my-app',
  styleUrls: ['app_component.css'],
  templateUrl: 'app_component.html',
  directives: [
    coreDirectives,
  ],
)
class AppComponent implements AfterViewInit {
  @override
  Future<Null> ngAfterViewInit() async {
    window.requestAnimationFrame(onFrame);
  }

  onFrame(timeStamp) {
    window.requestAnimationFrame(onFrame);
  }

  heavyCalc() {
    print('--> calculating');
    return true;
  }
}
