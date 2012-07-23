BOMenuTableViewController
=========================

A subclass of UITableViewController with the ability to show a menu under the selected cell (In ARC).

I got the inspiration from the wonderful Twitter client Tweetbot and thought this would be a good first project to put on github.

Be aware that I coded this in under an hour, there's a lot to improve...

![BOMenuTableViewController](https://github.com/billyohgren/BOMenuTableViewController/blob/master/screenshot/BOMenuTableViewController.png)

Instructions:

Make a subclass of "BOMenuTableViewController" and populate the NSMutableArray called "items_" with your objects.

Implement the method
- (UITableViewCell *)tableView:(UITableView *)tableView cellForMenuCellAtIndexPath:(NSIndexPath *)indexPath 
and return your menu cell.

I think that the DemoViewController speak for itself...

Known issues:

Can't set the height of the menu cell

In the future:

I will fix some bugs and the height issue and maybe code it for non-ARC users as well.