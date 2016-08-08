//
//  TankId.h
//
//  Created by chatperf on 2013/07/29.
//  Copyright (c) 2013 chatperf. All rights reserved.
//

#include <CoreFoundation/CoreFoundation.h>

@interface TankId : NSObject


@property Byte  year;
@property Byte  month;
@property Byte  day;
@property unsigned short scentId;
@property unsigned short serialId;
@property Byte reserve1;
@property unsigned short reserve2;

- (NSString*)description;
- (void)decodeBase64:(NSString*)base64String;
- (NSString*)encodeBase64;

@end
