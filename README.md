# Haxe/hxnodejs externs for the [node-interval-tree](https://www.npmjs.com/package/node-interval-tree) npm library

Tested using `node-interval-tree` version **1.3.3**

Example:
```haxe
import js.npm.IntervalTree;

var intervalTree = new IntervalTree();
intervalTree.insert(low, high, data);
var results = intervalTree.search(low, high);
```
