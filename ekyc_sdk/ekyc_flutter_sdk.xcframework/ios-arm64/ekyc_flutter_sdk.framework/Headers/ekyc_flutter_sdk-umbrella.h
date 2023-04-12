#ifdef __OBJC__
#import <UIKit/UIKit.h>
#else
#ifndef FOUNDATION_EXPORT
#if defined(__cplusplus)
#define FOUNDATION_EXPORT extern "C"
#else
#define FOUNDATION_EXPORT extern
#endif
#endif
#endif

#import "converter.h"
#import "EkycFlutterSdkPlugin.h"

FOUNDATION_EXPORT double ekyc_flutter_sdkVersionNumber;
FOUNDATION_EXPORT const unsigned char ekyc_flutter_sdkVersionString[];

