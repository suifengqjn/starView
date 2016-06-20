# starView
五星评分

![image](https://raw.githubusercontent.com/suifengqjn/starView/master/starView/1.png)


###使用
```
FMStarView *view = [[FMStarView alloc] init];
    view.frame= CGRectMake(100, 100, 100, 20);
    view.star = @(3.5);
    [self.view addSubview:view];

    
    FMStarView *view2 = [[FMStarView alloc] initWithFrame:CGRectMake(100, 150, 120, 20)];
    view2.star = @(2);
    [self.view addSubview:view2];
    
```


