package js.npm;

@:jsRequire('node-interval-tree', 'default')
extern class DataIntervalTree<T> {
  /**
    Create a new IntervalTree.
   **/
  public function new();

  /**
    Insert an interval with associated data into the tree. Intervals with the same low and high value can be inserted, as long as their data is different. Data can be any JS primitive or object. low and high have to be numbers where low <= high (also the case for all other operations with low and high).
    Returns true if successfully inserted, false if nothing inserted.
   **/
  public function insert(low:Float, high:Float, data:T):Bool;

  /**
    Search all intervals that overlap low and high arguments, both of them inclusive. Low and high values don't need to be in the tree themselves.
    Returns an array of all data objects of the intervals in the range [low, high]; doesn't return the intervals themselves.
   **/
  public function search(low:Float, high:Float):Array<T>;

  /**
    Remove an interval from the tree. To remove an interval, all arguments must match the one in the tree.
    Returns true if successfully removed, false if nothing removed.
   **/
  public function remove(low:Float, high:Float, data:T):Bool;
}
