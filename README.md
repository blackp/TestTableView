TestTableView
=============

Sample project to demonstrate UITableView dynamic cell height bug.

Cells have two multiline UILabels one on top of the other. Each label is populated with a random length string.

On first load the labels in the first few cells have incorrect heights.
After some scrolling, it appears everything is corrected (even cells that were initially incorrect).

Label backgrounds are coloured to make it easier to see if the label is appropriately sized for its text.

The background colour of one of the labels changes from yellow to green after it has been reused.
Incorrectly sized labels are still sometimes apparent after cell reuse.

