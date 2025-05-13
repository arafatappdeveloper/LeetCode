void main(){

  Solution sol=Solution();
  print(sol.threeSum([-1, 0, 1, 2, -1, -4]));
}

class Solution {
  List<List<int>> threeSum(List<int> nums) {
    Set<String> seen={};
    int n= nums.length;
    List<List<int>> result=[];

    for( int i= 0; i<n-2 ; i++){
      for(int j= i+1 ; j<n-1 ; j++){
        for( int k= j+1; k<n ; k++){
          if(nums[i]+ nums[j]+nums[k]==0){
           List<int>triplet=[nums[i],nums[j],nums[k]];
          triplet.sort();
           String key= triplet.join(',');
           if(!seen.contains(key)){
             seen.add(key);
             result.add(triplet);
           }


          }

        }
      }
    }
    return result;
  }
}