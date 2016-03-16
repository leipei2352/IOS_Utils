//
//  NSString+My_Extend.m
//  IOS_Utils
//
//  Created by leipei on 16/3/16.
//  Copyright © 2016年 leipei. All rights reserved.
//

#import<Foundation/Foundation.h>
#import<CommonCrypto/CommonDigest.h>
#import "NSString+My_Extend.h"

@implementation NSString (My_Extend)

- (NSString*)md5
{
    const char *original_str = [self UTF8String];
    unsigned char result[CC_MD5_DIGEST_LENGTH];
    CC_MD5(original_str, (CC_LONG)strlen(original_str), result);
    NSMutableString *hash = [NSMutableString string];
    for (int i = 0; i < 16; i++)
    {
        [hash appendFormat:@"%02X", result[i]];
    }
    return [hash uppercaseString];
}
@end
