isParttime=1
isFullTime=2
maxHrsInMonth=10
empRatePerHr=20
numWorkingDays=20

totalEmpHr=0;
totalWorkingDays=0;

while [[ $totalEmpHr -lt $maxHrsInMonth &&
	 $totalWorkingDays -lt $numWorkingDays ]]
do
	((totalWorkingDays++))
	empCheck=$((RANDOM%3))
	case $empCheck in 
	$isFullTime)
	empHrs=8;;
	 $isPartTime)
        empHrs=4;;
	*)
	empHrs=0;;
	esac
	totalEmpHrs=$(( $totalEmpHrs+$empHrs ))
	done
totalSalary=$(($totalEmpHrs+$empRatePerHr))
