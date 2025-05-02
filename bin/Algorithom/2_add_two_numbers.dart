void main(){
  List<int> num1= [2,4,3];
   final l1= num1.reversed.toList();

  List<int> num2= [5,6,4];
  final l2= num2.reversed.toList();


  List<int> number = addTwonumber(l1, l2);
  print(number);

}

List<int>addTwonumber(List<int>l1, List<int>l2){
  List<int> results =[];
 int carry = 0;

 int maxlength = l1.length > l2.length ? l1.length :l2.length;
 for( int i =0 ; i<maxlength ; i++ ){
   int x= i<l1.length ? l1[i] : 0;
   int y= i<l2.length ? l2[i] : 0;

   int sum = x+y+carry ;
   results.add(sum % 10);
   carry = sum ~/10;
 }
 
 if(carry> 0){
   results.add(carry);
 }

  return results ;
}