#Part 2 

##Question1: Count the number of occurrences for each category (EX, RE, etc.)

     10 CR
     18 EN
      2 EX
    428 LC
     32 NT
      4 RE
     38 VU
```cut -d "," -f 10 European_Red_List.csv|tail -n +2|sort|uniq -c >> part-2-redlist.md```

#Question 2: Repeat the previous step, but only consider birds (class AVES)

     10 CR
     18 EN
      2 EX
    428 LC
     32 NT
      4 RE
     38 VU
```grep AVES European_Red_List.csv
   cut -d "," -f 10 Birds.csv| tail -n +2|sort|uniq -d -c >> part-2-redlist.md```
#Question 3: For each order of birds, compute the number of extinct/near extinct (EX, RE or CE) species


      2 EX
      4 RE
```cut -d "," -f 5 Birds.csv > order.csv
   cut -d "," -f 10 Birds.csv > rslist.csv
   paste order.csv rdlist.csv -d "_" > redls_orders.csv
   sort redls_orders.csv| uniq -d -c| grep "EX\|RE\|CE" >> part-2-redlist.md```


