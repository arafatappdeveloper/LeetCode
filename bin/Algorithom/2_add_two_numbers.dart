void main(){

  List<int> l1= [2,3,4];
  List<int> l2= [5,6,7];

  ListNode? node1 =buildList(l1);
  ListNode? node2 =buildList(l2);
  ListNode? result = Solution().addTwoNumbers(node1, node2);

  printList(result);

}


class ListNode{
  int val ;
  ListNode?next ;
  ListNode([this.val =0 , this.next]);

}

 class Solution{


  ListNode?addTwoNumbers(ListNode?l1 , ListNode?l2){
    ListNode dummyHead = ListNode(0);
    ListNode current = dummyHead;
    int carry = 0;

    while(l1 !=null || l2!=null ||carry !=0 ){
      int val1=l1?.val?? 0;
      int val2=l2?.val?? 0;

      int sum = val1+val2+carry;
      carry = sum~/10;
      int digit =sum%10;

      current.next= ListNode(digit);
      current = current.next!;

      l1 =l1?.next;
      l2 = l2?.next;
    }
    return dummyHead.next;
  }

 }
// ✅ Convert List<int> to Linked List
ListNode? buildList(List<int> list) {
  if (list.isEmpty) return null;
  ListNode head = ListNode(list[0]);
  ListNode current = head;
  for (int i = 1; i < list.length; i++) {
    current.next = ListNode(list[i]);
    current = current.next!;
  }
  return head;
}

// ✅ Print linked list nicely
void printList(ListNode? node) {
  List<int> result = [];
  while (node != null) {
    result.add(node.val);
    node = node.next;
  }
  print(result); // Example: [7, 9, 1]
}
