'From Cuis6.3 [latest update: #6350] on 31 May 2024 at 4:59:58 pm'!
'Description '!
!provides: 'ChaltenTerseGuide' 1 0!
!requires: 'TerseGuide' 1 147 nil!
!requires: 'Chalten' 1 19 nil!
SystemOrganization addCategory: #ChaltenTerseGuide!


!classDefinition: #ChaltenTerseGuideTopic category: #ChaltenTerseGuide!
TerseGuideTopic subclass: #ChaltenTerseGuideTopic
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ChaltenTerseGuide'!
!classDefinition: 'ChaltenTerseGuideTopic class' category: #ChaltenTerseGuide!
ChaltenTerseGuideTopic class
	instanceVariableNames: ''!


!ChaltenTerseGuideTopic methodsFor: 'accessing' stamp: 'SG 5/28/2024 23:17:48'!
examples
	^ {
		{#code -> '"A point based model of the Gregorian Calendar"
"https://www.dropbox.com/s/kjczqs05jk9olk7/article.pdf?e=1&dl=0"

| januaryFirst2024 januarySecond2024 today januaryFirst2024AtMidnight januaryFirst2024AtNoon january2024 january januaryFirst monday todayAtMidnight midnight currentDateTime first12HoursOf2024 |

"Dates are instances of FixedGregorianDate. There are different ways to instantiate it"
januaryFirst2024 := FixedGregorianDate yearNumber: 2024 monthNumber: 1 dayNumber: 1.
januaryFirst2024 := January first, 2024.
januaryFirst2024 := January/1/2024.
januarySecond2024 := januaryFirst2024 next. "Returns the next date"
januaryFirst2024 previous. "Returns December/31/2023"
januaryFirst2024 next: 10*day. "Returns 10 days from January/1/2024, that is January/11/2024"
januaryFirst2024 previous: 10*day. "Returns 10 days previous January/1/2024, that is December/22/2023"
januaryFirst2024 next: 1*month. "Returns same date but of next month"
januaryFirst2024 previous: 1*month. "Returns same date but of previous month"
today := FixedGregorianDate today. "Getting the current date"

"You can access related calendar entities such as..." 
januaryFirst2024 month.
januaryFirst2024 monthOfYear.
januaryFirst2024 day.
januaryFirst2024 dayNumber.
januaryFirst2024 dayOfMonth.
januaryFirst2024 year.
januaryFirst2024 yearNumber.
 
"Testing the date components"
januaryFirst2024 isMonday. 
januaryFirst2024 isJanuary.
januaryFirst2024 isFirstDayOfYear. 
januaryFirst2024 isFirstDayOfMonth. 

"Calculating distance between dates"
januaryFirst2024 distanceFrom: januarySecond2024. 
januarySecond2024 distanceTo: januaryFirst2024. 

"Comparing dates"
januaryFirst2024 = januarySecond2024. "Returns false"
januarySecond2024 > januaryFirst2024. "Returns true"

"Creating an instance for a month of year"
january2024 := GregorianMonthOfYear januaryOf: (GregorianYear number: 2024).
january2024 := January, 2024.

"Accessing related entities of a month of year such as..." 
january2024 month.
january2024 name.
january2024 year.
january2024 monthNumber.
january2024 firstDay.
january2024 numberOfDays.

"One can also instantiate a month without an associated year, all of the above messages can be used except #year"
january := JanuaryGregorianMonth new.

"But there is no need to do it because global objects are already defined for each month, such as..."
January.
February.
March.
"etc..."

"Creating an instance of a day of week such as Monday"
monday := GregorianDay monday.

"But there is no need to do it because, as the months, global objects are already defined for each day of week, such as..."
Monday.
Tuesday.
Wednesday.
"etc..."

"Accessing its related entities such as... "
Monday positionInWeek.
Monday numberOfDaysSinceSunday.

"Creating a day of month"
januaryFirst := GregorianDayOfMonth monthNumber: 1 dayNumber: 1.
januaryFirst := January first.

"Accessing its related entities such as... "
januaryFirst numberOfDaysFromBeginningOfMonth. "Returns 0 * days"
januaryFirst numberOfDaysFromJanuaryFirst. "Returns 0 * days"
januaryFirst numberOfDaysToEndOfMonth. "Returns 30 * days"
januaryFirst numberOfDaysToEndOfYear. "Returns 365 * days"

"A TimeOfDay creation"
midnight := TimeOfDay hours: 0 minutes: 0 seconds: 0. 

"Another way of creating a midnight time of day instance"
midnight := TimeOfDay firstTimeOfDay.

"Accessing the related entities such as..."
midnight hours.
midnight minutes.
midnight seconds.

"Date times are instances of GregorianDateTime"
januaryFirst2024AtMidnight := January/1/2024 at: 00:00:00.
 
"More date time creations"
januaryFirst2024AtMidnight := januaryFirst2024 atMidnight. 
januaryFirst2024AtMidnight := januaryFirst2024 atTimeOfDay: midnight .
januaryFirst2024AtNoon:= januaryFirst2024 atNoon.
todayAtMidnight := GregorianDateTime date: today timeOfDay: midnight.
currentDateTime := GregorianDateTime now.

"You can access the related entities of a date time such as..."
januaryFirst2024AtMidnight timeOfDay.
januaryFirst2024AtMidnight date. "Returns a FixedGregorianDate date"
januaryFirst2024AtMidnight date year. "You first need to get the FixedGregorianDate instance to ask for the day, year, month, etc."

"Querying time date distances"
januaryFirst2024AtMidnight timeFromMidnight. 
januaryFirst2024AtMidnight timeToEndOfDay.

"Creating a date time going back or forward in time from another date time"
januaryFirst2024AtMidnight next: 15*minute.
januaryFirst2024AtMidnight previous: 1*second.

"Testing two time dates"
januaryFirst2024AtMidnight sameDayAs: januaryFirst2024AtNoon.
januaryFirst2024AtMidnight < januaryFirst2024AtNoon.

"Querying their distances"
januaryFirst2024AtMidnight distanceFrom: januaryFirst2024AtNoon.
januaryFirst2024AtMidnight distanceTo: januaryFirst2024AtNoon.

"Creating a timespan"
first12HoursOf2024 := GregorianTimespan from: januaryFirst2024AtMidnight duration: (12*hour).

"Accessing the colaborators of a time span"
first12HoursOf2024 duration.
first12HoursOf2024 from.
 '. #category -> ' '. #description -> ''} as: Dictionary
	}.! !

!ChaltenTerseGuideTopic methodsFor: 'accessing' stamp: 'SG 5/28/2024 10:35:01'!
title
	^'Chalten Time Model'! !
