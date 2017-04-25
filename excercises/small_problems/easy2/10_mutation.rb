# It will print Moe, Larry, CURLY, SHEMP, Harpo, CHICO, Groucho, Zeppo one after the other.
# This is because array2 contains the same objects that are contained in array1.
# Some of those objects are mutated by the upcase! method. When the contents of 
# array2 are referenced, we are pointed to those mutated objects.