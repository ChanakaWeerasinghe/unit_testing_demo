/**
 * Created by IntelliJ IDEA.<br/>
 * User: c_weerasinghe<br/>
 * Date: 6/11/21<br/>
 * Time: 11:32 AM<br/>
 * To change this template use File | Settings | File Templates.
 */

import 'package:flutter_test/flutter_test.dart';
import 'package:unit_testing/validators/EmailFieldValidator.dart';
import 'package:unit_testing/validators/PasswordFieldValidator.dart';

void main() {
  group('Counter', () {
    test('empty email returns error string', () {
      final result = EmailFieldValidator.validate('');
      expect(result, 'Email can\'t be empty');
    });

    test('non-empty email returns null', () {
      final result = EmailFieldValidator.validate('email');
      expect(result, null);
    });

    test('empty password returns error string', () {
      final result = PasswordFieldValidator.validate('');
      expect(result, 'Password can\'t be empty');
    });

    test('non-empty password returns null', () {
      final result = PasswordFieldValidator.validate('password');
      expect(result, null);
    });
  });
}
