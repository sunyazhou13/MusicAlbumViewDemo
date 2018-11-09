//
//  MusicAlbumView.h
//  MusicAlbumViewDemo
//
//  Created by sunyazhou on 2018/11/8.
//  Copyright © 2018 sunyazhou.com. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface MusicAlbumView : UIView

@property (nonatomic, strong) UIImageView      *album;
/**
 开始动画
 
 @param rate 动画时间系数 eg： 12  内部🎶音符动画组 动画就是 12 / 4 = duration
 */
- (void)startAnimation:(CGFloat)rate;

/**
 重置视图 删除所有已添加的动画组
 */
- (void)resetView;

@end

NS_ASSUME_NONNULL_END
