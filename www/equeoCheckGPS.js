var exec = require('cordova/exec')

exports.CheckGPS = function (success, error, arg0) {
  exec(success, error, 'equeoCheckGPS', 'check', [arg0])
}
