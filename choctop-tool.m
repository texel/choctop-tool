#import <Foundation/Foundation.h>
#import "ImageUtils.h"

int main (int argc, const char * argv[]) {
  NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];

  // insert code here...
  NSMutableArray *argArray = [NSMutableArray array];
  int index = 1;

  while (argv[index]) {
    [argArray addObject:[NSString stringWithCString:argv[index] encoding:NSUTF8StringEncoding]];
    ++index;
  }
  
  if ([argArray count] > 0) {
    NSString *firstArg = [argArray objectAtIndex:0];
    
    if ([firstArg isEqual:@"image_size"]) {
      NSSize imageSize = [ImageUtils getBoundsForImage:[argArray objectAtIndex:1]];
      printf("%f,%f", imageSize.width, imageSize.height);
    }
    else if ([firstArg isEqual:@"set_icon"]) {
      NSString *filePath, *imagePath;
      filePath = [argArray objectAtIndex:1];
      imagePath = [argArray objectAtIndex:2];
      
      NSLog(@"Setting file path: %@ icon to: %@", filePath, imagePath);
      
      [ImageUtils setIconForPath:filePath withImage:imagePath];
    }
  }
  
  [pool drain];
  return 0;
}
