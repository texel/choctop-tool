//
//  ImageUtils.h
//  choctop-tool
//
//  Created by Leigh Caplan on 6/9/10.
//  Copyright 2010 Onehub, Inc. All rights reserved.
//

#import <Cocoa/Cocoa.h>


@interface ImageUtils : NSObject {

}

+ (void) setIconForPath:(NSString *)path withImage:(NSString *)imagePath;
+ (NSSize) getBoundsForImage:(NSString *)imagePath;

@end
