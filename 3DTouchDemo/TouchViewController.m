//
//  TouchViewController.m
//  UserNotiDemo
//
//  Created by 王恒求 on 2016/8/18.
//  Copyright © 2016年 王恒求. All rights reserved.
//

#import "TouchViewController.h"

@interface TouchViewController ()



@end

@implementation TouchViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"3DTouch";
    self.view.backgroundColor = [UIColor yellowColor];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(NSArray<id<UIPreviewActionItem>> *)previewActionItems{
    UIPreviewAction *action1 = [UIPreviewAction actionWithTitle:@"我就是我" style:UIPreviewActionStyleDefault handler:^(UIPreviewAction * _Nonnull action, UIViewController * _Nonnull previewViewController) {
        NSLog(@"click---我就是我");
        
    }];
    
    UIPreviewAction *action2 = [UIPreviewAction actionWithTitle:@"你还是你" style:UIPreviewActionStyleDefault handler:^(UIPreviewAction * _Nonnull action, UIViewController * _Nonnull previewViewController) {
        NSLog(@"click---你还是你");
    }];
    
    UIPreviewAction *action3 = [UIPreviewAction actionWithTitle:@"她还是她" style:UIPreviewActionStyleDefault handler:^(UIPreviewAction * _Nonnull action, UIViewController * _Nonnull previewViewController) {
        NSLog(@"click---她还是她");
    }];
    //想要显示多个就定义多个 UIPreviewAction
    NSArray *actions = @[action1,action2,action3];
    return actions;
}

@end
