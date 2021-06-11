/**
 * Created by IntelliJ IDEA.<br/>
 * User: c_weerasinghe<br/>
 * Date: 6/11/21<br/>
 * Time: 11:30 AM<br/>
 * To change this template use File | Settings | File Templates.
 */
class EmailFieldValidator {
  static String validate(String value) {
    return value.isEmpty ? 'Email can\'t be empty' : null;
  }
}
