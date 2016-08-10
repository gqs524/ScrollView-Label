//
//  ViewController.m
//  ScrollView+Label
//
//  Created by 高青松 on 16/8/10.
//  Copyright © 2016年 高青松. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    NSString *str = @"呼んでいる 胸のどこか奥で 我心深处有声音在呼唤いつも心踊る 夢を見たい时常想做个";
    NSString *str2 = @"教心灵跃动的梦かなしみは 数えきれないけれど]纵有数不尽的悲伤その向こうできっと あなたに会える我确信能在那方遇上你繰り返すあやまちの そのたび ひとは反复犯了错的旅客に会える我确信能在那方遇上你繰り返すあやまちの そのたび ひとは反复犯了错的旅客教心灵跃动的梦かなしみは 数えきれないけれど]纵有数不尽的悲伤その向こうできっと あなたに会える我确信能在那方遇上你繰り返すあやまちの そのたび ひとは反复犯了错的旅客に会える我确信能在那方遇上你繰り返すあやまちの そのたび ひとは反复犯了错的旅客";
    
    CGFloat svW = [UIScreen mainScreen].bounds.size.width - 40;
    
    CGFloat svContentH = [str2 boundingRectWithSize:CGSizeMake(svW, 1000) options:(NSStringDrawingUsesLineFragmentOrigin|NSStringDrawingUsesFontLeading) attributes:@{NSFontAttributeName:[UIFont systemFontOfSize:15]} context:nil].size.height;

    
    
    UIScrollView *mainScrollView = [[UIScrollView alloc]initWithFrame:CGRectMake(20, 84, svW, 100)];
    mainScrollView.showsVerticalScrollIndicator = NO;
    mainScrollView.backgroundColor = [UIColor cyanColor];
    mainScrollView.contentSize = CGSizeMake(svW, svContentH);
    [self.view addSubview:mainScrollView];
    
    // 重置scrollView高度
    CGFloat svH = svContentH > 100 ? 100 : svContentH;
    mainScrollView.frame = CGRectMake(20, 84, svW, svH);
    
    
    UILabel *textLabel = [[UILabel alloc]initWithFrame:CGRectMake(0, 0, svW, svContentH)];
    textLabel.userInteractionEnabled = YES;
    textLabel.numberOfLines = 0;
    textLabel.text = str2;
    textLabel.font = [UIFont systemFontOfSize:15];
    [mainScrollView addSubview:textLabel];
    
    
    
    
    
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
