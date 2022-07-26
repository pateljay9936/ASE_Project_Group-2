import 'package:flutter_driver/flutter_driver.dart';
import 'package:test/test.dart';

void main() {
  group('App Test', () {
    final username = find.byValueKey('username');
    final password = find.byValueKey('password');
    final loginbutton = find.byValueKey('logIn');
    final Signinbutton = find.byValueKey('signIn');
    final name = find.byValueKey('name');
    final number = find.byValueKey('number');
    final email = find.byValueKey('email');
    final pass = find.byValueKey('pass');
    final c_pass = find.byValueKey('c_pass');
    final finalsignup = find.byValueKey('finalsignup');

    late FlutterDriver driver;

    setUpAll(() async {
      driver = await FlutterDriver.connect();
    });

    tearDownAll(() async {
      if (driver != null) {
        driver.close();
      }
    });

    test('signup with proper name , email , number , password (SUCESSFULL)',
        () async {
      await driver.tap(Signinbutton);
      await driver.tap(name);
      await driver.enterText('jay');
      await driver.tap(number);
      await driver.enterText('7096658198');
      await driver.tap(email);
      await driver.enterText('jay1234@gmail.com');
      await driver.tap(pass);
      await driver.enterText('1234567890');
      await driver.tap(c_pass);
      await driver.enterText('1234567890');
      await driver.tap(finalsignup);
    });

    test('signup with improper name , email , number , password (UNSUCESSFULL)',
        () async {
      await driver.tap(Signinbutton);
      await driver.tap(name);
      await driver.enterText('notjay');
      await driver.tap(number);
      await driver.enterText('7096658198');
      await driver.tap(email);
      await driver.enterText('jay1234@gmail.com');
      await driver.tap(pass);
      await driver.enterText('14567890');
      await driver.tap(c_pass);
      await driver.enterText('12345670');
      await driver.tap(finalsignup);
    });
  });
}
