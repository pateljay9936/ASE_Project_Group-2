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
    final loginsignin = find.byValueKey('loginsignin');

    late FlutterDriver driver;

    setUpAll(() async {
      driver = await FlutterDriver.connect();
      await Future.delayed(Duration(seconds: 1));
    });

    tearDownAll(() async {
      if (driver != null) {
        driver.close();
      }
    });

    test('signIp with improper name , email , number , password (UNSUcCESSFUL)',
        () async {
      //await driver.tap(loginsignin);
      //await driver.tap(Signinbutton);
      await Future.delayed(Duration(seconds: 1));
      await driver.tap(Signinbutton);
      await Future.delayed(Duration(seconds: 1));
      await driver.tap(name);
      await Future.delayed(Duration(seconds: 1));
      await driver.enterText('notjay');
      await Future.delayed(Duration(seconds: 1));
      await driver.tap(number);
      await Future.delayed(Duration(seconds: 1));
      await driver.enterText('5996621198');
      await Future.delayed(Duration(seconds: 1));
      await driver.tap(email);
      await Future.delayed(Duration(seconds: 1));
      await driver.enterText('jay234@gmail.com');
      await Future.delayed(Duration(seconds: 1));
      await driver.tap(pass);
      await Future.delayed(Duration(seconds: 1));
      await driver.enterText('14567890');
      await Future.delayed(Duration(seconds: 1));
      await driver.tap(c_pass);
      await Future.delayed(Duration(seconds: 1));
      await driver.enterText('12345670');
      await Future.delayed(Duration(seconds: 1));
      await driver.tap(finalsignup);
      await Future.delayed(Duration(seconds: 2));
    });

    test('signIp with improper email_address (UNSUcCESSFUL)', () async {
      //await driver.tap(loginsignin);
      //await driver.tap(Signinbutton);
      await Future.delayed(Duration(seconds: 1));
      await driver.tap(Signinbutton);
      await Future.delayed(Duration(seconds: 1));
      await driver.tap(name);
      await Future.delayed(Duration(seconds: 1));
      await driver.enterText('notjay');
      await Future.delayed(Duration(seconds: 1));
      await driver.tap(number);
      await Future.delayed(Duration(seconds: 1));
      await driver.enterText('5996621198');
      await Future.delayed(Duration(seconds: 1));
      await driver.tap(email);
      await Future.delayed(Duration(seconds: 1));
      await driver.enterText('jay234_gmail.com');
      await Future.delayed(Duration(seconds: 1));
      await driver.tap(pass);
      await Future.delayed(Duration(seconds: 1));
      await driver.enterText('14567890');
      await Future.delayed(Duration(seconds: 1));
      await driver.tap(c_pass);
      await Future.delayed(Duration(seconds: 1));
      await driver.enterText('14567890');
      await Future.delayed(Duration(seconds: 1));
      await driver.tap(finalsignup);
      await Future.delayed(Duration(seconds: 2));
    });
    test('signIn with proper password (SUCcESSFUL)', () async {
      //await Future.delayed(Duration(seconds: 1));
      //await driver.tap(Signinbutton);
      await Future.delayed(Duration(seconds: 1));
      await driver.tap(name);
      await Future.delayed(Duration(seconds: 1));
      await driver.enterText('jay');
      await Future.delayed(Duration(seconds: 1));
      await driver.tap(number);
      await Future.delayed(Duration(seconds: 1));
      await driver.enterText('7096658198');
      await Future.delayed(Duration(seconds: 1));
      await driver.tap(email);
      await Future.delayed(Duration(seconds: 1));
      await driver.enterText('jay334344@gmail.com');
      await Future.delayed(Duration(seconds: 1));
      await driver.tap(pass);
      await Future.delayed(Duration(seconds: 1));
      await driver.enterText('1234567890');
      await Future.delayed(Duration(seconds: 1));
      await driver.tap(c_pass);
      await Future.delayed(Duration(seconds: 1));
      await driver.enterText('1234567890');
      await Future.delayed(Duration(seconds: 1));
      await driver.tap(finalsignup);
      await Future.delayed(Duration(seconds: 2));
    });
  });
}
