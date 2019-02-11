var exec = require("cordova/exec");

exports.presentPaymentModule = function(arg0, success, error) {
  exec(success, error, "MyFatoorahPaymentGateway", "presentPaymentModule", [
    arg0
  ]);
};
