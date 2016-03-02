class Solution {
    func removeNthFromEnd(head: ListNode?, _ n: Int) -> ListNode? {
        var deleteNext : ListNode? = nil
        var currentNode = head
        var inputn = n + 1
        while (inputn > 0)&&(currentNode != nil){
            inputn = inputn - 1
            currentNode = currentNode?.next
        }
        if inputn > 0 {
            return head?.next
        }
        deleteNext = head
        while currentNode != nil{
            currentNode = currentNode?.next
            deleteNext = deleteNext?.next
        }
        deleteNext?.next = deleteNext?.next?.next
        return head
    }
}