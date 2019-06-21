var exec = require('cordova/exec');

exports.CheckGPS = function (arg0, success, error) {
    exec(success, error, 'equeoCheckGPS', 'check', [arg0]);
};
