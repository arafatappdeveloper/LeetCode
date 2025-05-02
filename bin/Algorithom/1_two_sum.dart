void main(){
  List<int> number = [2,7,11,15];
  int target = 9;
List<int> result = twoSum(number, target);
print(result);

}
List<int> twoSum(List<int> number , int target ){

  for(int i=0; i<number.length ; i++){
    for(int j= i+1; j<number.length ; j++){
      if(number[i] + number[j] == target){
        return [i,j];
      }
    }
  }
  return [];
}