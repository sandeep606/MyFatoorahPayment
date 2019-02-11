/********* MyFatoorahPaymentGateway.m Cordova Plugin Implementation *******/

#import <Cordova/CDV.h>
#import <MFSDK/MFSDK.h>

@interface MyFatoorahPaymentGateway : CDVPlugin {
  // Member variables go here.
}

- (void)presentPaymentModule:(CDVInvokedUrlCommand*)command;
@end

@implementation MyFatoorahPaymentGateway

- (void)presentPaymentModule:(CDVInvokedUrlCommand*)command
{

    [MFSettings.sharedInstance setMerchantWithMerchantCodeWithMerchantCode:@"999999"
                                                              merchantName:@"Web Pay"
                                                          merchantUserName:@"testapi@myfatoorah.com"
                                                          merchantPassword:@"E55D0"
                                                       merchantReferenceID:@"201454542102"
                                                         merchantReturnURL:@"https://www.google.co.in"
                                                          merchantErrorUrl:@"https://www.yahoo.com"
                                                                      udf1:@""
                                                                      udf2:@""
                                                                      udf3:@""
                                                                      udf4:@""
                                                                      udf5:@""
                                                                isTestMode:YES];

                                                                
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
