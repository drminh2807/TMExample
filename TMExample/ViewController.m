//
//  ViewController.m
//  TMExample
//
//  Created by Minh DrMinh on 5/18/16.
//  Copyright © 2016 TMNI. All rights reserved.
//

#import "ViewController.h"
#import <FBSDKLoginKit/FBSDKLoginKit.h>
@interface ViewController ()<GIDSignInDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [GIDSignIn sharedInstance].uiDelegate = self;
    FBSDKLoginButton *loginButton = [[FBSDKLoginButton alloc] init];
    loginButton.center = self.view.center;
    [self.view addSubview:loginButton];
    GIDSignInButton *signInBtn = [GIDSignInButton new];
    signInBtn.center = CGPointMake(self.view.center.x, self.view.center.y+self.view.bounds.size.height*0.1);
    [self.view addSubview:signInBtn];
}
// Implement these methods only if the GIDSignInUIDelegate is not a subclass of
// UIViewController.

// Stop the UIActivityIndicatorView animation that was started when the user
// pressed the Sign In button
- (void)signInWillDispatch:(GIDSignIn *)signIn error:(NSError *)error {
    //[ stopAnimating];
}

// Present a view that prompts the user to sign in with Google
- (void)signIn:(GIDSignIn *)signIn
presentViewController:(UIViewController *)viewController {
    [self presentViewController:viewController animated:YES completion:nil];
}

// Dismiss the "Sign in with Google" view
- (void)signIn:(GIDSignIn *)signIn
dismissViewController:(UIViewController *)viewController {
    [self dismissViewControllerAnimated:YES completion:nil];
}
@end
