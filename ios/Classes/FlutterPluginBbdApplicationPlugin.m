#import "FlutterPluginBbdApplicationPlugin.h"
#import <flutter_plugin_bbd_application/flutter_plugin_bbd_application-Swift.h>

@implementation FlutterPluginBbdApplicationPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftFlutterPluginBbdApplicationPlugin registerWithRegistrar:registrar];
}
@end
