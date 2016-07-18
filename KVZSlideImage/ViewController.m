//
//  ViewController.m
//  KVZSlideImage
//
//  Created by kevinzhan on 18/7/16.
//  Copyright © 2016年 kevinzhan. All rights reserved.
//

#import "ViewController.h"
#import "KVZSlidePictureView.h"
#define SCREEN_WIDTH [[UIScreen mainScreen] bounds].size.width

@interface ViewController ()
@property (nonatomic, strong)KVZSlidePictureView *spView;

@end

@implementation ViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
//    UIImage *image = [UIImage imageNamed:@"plant"];
//    CGSize contentSize = CGSizeMake(_scrollView.frame.size.width, _scrollView.frame.size.width/image.size.width*image.size.height);
//    CGRect frame = CGRectMake(0, 0, contentSize.width, contentSize.height);
//    UIImageView *imageView = [[UIImageView alloc] initWithFrame:frame];
//    [imageView setImage:image];
//    
//    [_scrollView setContentSize:contentSize];
//    [_scrollView addSubview:imageView];
//    [_scrollView setBounces:NO];
//    
//    [NSTimer scheduledTimerWithTimeInterval:10.0/contentSize.height target:self selector:@selector(moveImage) userInfo:nil repeats:YES];

    KVZSlidePictureView *view = [[KVZSlidePictureView alloc] initWithFrame:CGRectMake(0, 50, SCREEN_WIDTH, 300)];
    [view setImage:[UIImage imageNamed:@"long"]];
    [self.view addSubview:view];
    _spView = view;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)pressBeginBtn:(id)sender {
    [_spView beginAutoMoveImageWithDuration:10];
}
- (IBAction)pressStopBtn:(id)sender {
    [_spView stopAutoMoveImage];
}

@end
