Q1)Print multiplication table using for loop.
1 X 2 = 2
2 X 2 = 4

{ ~ }  » vi multiply.sh
echo 'Multiplication Table'
echo 'Enter number: '
read num

for ((i=1; i<=10; i++))
do
a=$(($i*$num))
echo -n  $i ' X ' $num ': ' $a
echo ''
done

{ ~ }  » chmod 777 multiply.sh
{ ~ }  » ./multiply.sh
Multiplication Table
Enter number:
2
1  X  2 :  2
2  X  2 :  4
3  X  2 :  6
4  X  2 :  8
5  X  2 :  10
6  X  2 :  12
7  X  2 :  14
8  X  2 :  16
9  X  2 :  18
10  X  2 :  20


Q2)
     *
    ***
   *****
  *******
 *********
  *******
   *****
    ***
     *

{ ~ }  » vi starpattern.sh
echo "Enter number of rows: "
read rows

//top
for (( i=1; i<=rows; i++))
do
for(( j=i; j<rows; j++))
do
echo -n " "
done
for (( k=1; k<=((2*i-1)); k++))
do
echo -n "*"
done
echo 
done	 

//bottom
for (( i=rows-1; i>=1; i--))
do
for(( j=rows; j>i; j--))
do
echo -n " "
done
for (( k=1; k<=((2*i-1)); k++))
do
echo -n "*"
done
echo
done

{ ~ }  » chmod 777 starpattern.sh
{ ~ }  » ./starpattern.sh
Enter number of rows:
5

    *
   ***
  *****
 *******
*********
 *******
  *****
   ***
    *

Q3)sum of the first 10 fibbonacci series

{ ~ }  » vi fibonacciSum.sh

a=0
b=1

for (( i=0; i<10; i++))
do echo $a
echo ""
c=$(($a+$b))
sum=$(($sum+$a))
a=$b
b=$c
done

echo "Sum of the first 10 fibbonacci numbers: "  $sum

{ ~ }  » chmod 777 fibonacciSum.sh
{ ~ }  » ./fibonacciSum.sh
0

1

1

2

3

5

8

13

21

34

Sum of the first 10 fibbonacci numbers:  88


Q4)sum of prime numbers from 1 to 100

{ ~ }  » vi PrimeSum.sh

sum=0

for (( num=2; num<=100; num++ ))
do
    is_prime=1
    for (( i=2; i*i<=num; i++ ))
    do
        if (( num % i == 0 )); then
            is_prime=0
            break
        fi
    done

    if (( is_prime == 1 )); then
        sum=$((sum + num))
    fi
done

echo "Sum of prime numbers from 1 to 100 is: $sum"

{ ~ }  » chmod 777 PrimeSum.sh
{ ~ }  » ./PrimeSum.sh
Sum of prime numbers from 1 to 100 is: 1060