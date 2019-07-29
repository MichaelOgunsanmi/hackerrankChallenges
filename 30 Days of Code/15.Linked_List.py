class Node:
    def __init__(self,data):
        self.data = data
        self.next = None 
class Solution: 
    def display(self,head):
        current = head
        while current:
            print(current.data)
            current = current.next
    
    def insert(self, head, data):
        self.head = head
        new_node = Node(data)
        new_node.next = self.head 
        self.head = new_node





mylist= Solution()
T= 3
head=None
for i in range(T):
   
    data=4
    head=mylist.insert(head,data)   
mylist.display(head); 	    
