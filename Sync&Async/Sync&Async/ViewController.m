//
//  ViewController.m
//  Sync&Async
//
//  Created by JETS Mobile Lab on 4/22/19.
//  Copyright © 2019 ITI. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
- (IBAction)Async:(UIButton *)sender;
- (IBAction)Sync:(UIButton *)sender;
@property (strong, nonatomic) IBOutlet UITextView *mtTxtView;

@property (strong, nonatomic) IBOutlet UIWebView *myWebView;


@end

@implementation ViewController
NSMutableData * dataRecieve ;
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (IBAction)Async:(UIButton *)sender {
    
     NSURL *URL =[NSURL URLWithString:@"https://maktoob.yahoo.com"];
    NSURLRequest * request = [NSURLRequest requestWithURL:URL];
    [_myWebView loadRequest:request];
    NSURLConnection * connection = [[NSURLConnection alloc] initWithRequest:request delegate:self];
    [connection start];
}
-(void) connection:(NSURLConnection *)connection didReceiveResponse:(NSURLResponse *)response{
    dataRecieve = [NSMutableData new];
    printf("didRecieveResponse\n");
    
}
- (void)connection:(NSURLConnection *)connection didReceiveData:(NSData *)data{
   printf("didRecieveData\n");
   // NSString *str = [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
    
    [dataRecieve appendData:data];
    
}

- (void)connectionDidFinishLoading:(NSURLConnection *)connection{
    NSString *str = [[NSString alloc] initWithData:dataRecieve encoding:NSUTF8StringEncoding];
    [_mtTxtView setText:str];
}

- (void)connection:(NSURLConnection *)connection didFailWithError:(NSError *)error{
    printf("didFailWithError\n");
}


- (IBAction)Sync:(UIButton *)sender {
    NSURL * URL =[NSURL URLWithString:@"https://maktoob.yahoo.com"];
    NSString *str = [[NSString alloc] initWithContentsOfURL:URL encoding:NSUTF8StringEncoding error:nil];
    [_myWebView loadHTMLString:str baseURL:URL];
    [_mtTxtView setText:str];
    
}



@end
