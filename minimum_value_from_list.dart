void main(){
  List<int> numbers = [21,9,83,48,3,95,112,4,65,35,2];
  print(findMinimumNumber(numbers)); //calling custom function to find minimum number form the numbers list then print that number
}

// custom function to find minimum number in a given list by sorting with a reverse bubble sort but doing one iteration only to find the minimum value returning the first element in the list(the minimum value).
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