//
//  UIImageView+Extension.m
//  TestImage
//
//  Created by dengjunjie on 2022/6/8.
//

#import "UIImageView+Extension.h"

@implementation UIImageView (Extension)

-(void)setJS_image:(NSURL *)url{
    NSData *data = [NSData dataWithContentsOfURL:url];
 
    
    
    
    NSCache *cache = [[NSCache alloc]init];
    cache.totalCostLimit = 100;
    [cache setObject:data forKey:@"imageData"];
    
    self.image = [UIImage imageWithData:data];
    

    
}


@end
