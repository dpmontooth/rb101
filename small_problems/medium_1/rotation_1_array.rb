#input: array of string or integer objects
#output: rotated array with first element moved to end of array
#rules: original array should not be modified, don't use rotate or rotate! methods

#questions:
# - should the solution accommodate more than just integer or string?
# - should the solution accommodate an empty array?
# -- If so what is expected output?


#----- algorithm -------
# define method accepting single parameter arr
# --assign duplicate of array object to arr2
# --call array#shift method on array object referenced by arr2 and append return
# --- value to arr2 as last line in method for implicit return of answer array
#

# def rotate_array(arr1)
#   arr2 = arr1.dup
#   shifted = arr2.shift
#   arr2 << shifted
# end

def rotate_array_ls(arr1)
  arr1[1..-1] + [arr1[0]]
# arr1[1..-1] << arr[0]  my version, will not mutate array as slice returns new array
end

arr = [7, 3, 5, 2, 9, 1]
p rotate_array_ls(arr)

#test cases ------
p rotate_array_ls([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
p rotate_array_ls(['a', 'b', 'c']) == ['b', 'c', 'a']
p rotate_array_ls(['a']) == ['a']
