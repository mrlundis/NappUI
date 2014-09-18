/**
 * Module developed by Napp
 * Author Mads Møller
 * www.napp.dk
 *
 * by ryugoo
 */

#import "TiUIWebView+Extend.h"
#import <objc/runtime.h>

@implementation TiUIWebView (Extend)

#pragma mark
#pragma iVars
- (void)setNormalScrollSpeed_:(id)args
{
    BOOL normalSpeed = [TiUtils boolValue:args def:NO];
    if (normalSpeed == YES) {
        // Same TableView, ScrollView scroll speed.
        [[self scrollview] setDecelerationRate:UIScrollViewDecelerationRateNormal];
    } else {
        // Default scroll speed.
        [[self scrollview] setDecelerationRate:UIScrollViewDecelerationRateFast];
    }
}

- (void)setRemoveScrollDelay_:(id)args
{
    BOOL removeFlag = [TiUtils boolValue:args def:NO];
    if (removeFlag == YES)
    {
        [[self scrollview] setDelaysContentTouches:NO];
    }
}

@end