//
//  UIImage+ImageClip.m
//  KBImageDemo
//
//  Created by kangbing on 16/3/28.
//  Copyright © 2016年 kangbing. All rights reserved.
//

#import "UIImage+ImageClip.h"

@implementation UIImage (ImageClip)



- (void)kb_cornerImageWithCorlor:(UIColor *)fillColor imageSize:(CGSize)imageSize completion:(void (^)(UIImage *))completion{


    dispatch_async(dispatch_get_global_queue(0, 0), ^{
        
        // 0.1开启上下文
        UIGraphicsBeginImageContextWithOptions(imageSize, YES, 0);
        // 0.2大小
        CGRect rect = CGRectMake(0, 0, imageSize.width, imageSize.height);
        // 0.3填充颜色
        [fillColor setFill];
        UIRectFill(rect);
        
        // 0.4 贝赛尔
        UIBezierPath *path = [UIBezierPath bezierPathWithOvalInRect:rect];
        
        [path addClip];
        
        // 0.5绘制
        [self drawInRect:rect];
        
        // 0.6获取结果
        UIImage *result = UIGraphicsGetImageFromCurrentImageContext();
        
        // 0.7关闭上下文
        UIGraphicsEndImageContext();
        
        /**
         *  完成
         */
        dispatch_async(dispatch_get_main_queue(), ^{
           
            if (completion) {
                completion(result);
            }
    
        });
        

    });


}


@end
