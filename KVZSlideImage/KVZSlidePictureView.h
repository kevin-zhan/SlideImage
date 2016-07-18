//
//  KVZSlidePictureView.h
//  KVZSlideImage
//
//  Created by kevinzhan on 18/7/16.
//  Copyright © 2016年 kevinzhan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface KVZSlidePictureView : UIView
- (void)setImage:(UIImage *)image;
- (void)beginAutoMoveImageWithDuration:(NSTimeInterval)duration;
- (void)stopAutoMoveImage;
@end
