#import "LandscapeVideo.h"
#import <Cordova/CDV.h>

@implementation LandscapeAVPlayerViewController

- (UIInterfaceOrientation)preferredInterfaceOrientationForPresentation {
    return UIInterfaceOrientationLandscapeRight; // or LandscapeLeft
}

- (UIInterfaceOrientationMask)supportedInterfaceOrientations {
    return UIInterfaceOrientationMaskLandscape;
}
- (void) viewWillDisappear:(BOOL)animated {
    [[NSNotificationCenter defaultCenter] postNotificationName:@"PlayerViewDismissedNotification" object:nil];
    [super viewWillDisappear:animated];
}
@end
