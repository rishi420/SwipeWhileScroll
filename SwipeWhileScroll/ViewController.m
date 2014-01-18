//
//  ViewController.m
//  SwipeWhileScroll
//
//  Created by Warif Akhand Rishi on 1/18/14.
//  Copyright (c) 2014 Warif Akhand Rishi. All rights reserved.
//

#import "ViewController.h"
#import "ItemCell.h"


static NSString* const CellIdentifier = @"ItemCell";


@interface ViewController () <UIGestureRecognizerDelegate>

@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;
@property (weak, nonatomic) IBOutlet UITableView *tableView1st;
@property (weak, nonatomic) IBOutlet UITableView *tableView2nd;

@end


@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	
    self.scrollView.contentSize = CGSizeMake(self.view.frame.size.width * 2, self.view.frame.size.height);
    
    UINib *nib = [UINib nibWithNibName:@"ItemCell" bundle:nil];
    [[self tableView1st] registerNib:nib forCellReuseIdentifier:CellIdentifier];
    [[self tableView2nd] registerNib:nib forCellReuseIdentifier:CellIdentifier];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - UITableViewDelegate
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 50;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    ItemCell *cell =  [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    cell.labelTitle.text = [NSString stringWithFormat:@"%lu", (unsigned long)indexPath.row + 1];
    return cell;
}

@end
