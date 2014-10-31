//
//  AppDelegate.m
//  SKHTMLParserBrokenExample
//
//  Created by Krapivenskiy Sergey on 31/10/14.
//  Copyright (c) 2014 Serkrapiv. All rights reserved.
//

#import "AppDelegate.h"
#import "HTMLParser.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    HTMLNode *brokenNode = [self nodeFromString:@"My content string"];
    
    /* Break here and check brokenNode's memory */
    
    return YES;
}

- (HTMLNode*)nodeFromString:(NSString*)string
{
    /* Creates parser which wraps string in <doc><html><body> tags */
    
    HTMLParser *parser = [[HTMLParser alloc] initWithString:string error:nil];
    
    /* Get contents of <body> tag and return it to parse later */
    
    HTMLNode *body = [parser body];
    return body;
}

@end
