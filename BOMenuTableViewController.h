//
//  BOMenuTableViewController.h
//  UITableViewCellMenu
//
//  Created by Billy Öhgren on 7/23/12.
//  Copyright (c) 2012 Billy Ohgren. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BOMenuTableViewController : UITableViewController{
    @protected
    // Mutable array holding the items
    NSMutableArray *items_;
}

// Return height of the regular cell - defaults to 60.
- (CGFloat)tableView:(UITableView *)tableView heightForRegularCellAtIndexPath:(NSIndexPath *)indexPath;
// Return height of the menu cell - defaults to 40.
- (CGFloat)tableView:(UITableView *)tableView heightForMenuCellAtIndexPath:(NSIndexPath *)indexPath;
// Return your menu cell at index
- (UITableViewCell *)tableView:(UITableView *)tableView cellForMenuCellAtIndexPath:(NSIndexPath *)indexPath;
@end
