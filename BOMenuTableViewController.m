//
//  BOMenuTableViewController.m
//  UITableViewCellMenu
//
//  Created by Billy Öhgren on 7/23/12.
//  Copyright (c) 2012 Billy Ohgren. All rights reserved.
//

#import "BOMenuTableViewController.h"
#import "BOMenuCell.h"
@interface BOMenuTableViewController (){
    NSIndexPath *menuIndexPath;
}
@end

@implementation BOMenuTableViewController

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    return items_.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    id object = [items_ objectAtIndex:indexPath.row];
    if ([object isKindOfClass:[BOMenuCell class]]) {
        return [self tableView:tableView cellForMenuCellAtIndexPath:indexPath];
    }
    return nil;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    id object = [items_ objectAtIndex:indexPath.row];
    if ([object isKindOfClass:[BOMenuCell class]]) {
        return [self tableView:tableView heightForMenuCellAtIndexPath:indexPath];
    }
    return 60.0;
}


#pragma mark - Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (menuIndexPath == nil) {
        menuIndexPath = [NSIndexPath indexPathForRow:indexPath.row+1 inSection:indexPath.section];
        [items_ insertObject:[[BOMenuCell alloc] init] atIndex:menuIndexPath.row];
        [tableView insertRowsAtIndexPaths:[NSArray arrayWithObject:menuIndexPath] withRowAnimation:UITableViewRowAnimationBottom];
    } else if (indexPath == menuIndexPath) {
        NSLog(@"pressed at menu item");
    } else {
        [items_ removeObjectAtIndex:menuIndexPath.row];
        [tableView deleteRowsAtIndexPaths:[NSArray arrayWithObject:menuIndexPath] withRowAnimation:UITableViewRowAnimationTop];
        menuIndexPath = nil;
    }
}

#pragma mark - BOMenuTableViewController Methods

- (CGFloat)tableView:(UITableView *)tableView heightForMenuCellAtIndexPath:(NSIndexPath *)indexPath
{
    return 40;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForMenuCellAtIndexPath:(NSIndexPath *)indexPath
{
    NSString *menuCellIdentifier = @"menuCell";
    UITableViewCell *menuTableViewCell = [tableView dequeueReusableCellWithIdentifier:menuCellIdentifier];
    if (menuTableViewCell == nil) {
        menuTableViewCell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:menuCellIdentifier];
    }
    menuTableViewCell.textLabel.text = [NSString stringWithFormat:@"Menu for nr %i",indexPath.row-1];
    return menuTableViewCell;
}

@end
