//
//  ViewController.h
//  TestSocket
//
//  Created by dengjunjie on 2022/6/7.
//

#import <UIKit/UIKit.h>
#import <sys/socket.h>
#import <netinet/in.h>
#import <arpa/inet.h>
#import <unistd.h>
#import "GCDAsyncSocket.h"
#import "GCDAsyncUdpSocket.h"
@interface ViewController : UIViewController <GCDAsyncSocketDelegate>
{
    GCDAsyncSocket *_asyncSocket;
    
    int reConnectCount;
    
    dispatch_source_t _connectTimer;
    dispatch_queue_t _connectQueue;
    
    BOOL connectInterrupt;
    
    
    
}
+(instancetype)sharedInstance;
@property (nonatomic, copy)NSString *connectStatusStr;

- (BOOL)isFCDisConnect;
@property(nonatomic, assign)BOOL isFCConnect;

-(void)writeToFCTTCPWithData:(NSData *)data;

-(void)start;

-(void)stop;

-(void)disconnect;
@end

