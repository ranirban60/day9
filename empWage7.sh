isPartTime=1
isFullTime=2
maxHrsInMonth=4
empRatePerHr=20
numWorkingDays=20

totalEmpHr=0;
totalWorkingDays=0;

function getWorkingHours( ) {
case $1 in
        $isFullTime)
        workHours=8;;
         $isPartTime)
        workHours=4;;
	*)
	workHours=0;;
        esac
	echo $workHours
}

while [[ $totalWorkHours -lt $maxHrsInMonth &&
         $totalWorkingDays -lt $numWorkingDays ]]
do
       ((totalWorkingDays++))
	workHours="$( getWorkingHours $((RANDOM%3)) )"
	totalWorkHours=$(($totalWorkHours+$workHours))
done

totalSalary=$(($totalWorkHours+$empRatePerHr))
