#Part 1

##Question 1: Find the number of winners for each Nobel prize

    181 "chemistry"
     81 "economics"
    114 "literature"
    216 "medicine"
    133 "peace"
    210 "physics"

```cut -d "," -f 3 nobel.csv| tail -n +2|sort| uniq -c >> part-1-nobel.md```

##Question 2: Find the winners of multiple Nobel prizes

      3 "Comité international de la Croix Rouge (International Committee of the Red Cross)"_NA
      2 "Frederick"_"Sanger"
      2 "John"_"Bardeen"
      2 "Linus Carl"_"Pauling"
      2 "Marie"_"Curie
      2 "Office of the United Nations High Commissioner for Refugees (UNHCR)"_NA

```cut -d "," -f 5 nobel.csv > firstname.csv
   cut -d "," -f 6 nobel.csv > surname.csv
   paste firstname.csv surname.csv -d "_" > winners.csv
   sort winners.csv|uniq -d -c >> part-1-nobel.md```


#Question 3: Find the most common surnames among the winners

      2 "Office of the United Nations High Commissioner for Refugees (UNHCR)"_NA
      2 "Marie"_"Curie
      2 "Linus Carl"_"Pauling"
      2 "John"_"Bardeen"
      2 "Frederick"_"Sanger"

```cut  -d "_" -f 2 winners.csv|sort|uniq -d -c| sort -r -n|tail -n +2| head -6 >> part-1-nobel.md```


#Question 4: The Nobel prizes have not been awarded every year since 1901. Which one has been awarded the most? Which the least

    216 "medicine"
    210 "physics"
    181 "chemistry"
    133 "peace"
    114 "literature"
     81 "economics"

``` cut -d "," -f 3 nobel.csv|tail -n +2|sort|uniq -c|sort -r -n```

