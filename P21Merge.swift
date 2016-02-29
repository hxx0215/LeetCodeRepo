//
//  P21Merge.swift
//  
//
//  Created by ShadowFox on 2/29/16.
//
//

import Foundation
public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init(_ val: Int) {
        self.val = val
        self.next = nil
    }
}
class Solution {
    func mergeTwoLists(l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        var ret : ListNode? = nil
        var h1 = l1
        var h2 = l2
        var retList : ListNode? = nil
        while (h1 != nil && h2 != nil){
            if h1!.val < h2!.val{
                if ret != nil{
                    ret!.next = h1!
                    ret = ret!.next
                }else{
                    ret = h1!
                    retList = ret
                }
                h1 = h1!.next
            }else{
                if ret != nil{
                    ret!.next = h2!
                    ret = ret!.next
                }else{
                    ret = h2!
                    retList = ret
                }
                h2 = h2!.next
            }
        }
        if h1 != nil{
            if ret != nil{
                ret?.next = h1
            }else{
                retList = h1
            }
        }else{
            if ret != nil{
                ret?.next = h2
            }else{
                retList = h2
            }
        }
        return retList
    }
}
