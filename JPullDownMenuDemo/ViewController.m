//
//  ViewController.m
//  JPullDownMenuDemo
//
//  Created by 开发者 on 16/5/19.
//  Copyright © 2016年 jinxiansen. All rights reserved.
//

#import "ViewController.h"
#import "JPullDownMenu.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UILabel *titleLabel;


@property (nonatomic) JPullDownMenu *menu ;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.menu = [[JPullDownMenu alloc]initWithFrame:CGRectMake(0, 64,self.view.frame.size.width, 40) menuTitleArray:@[@"全部"]];
    
    NSArray * regionArray =@[@"语文",@"数学",@"英语",@"物理",@"化学"];
    
    self.menu.menuDataArray = [NSMutableArray arrayWithObjects:regionArray, nil];
    
    [self.view addSubview:self.menu];
    
    __weak typeof(self) _self = self;
    [self.menu setHandleSelectDataBlock:^(NSString *selectTitle, NSUInteger selectIndex, NSUInteger selectButtonTag) {
        
        _self.titleLabel.text = [NSString stringWithFormat:@"selectTitle = %@\n selectIndex = @%lu\n selectButtonTag = @%lu",selectTitle,selectIndex,selectButtonTag];
    }];

}

- (IBAction)changeData:(UIBarButtonItem *)sender {
    NSArray * regionArray =@[@"不限",@"嘉定区",@"浦东新区",@"金山区"];
   self.menu.menuDataArray = [NSMutableArray arrayWithObjects:regionArray, nil];
    
    //数据源如果改变的话需调用此方法刷新数据。
    [self.menu setDefauldSelectedCell];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
