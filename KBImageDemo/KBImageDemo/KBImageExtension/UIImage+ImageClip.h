//
//  UIImage+ImageClip.h
//  KBImageDemo
//
//  Created by kangbing on 16/3/28.
//  Copyright © 2016年 kangbing. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (ImageClip)


// 根据指定的尺寸, 生成圆角图像并且返回
- (void)kb_cornerImageWithCorlor:(UIColor *)fillColor imageSize:(CGSize)imageSize completion:(void(^)(UIImage *image))completion;

@end
