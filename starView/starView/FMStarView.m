//
//  HGStarView.m
//  starView
//
//  Created by qianjn on 16/6/20.
//  Copyright © 2016年 SF. All rights reserved.
//

#import "FMStarView.h"
#import "FMOneStarView.h"
#define kScreenHeight ([UIScreen mainScreen].bounds.size.height)
#define kScreenWidth ([UIScreen mainScreen].bounds.size.width)
#define numberOfStar 5
@interface FMStarView ()

@property (nonatomic, strong) UIView *BackgroundView;
@property (nonatomic, strong) UIView *ForegroundView;
@property (nonatomic, assign) CGRect  frame;
@end

@implementation FMStarView

-(instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    _frame = frame;
    if (self) {
        [self _setUp];
    }
    return self;
}

- (id)init {
    self = [super init];
    if (self) {
    }
    return self;
}

- (void)_setUp
{
    
    if (_frame.size.width == 0 || _frame.size.height ==0 || _frame.size.width == kScreenWidth || _frame.size.height == kScreenHeight) {
        return;
    }
    [self addSubview:self.BackgroundView];
    [self addSubview:self.ForegroundView];
    
    if (_star) {
        
        CGRect frame = self.ForegroundView.frame;
        frame.size.width = [_star floatValue] / numberOfStar * _frame.size.width;
        
        
        self.ForegroundView.frame = frame;
        
    }
    
}

- (void)setFrame:(CGRect)frame
{
    [super setFrame:frame];
    _frame = frame;
    [self _setUp];
}

- (void)setStar:(NSNumber *)star
{
    _star = star;
    if (_star) {
        
        if (_frame.size.width == 0 || _frame.size.height ==0 || _frame.size.width == kScreenWidth || _frame.size.height == kScreenHeight) {
            return;
        }
        
        CGRect frame= self.ForegroundView.frame ;
        frame.size.width = [_star floatValue] / numberOfStar * _frame.size.width;;
        self.ForegroundView.frame = frame;
    }

}

- (UIView *)BackgroundView
{
    if (_frame.size.width == 0 || _frame.size.height == 0) {
        return nil;
    }
    if (_BackgroundView == nil) {
        CGFloat starWidth = _frame.size.width/numberOfStar;
        CGFloat starheight = _frame.size.height;
        
        _BackgroundView = [[UIView alloc] init];
        _BackgroundView.frame = CGRectMake(0, 0, _frame.size.width, starheight);
        for (int i = 0; i < numberOfStar; i ++) {
            UIImageView *imageView =[[UIImageView alloc] initWithImage:[FMOneStarView starWithRadius:starWidth/2 withFillColor:[UIColor grayColor]]];
            imageView.frame = CGRectMake(i * starWidth, 0, starWidth, starheight);
            
            [_BackgroundView addSubview:imageView];
        }
    }
    
    
    
    
    return _BackgroundView;
}

- (UIView *)ForegroundView
{
    if (_frame.size.width == 0 || _frame.size.height == 0) {
        return nil;
    }
    if (_ForegroundView == nil) {
        CGFloat starWidth = _frame.size.width/numberOfStar;
        CGFloat starheight = _frame.size.height;
        
        _ForegroundView = [[UIView alloc] init];
        _ForegroundView.clipsToBounds = YES;
        _ForegroundView.frame = CGRectMake(0, 0, _frame.size.width, _frame.size.height);
        for (int i = 0; i < numberOfStar; i ++) {
            UIImageView *imageView =[[UIImageView alloc] initWithImage:[FMOneStarView starWithRadius:starWidth/2 withFillColor:[UIColor redColor]]];
            imageView.frame = CGRectMake(i * starWidth, 0, starWidth, starheight);
            
            [_ForegroundView addSubview:imageView];
        }
    }

    return _ForegroundView;
}
@end
