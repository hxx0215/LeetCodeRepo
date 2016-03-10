
public class ListNode {
  public var val: Int
  public var next: ListNode?
  public init(_ val: Int) {
      self.val = val
      self.next = nil
  }
}
func deleteDuplicates(head: ListNode?) -> ListNode? {
    var ret = head
    var shouldRemove = head?.val
    while ret != nil {
        while ret!.next?.val == shouldRemove{
            ret!.next = ret!.next?.next
        }
        shouldRemove = ret!.next?.val
        ret = ret!.next
    }
    return head
}