
#if __has_include("RCTBridgeModule.h")
#import "RCTBridgeModule.h"
#else
#import <React/RCTBridgeModule.h>
#endif

#import "MMLanScanner.h"
#import "MMDevice.h"

@interface RNNetworkMapper : NSObject <RCTBridgeModule, MMLANScannerDelegate>
@property(nonatomic, weak)id: <RNNetworkMapperDelegate> delegate;
@property(nonatomic, strong)MMLANScanner *lanScanner;
@property(nonatomic, assign, readwrite) float progressValue;
@property(nonatomic, assign, readwrite) BOOL isScanRunning;
@end
  
