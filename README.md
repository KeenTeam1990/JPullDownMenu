# JPullDownMenu
####这是一个简单的下拉菜单,使用详情见Demo。
####如果觉得有用的话，给个赞呗。😂😂😂

---


![](image.png)

## Usage

```
    self.menu = [[JPullDownMenu alloc]initWithFrame:CGRectMake(0,0,kWidth, 40) menuTitleArray:@[@"全部"]];
    NSArray * regionArray =@[@"语文",@"数学",@"英语",@"物理",@"化学"];
    
    self.menu.menuDataArray = [NSMutableArray arrayWithObjects:regionArray, nil];
    
    [self.view addSubview:self.menu];
    
    __weak typeof(self) _self = self;
    [self.menu setHandleSelectDataBlock:^(NSString *selectTitle, NSUInteger selectIndex, NSUInteger selectButtonTag) {
        
        _self.titleLabel.text = [NSString stringWithFormat:@"selectTitle = %@\n selectIndex = @%lu\n selectButtonTag = @%lu",selectTitle,selectIndex,selectButtonTag];
    }];
}
```
 

## Author

kt, email: keen_team@163.com

## License

JPullDownMenu is available under the (MIT)License.
