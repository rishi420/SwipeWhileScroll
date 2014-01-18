SwipeWhileScroll
================

When tableView is scrolling user can swipe without the need to stop scrolling.



<p align="center"><img src="https://raw.github.com/rishi420/SwipeWhileScroll/master/github-assets/ScrollAndSwipe.gif"/></p>







This Project was created to answer of a StackOverflow question.

Cross Directional UIScrollViews - Can I Modify the Scrolling Behaviour?

**Here's how the scroll views work:** One scroll view is paging enabled in the horizontal direction. Each 'page' of this scroll view contains a vertically scrolling UITableView. Without modification, this works OK, but not perfectly. 

**The behaviour that's not right:** When the user scrolls up and down on the table view, but then wants to flick over to the next page quickly, the horizontal flick/swipe will not work initially - it will not work until the table view is stationary (even if the swipe is very clearly horizontal). 

**How it should work:** If the swipe is clearly horizontal, I'd like the page to change even if the table view is still scrolling/bouncing, as this is what the user will expect too. 

<br>
**How can I change this behaviour - what's the easiest or best way?**

<br>
**NOTE** For various reasons, a UIPageViewController as stated in some answers will not work. How can I do this with cross directional UIScrollViews (/one is a table view, but you get the idea)? I've been banging my head against a wall for hours - if you think you can do this then I'll more than happily award a bounty.



Answer:
================

Import 
1. ScrollViewSimultaneousGesture
2. TableViewScrollAndSwipe

Change:
1. UIScrollView Class to ScrollViewSimultaneousGesture Class
2. UITableView Class to TableViewScrollAndSwipe Class


