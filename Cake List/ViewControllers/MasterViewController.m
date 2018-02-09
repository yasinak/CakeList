//
//  MasterViewController.m
//  Cake List
//
//  Created by Stewart Hart on 19/05/2015.
//  Copyright (c) 2015 Stewart Hart. All rights reserved.
//

#import <AFHTTPSessionManager.h>
#import "MasterViewController.h"
#import "CakeCell.h"
#import "UIImageView+AFNetworking.h"
#import "Constants.h"
#import "Cakes.h"

@interface MasterViewController ()

@property (strong, nonatomic) Cakes *cakes;
@property (nonatomic,weak) IBOutlet UITableView*tableview;

@end

@implementation MasterViewController

#pragma mark - UIViewController methods
- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.tableView.rowHeight = UITableViewAutomaticDimension;
    self.tableView.estimatedRowHeight = 60;
    
    [self getData];
}

#pragma mark - UITableView methods
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.cakes.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    CakeCell *cell = (CakeCell*)[tableView dequeueReusableCellWithIdentifier:@"CakeCell"];
    
    Cake *cake = self.cakes[indexPath.row];
    cell.titleLabel.text = cake.title;
    cell.descriptionLabel.text = cake.desc;
 
    NSURL *aURL = [NSURL URLWithString:cake.image];
    [cell.cakeImageView setImageWithURL:aURL];
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
}

#pragma mark - Fetch Data methods
- (void)getData{
    
    AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
    manager.responseSerializer.acceptableContentTypes = [NSSet setWithObjects: @"text/json",@"text/plain", nil];
    [manager GET:CAKE_URL parameters:nil progress:nil success:^(NSURLSessionTask *task, id responseObject) {
        
        self.cakes = [[Cakes alloc] initWithArray:responseObject];
        [self.tableView reloadData];
        
    } failure:^(NSURLSessionTask *operation, NSError *error) {
        
        [self presentAlert:error];
        
    }];
    
}

#pragma mark - Other methods
-(void) presentAlert:(NSError*)error{
    
    UIAlertController* alert = [UIAlertController alertControllerWithTitle:@"Download Alert" message:error.description preferredStyle:UIAlertControllerStyleAlert];
    
    UIAlertAction* defaultAction = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler:^(UIAlertAction * action) {}];
    
    [alert addAction:defaultAction];
    [self presentViewController:alert animated:YES completion:nil];
}

@end
