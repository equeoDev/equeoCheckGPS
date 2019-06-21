/********* equeoCheckGPS.m Cordova Plugin Implementation *******/

#import "equeoCheckGPS.h"
#import <CoreLocation/CoreLocation.h>

@implementation equeoCheckGPS

- (void)check:(CDVInvokedUrlCommand*)command
{

    NSLog(@"CHECK CALLED");
	CDVPluginResult* pluginResult = nil;
	if([CLLocationManager locationServicesEnabled] &&
  	 [CLLocationManager authorizationStatus] != kCLAuthorizationStatusDenied) {
    pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK];
	} else {
    pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_ERROR];
	}
  [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
}
@end
