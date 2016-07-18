# SlideImage
这个库主要用来实现长图的展示，在定长宽的视图中，将长图自动滑动展示。
用法：
```
KVZSlidePictureView *view = [[KVZSlidePictureView alloc] initWithFrame:CGRectMake(0, 50, SCREEN_WIDTH, 300)];
[view setImage:image];
[self.view addSubview:view];
[view beginAutoMoveImageWithDuration:10];
```
