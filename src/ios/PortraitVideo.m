#import "PortraitVideo.h"

@implementation PortraitAVPlayerViewController

- (UIInterfaceOrientation)preferredInterfaceOrientationForPresentation {
    return UIInterfaceOrientationPortrait; // or PortraitUpsideDown
}

- (UIInterfaceOrientationMask)supportedInterfaceOrientations {
    return UIInterfaceOrientationMaskPortrait; // or PortraitUpsideDown
}
- (void) viewWillDisappear:(BOOL)animated {
    [[NSNotificationCenter defaultCenter] postNotificationName:@"PlayerViewDismissedNotification" object:nil];
    [super viewWillDisappear:animated];
}
@end
