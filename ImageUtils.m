//
//  ImageUtils.m
//  choctop-tool
//
//  Created by Leigh Caplan on 6/9/10.
//  Copyright 2010 Onehub, Inc. All rights reserved.
//

#import "ImageUtils.h"


@implementation ImageUtils

+ (NSSize) getBoundsForImage:(NSString *)imagePath
{
  NSImage *image = [[NSImage alloc] initByReferencingFile:imagePath];
  return [image size];
}

+ (void) setIconForPath:(NSString *)path withImage:(NSString *)imagePath
{
  NSImage *image = [[NSImage alloc] initWithContentsOfFile:imagePath];
  [[NSWorkspace sharedWorkspace] setIcon:image forFile:path options:0];
}

@end
