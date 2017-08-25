
#import "RNNetworkMapper.h"

@implementation RNNetworkMapper {
    NSMutableArray *connectedDevicesMutable;
}

-(instancetype) initWithDelegate: (id: RNNetworkMapperDelegate)delegate {
    self = [super init];
    if(self) {
        self.delegate = delegate;
        self.isScanRunning = NO;
        self.lanScanner = [[MMLANScanner alloc] initWithDelegate:self];
    }
    
    return self;
}

- (dispatch_queue_t)methodQueue
{
    return dispatch_get_main_queue();
}

RCT_EXPORT_MODULE()

- (void) startNetworkScan {
    
    connectedDevicesMutable = [[NSMutableArray alloc] init];
 
    self.isScanRunning = YES;
    
    [self.lanscanner start];
}

-(void)stopNetworkScan {
    
    [self.lanScanner stop];
    
    self.isScanRunning=NO;
}

- (NSDictionary *)constantsToExport
{
    return @{
             @"connectedDevices": self.connectedDevices,
             @"isScanRunning": self.isScanRunning,
             @"startNetworkScan": self.startNetworkScan,
             @"stopNetworkScan": self.stopNetworkScan
             };
}

#pragma mark - MMLANScannerDelegate methods
//The delegate methods of MMLANScanner
-(void)lanScanDidFindNewDevice:(MMDevice*)device{
    
    //Check if the Device is already added
    if (![connectedDevicesMutable containsObject:device]) {
        
        [connectedDevicesMutable addObject:device];
    }
    
    NSSortDescriptor *valueDescriptor = [[NSSortDescriptor alloc] initWithKey:@"ipAddress" ascending:YES];
    
    
    self.connectedDevices = [connectedDevicesMutable sortedArrayUsingDescriptors:@[valueDescriptor]];
}

-(void)lanScanProgressPinged:(float)pingedHosts from:(NSInteger)overallHosts {
    
    //Updating the progress value. MainVC will be notified by KVO
    self.progressValue=pingedHosts/overallHosts;
}

-(void)lanScanDidFinishScanningWithStatus:(MMLanScannerStatus)status{
    
    self.isScanRunning=NO;
}

@end
