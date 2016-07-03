//
//  ServerManager.m
//  Coordinators
//
//  Created by Brusnikin on 29.06.16.
//  Copyright © 2016 Brusnikinapps. All rights reserved.
//

#import "ServerManager.h"
#import <OHHTTPStubs/OHHTTPStubs.h>
#import <OHHTTPStubs/OHPathHelpers.h>

@implementation ServerManager

- (instancetype)init
{
    self = [super init];
    if (self) {
        [self installTextStub];
        [OHHTTPStubs onStubActivation:^(NSURLRequest * _Nonnull request, id<OHHTTPStubsDescriptor>  _Nonnull stub, OHHTTPStubsResponse * _Nonnull responseStub) {
            NSLog(@"[OHHTTPStubs] Request to %@ has been stubbed with %@", request.URL, stub.name);
        }];
    }
    return self;
}

- (void)installTextStub
{
    static id<OHHTTPStubsDescriptor> textStub = nil; // Note: no need to retain this value, it is retained by the OHHTTPStubs itself already
    
    // Install
    textStub = [OHHTTPStubs stubRequestsPassingTest:^BOOL(NSURLRequest *request) {
        // This stub will only configure stub requests for "*.txt" files
        return [request.URL.pathExtension isEqualToString:@"txt"];
    } withStubResponse:^OHHTTPStubsResponse *(NSURLRequest *request) {
        // Stub txt files with this
        return [[OHHTTPStubsResponse responseWithFileAtPath:OHPathForFile(@"stub.txt", self.class)
                                                 statusCode:200
                                                    headers:@{@"Content-Type":@"text/plain"}]
                                                requestTime:2.f
                                               responseTime:OHHTTPStubsDownloadSpeedWifi];
    }];
    textStub.name = @"Text stub";
    
}

-(void)loadDataFromServer {
    
    NSString *urlString = @"http://www.opensource.apple.com/source/Git/Git-26/src/git-htmldocs/git-commit.txt?txt";
    NSURLRequest *req = [NSURLRequest requestWithURL:[NSURL URLWithString:urlString]];
    
    // This is a very handy way to send an asynchronous method, but only available in iOS5+
    [NSURLConnection sendAsynchronousRequest:req
                                       queue:[NSOperationQueue mainQueue]
                           completionHandler:^(NSURLResponse* resp, NSData* data, NSError* error)
     {
         
         NSString *receivedText = [[NSString alloc] initWithData:data encoding:NSASCIIStringEncoding];
         NSLog(@"%@", receivedText);
     }];
}



@end
