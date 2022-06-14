//
//  ViewController.m
//  TestSocket
//
//  Created by dengjunjie on 2022/6/7.
//

#import "ViewController.h"

@interface ViewController ()
@property (strong, nonatomic)GCDAsyncSocket *socketClient;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.socketClient = [[GCDAsyncSocket alloc]initWithDelegate:self delegateQueue:dispatch_get_main_queue()];
    
//    self.socketClient connectToHost: onPort:<#(uint16_t)#> error:<#(NSError *__autoreleasing  _Nullable * _Nullable)#>
}


@end
