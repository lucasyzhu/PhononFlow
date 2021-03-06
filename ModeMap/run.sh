#/bin/bash -l

for MODE in 1 #update with the number of modes that are of interest
do
	cd $MODE
	echo MODE $MODE

	for NUM in {002..012} #update with the number of MPOSCAR
	do
		echo $NUM 
   		cd  $NUM
		qsub modemap.job
   		cd ../
   		sleep 1
	done
	for NUM in {014..024} #update with the number of MPOSCAR
	do
		echo $NUM 
   		cd  $NUM
		qsub modemap.job
   		cd ../
   		sleep 1
	done
done
