import 'dart:developer';

import 'package:ase_project1/BackEnd_Firebase/V1.0/loginpage.dart';
import 'package:ase_project1/Pages/loginpage.dart';
import 'package:ase_project1/main.dart';
import 'package:flutter/material.dart';
import 'package:test/test.dart';
import 'package:flutter_driver/flutter_driver.dart';
import 'package:integration_test/integration_test.dart';
import 'package:ase_project1/main.dart' as app;
import 'package:integration_test/integration_test_driver.dart';

void main() {
  group('App Test', () {
    final username = find.byValueKey("username");
    final password = find.byValueKey("password");
    final loginbutton = find.byValueKey("logIn");
    final Signinbutton = find.byValueKey("SignIn");
    FlutterDriver driver;

    Future<bool> isPresent(SerializableFinder byValueKey,
        {Duration timeout = const Duration(seconds: 1)}) async {
      try {
        await driver.waitFor(byValueKey, timeout: timeout);
        return true;
      } catch (exception) {
        return false;
      }
    }

    setUpAll(() async {
      driver = await FlutterDriver.connect();
    });

    tearDownAll(() async {
      if (driver != null) {
        driver.close();
      }
    });

    test('create account', () async {
      if (await isPresent(loginbutton)) {
        await driver.tap(loginbutton);
      }

      await driver.tap(username);
      await driver.enterText("jay@gmail.com");

      await driver.tap(password);
      await driver.enterText("ab12nf32");

      await driver.tap(Signinbutton);
      await driver.waitFor(find.text("Your Todos"));
    });

    test('login', () async {
      if (await isPresent(loginbutton)) {
        await driver.tap(loginbutton);
      }

      await driver.tap(username);
      await driver.enterText("jay@gmail.com");

      await driver.tap(password);
      await driver.enterText("ab12nf32");

      await driver.tap(loginbutton);
      await driver.waitFor(find.text("Your Todos"));
    });
  });
}
