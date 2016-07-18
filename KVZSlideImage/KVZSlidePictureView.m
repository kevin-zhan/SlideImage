//
//  KVZSlidePictureView.m
//  KVZSlideImage
//
//  Created by kevinzhan on 18/7/16.
//  Copyright © 2016年 kevinzhan. All rights reserved.
//

#import "KVZSlidePictureView.h"

@interface KVZSlidePictureView()
@property (nonatomic,strong)UIScrollView *scrollView;
@property (nonatomic, strong)UIImage *pImage;
@property (nonatomic, strong)NSTimer *pTimer;
@end
@implementation KVZSlidePictureView

static NSUInteger offset = 0;
static BOOL isMovingDown = YES;
- (void)awakeFromNib {
    [super awakeFromNib];
    
}

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        _scrollView = [[UIScrollView alloc] initWithFrame:self.frame];
        [_scrollView setUserInteractionEnabled:NO];
        [self addSubview:_scrollView];
        NSLog(@"test");
    }
    return self;
}
- (void)beginAutoMoveImageWithDuration:(NSTimeInterval)duration {
    if (_scrollView.contentSize.height<self.frame.size.height) {
        NSLog(@"Unable to move");
        return;
    }
    if (_pImage) {
        _pTimer = [NSTimer scheduledTimerWithTimeInterval:duration/_scrollView.contentSize.height target:self selector:@selector(moveImage) userInfo:nil repeats:YES];

    }
}
- (void)setImage:(UIImage *)image {
    _pImage = image;
    CGSize newSize = CGSizeMake(self.frame.size.width,self.frame.size.width/image.size.width*image.size.height );
    NSLog(@"size h%lf w%lf",newSize.height,newSize.width);
    UIImageView *imageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, newSize.width, newSize.height)];
    [imageView setImage:image];
    
    [_scrollView setContentSize:newSize];
    [_scrollView addSubview:imageView];
}

- (void)moveImage {
    NSLog(@"kvz offset:%ld",offset);
    if (offset>=_scrollView.contentSize.height-self.frame.size.height) {
        isMovingDown = NO;
    }else if(offset<=0){
        isMovingDown = YES;
    }
    
    if (isMovingDown) {
        offset++;
    }else {
        offset--;
    }
    [_scrollView setContentOffset:CGPointMake(0, offset) animated:NO];
}
- (void)stopAutoMoveImage {
    [_pTimer invalidate];
}
@end
