
## Data manipulation over a loop.
*** update data using loops ***
There are two data sets i wanto convert and update the values in the list.

*update temperature data*
'temperature' is a list of temperature.
forloop gets data from the first index(temperature[0])
    newtemp= gets the converted value from celcius to farenheit.
    append to the new empty list 'ftemp'

*The reason that create another list for farenheit values is to keep celcius
data of cockroaches*

After for loop, zip the ftemp list with cockroach list to create
new dictionary.

*update time data*
using a for loop and if statement, It will manipulate measured time data of each cockroaches.
and completely replace with the original data in the dictionary since i won't keep 'minute' unit in my 
data set.

for measured time data from the first index.
    if measured time is less than minute,
        store the original value to the index. nothing changed.
    else convert minute to seconds and add up to the remaining second value.
         and then store the data into the index.

*by combine for and if-else statement, I am able to see which data should be changed*



*find average value of light intensity using while loop*

light intensities value are stored in the list, and average value is need whether if it affect
the temperature and circadian rhythm of cockroaches.

while It shouldn't be infinite loop or less than 24 loop. have to be 24 loop exactly.
    sum= initial value is 0. and add up the light intensity value of each index.

After the loop. Sum result avaerage value divided by 24. unit is lux(lb).
    

