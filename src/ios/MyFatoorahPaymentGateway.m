/********* MyFatoorahPaymentGateway.m Cordova Plugin Implementation *******/

#import <Cordova/CDV.h>

@interface MyFatoorahPaymentGateway : CDVPlugin {
  // Member variables go here.
}

- (void)presentPaymentModule:(CDVInvokedUrlCommand*)command;
@end

@implementation MyFatoorahPaymentGateway

- (void)presentPaymentModule:(CDVInvokedUrlCommand*)command
{
    CDVPluginResult* pluginResult = nil;
    // NSString* echo = [command.arguments objectAtIndex:0];

    // if (echo != nil && [echo length] > 0) {
        pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString:@"success printed"];
    // } else {
    //     pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_ERROR];
    // }
    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
}

@end
