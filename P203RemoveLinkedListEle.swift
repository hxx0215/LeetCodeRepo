func removeElements(head: ListNode?, _ val: Int) -> ListNode? {
    var h = head
    while h?.val == val{
        h = h?.next
    }
    var pref = h
    var now = h?.next
    while now != nil{
        if now!.val == val{
            pref?.next = now!.next
        }else{
            pref = now
        }
        now = now!.next
    }
    return h
}