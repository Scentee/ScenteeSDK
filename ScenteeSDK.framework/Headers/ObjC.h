//
//  ObjC.h
//  ScenteeSample
//
//  Created by Scentee on 2016/05/25.
//  Copyright © 2016年 Scentee. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ObjC : NSObject

+ (BOOL)catchException:(void(^)())tryBlock error:(__autoreleasing NSError **)error;

@end
