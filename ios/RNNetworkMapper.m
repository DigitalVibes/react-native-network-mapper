
#import "RNNetworkMapper.h"

@implementation RNNetworkMapper

- (dispatch_queue_t)methodQueue
{
    return dispatch_get_main_queue();
}
RCT_EXPORT_MODULE()

- (NSString*) connectedDevices
{
    return @"Implement this method to return list of connected devices";
}

- (NSDictionary *)constantsToExport
{
    return @{
             @"connectedDevices": self.connectedDevices,
             };
}

@end
  
