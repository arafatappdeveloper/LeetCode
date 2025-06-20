import 'package:test/expect.dart';

void main(){
//[2,7,11,15]

Solution solution= Solution();
print(solution.twoSum([-1,0], -1));
}

class Solution {
  List<int> twoSum(List<int> numbers, int target) {
   int left =0;
   int right =numbers.length -1;


   while(left<right){
     int sum= numbers[left]+numbers[right];
     if(sum==target){
       return [left+1 , right+1];
     } else if(sum<target){
       left++;
     }else{
       right--;
     }
   }
   return [];
  }
}