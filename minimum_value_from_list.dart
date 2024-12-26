void main(){
  List<int> numbers = [21,9,83,48,3,95,112,4,65,35,2];
  print(findMinimumNumber(numbers));

}

int findMinimumNumber(List<int> array){
  for(int i = array.length-1; i > 0; i--){
    if(array[i] < array[i-1]){
      int temp = array[i];
      array[i] = array[i-1];
      array[i-1] = temp;
    }
  }
  return array[0];
}