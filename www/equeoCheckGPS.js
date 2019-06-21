var exec = require('cordova/exec')

exports.check = function (success, error, arg0) {
  exec(success, error, 'equeoCheckGPS', 'check', [arg0])
}
