//
//  ViewController.m
//  KBImageDemo
//
//  Created by kangbing on 16/3/28.
//  Copyright © 2016年 kangbing. All rights reserved.
//

#import "ViewController.h"
#import "UIImage+ImageClip.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    UIImageView *imageView = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, 220, 220)];
    
    imageView.center = self.view.center;
    
    [self.view addSubview:imageView];
    
    
    // 设置图片
    UIImage *image = [UIImage imageNamed:@"demo.jpg"];
    
    [image kb_cornerImageWithCorlor:[UIColor whiteColor] imageSize:imageView.bounds.size completion:^(UIImage *image) {
        
        imageView.image = image;
        
    }];
    
    
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
