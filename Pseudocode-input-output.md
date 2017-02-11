
## Pseudocode-input-output

*** Convert Celcius to Farenheit of temperature of cockroach container.***
* Used in case of need a farenheit data for other calculations*

celcius= Gets input of temeperature inside of cockroach container.
Farenheit= This variable gets celcius value and calculate into farenheit values. store into Farenheit variable which is calculated that (celcius value-32)*(5/9). Arithmetic expression would be enough.
Average= calculate average 4 different farenheit temperatures of containers.
values are given from Farenheit variable values.

*** Measure the time of movement of cockroaches.***
*Measure the time from starting point to endpoint(sweet spot) to measure circadian rhythm*

6 different cockroaches are in 4 different experiment group each. Total 24 data collected.

Make two lists. The one name as 'cockroaches' and 'time'.
Then cockroaches are keys and time is values dictionary.
cockroaches = empty list.
cockroaches.append which experiment group and which color filter it is used as name.
simply as B1m(B stands for blue, 1 is just numbered, and m means male).

After done with cockroaches, append time for each cockroaches.

converttime= input the time with minutes and seconds. I will use second unit only. so minute should be converted to seconds. time variable gets seconds only therefore. It converts minutes to seconds.

time.append *is measured time in second.*

zip(cockroaches and time lists are zipped as one dictionary.).

timedictionary= zipped dictionary data stored in it with new variable name.

sorted_timedictionary= sort dictionary not by keys but values.

print out data of both keys and values in sorted_timedictionary.





*** Sort light intensity values ***
4 different experiment groups are exposed to the different colored lights then
it means light intensities are not identical. So I need a data of light intensities
of cockroaches in each group. LUX meter used, so unit doesn't need to be converted, and
keep values wiht unit lux(lx).

*I won't create new lists of roaches, but reuse the cockroach list i already made as key.
create list for light intensities.*

lightintensity= create empty list.
lightintensity.append *input light intensity values of each cockroaches.*

*call cockroaches list and make it pair with lightintenisty list*

lightintensity. use 'items' command to pair key and value pairs.

print out the paired values.
