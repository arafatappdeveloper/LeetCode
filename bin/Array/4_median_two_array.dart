void main(){
  Solution sol= Solution();

  print(sol.findMedianSortedArrays([1,2], [3,4]));
}
class Solution {
  double findMedianSortedArrays(List<int> nums1, List<int> nums2) {
   List<int> marged = nums1+nums2..sort();
   print(marged);
   int n= marged.length;
   print(n);
     if(n%2 ==1){
       return marged[n~/2].toDouble();
     }else{
       return (marged[n~/2 -1]+marged[n~/2 ])/2;
     }
  }
}