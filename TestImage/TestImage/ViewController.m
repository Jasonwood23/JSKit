//
//  ViewController.m
//  TestImage
//
//  Created by dengjunjie on 2022/6/8.
//

#import "ViewController.h"
#import "UIImageView+Extension.h"
@interface ViewController ()<NSCacheDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    UIImageView *imageView = [[UIImageView alloc]initWithFrame:CGRectMake(100, 50, 50, 50)];
    imageView.backgroundColor = UIColor.redColor;
    [imageView setJS_image:[NSURL URLWithString:@"https://www.baidu.com/img/PCtm_d9c8750bed0b3c7d089fa7d55720d6cf.png"]];
    
    [self.view addSubview:imageView];
    
    NSCache *cache = [[NSCache alloc]init];
    cache.delegate = self;
    NSData *data = [cache objectForKey:@"imageData"];
    NSLog(@"%@",data.length);
}

//delegate
- (void)cache:(NSCache *)cache willEvictObject:(id)obj{
    
    NSLog(@"%@ ----=========",obj);
    
}
@end
