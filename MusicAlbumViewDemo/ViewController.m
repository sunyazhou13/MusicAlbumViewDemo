//
//  ViewController.m
//  MusicAlbumViewDemo
//
//  Created by sunyazhou on 2018/11/8.
//  Copyright © 2018 sunyazhou.com. All rights reserved.
//

#import "ViewController.h"
#import <SDWebImage/UIImageView+WebCache.h>
#import <Masonry/Masonry.h>

#import "MusicAlbumView.h"

static CGFloat widthHeight = 50;

@interface ViewController ()

@property (nonatomic, strong) MusicAlbumView *musicAlbum;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.musicAlbum = [[MusicAlbumView alloc] initWithFrame:CGRectMake(0, 0, widthHeight, widthHeight)];
    
    [self.view addSubview:self.musicAlbum];
    __weak __typeof(self) wself = self;
    //加载网络图
    [self.musicAlbum.album sd_setImageWithURL:[NSURL URLWithString:@"https://www.sunyazhou.com/images/logo2.jpg"] completed:^(UIImage * _Nullable image, NSError * _Nullable error, SDImageCacheType cacheType, NSURL * _Nullable imageURL) {
        if(!error) {
            wself.musicAlbum.album.image = image;
        }
    }];
    [self.musicAlbum startAnimation:12];
    
    //布局
    [self.musicAlbum mas_makeConstraints:^(MASConstraintMaker *make) {
//        make.right.equalTo(self.view.mas_right).offset(-20);
//        make.bottom.equalTo(self.view.mas_bottom).offset(-50);
//        make.width.height.equalTo(@(widthHeight));
        make.center.equalTo(self.view);
    }];
    [self.musicAlbum layoutIfNeeded];
}


@end
