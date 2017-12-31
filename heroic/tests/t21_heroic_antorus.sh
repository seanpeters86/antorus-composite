# ./t21_heroic_antorus.sh [-i VALUE, -w]

ITERATIONS=10000
WEIGHTS=0
CORES=4
STATWEIGHTS=""
OUTPUT="antorus-composite.txt"

printf "    _       _                           \n   /_\  _ _| |_ ___ _ _ _  _ ___        \n  / _ \| ' \  _/ _ \ '_| || (_-<        \n /_/_\_\_||_\__\___/_|  \_,_/__/_       \n  / __|___ _ __  _ __  ___ __(_) |_ ___ \n | (__/ _ \ '  \| '_ \/ _ (_-< |  _/ -_)\n  \___\___/_|_|_| .__/\___/__/_|\__\___|\n                |_|                     \n"

while getopts "i:wc:o:" OPTION
do
	case $OPTION in
		i)
			# check if integer
      ITERATIONS=$OPTARG
      ;;
		w)
      echo "Running simulation with weights"
			# check if iterations is at least 10,000
			if [ $ITERATIONS < 10000 ]; then
				echo "Iterations count was set too low for stat weights. Setting interations to 10,000"
				ITERATIONS=10000
			fi
      WEIGHTS=1
      STATWEIGHTS="-s -n int,haste,crit,mastery,vers"
      ;;
		c)
			# check if integer
			CORES=$OPTARG
			;;
		o)
			# check if contains .txt at the end
			OUTPUT=$OPTARG
			;;
		\?)
			echo "Usage:"
      echo "       -i VALUE                      Set iteration count. Default is 10,000. and -w to enable stat weights"
      echo "       -w                            Enable stat weights. Default is not enabling stat weights."
			echo "       -c                            Set cores/threads count. Default is 4 cores."
			echo "       -o                            Set output file name. Default is antorus-composite.txt."
			exit
			;;
	esac
done

echo "Running simulation with $ITERATIONS iterations and $CORES cores. Outputing to $OUTPUT"
# -v 0 indicates 0 fight length variance. This is crucial due to how scripted the raid events are
python simca.py -p hc_garothi_worldbreaker.simc -f pw -i $ITERATIONS -t 300 $STATWEIGHTS -v 0 -b 1 -c $CORES -json -o HTML --resume-mode
python simca.py -p hc_felhounds_of_sargeras.simc -f pw -i $ITERATIONS -t 250 $STATWEIGHTS -v 0 -b 1 -c $CORES -json -o HTML --resume-mode
python simca.py -p hc_antoran_high_command.simc -f pw -i $ITERATIONS -t 480 $STATWEIGHTS -v 0 -b 1 -c $CORES -json -o HTML --resume-mode
python simca.py -p hc_portal_keeper_hasabel.simc -f pw -i $ITERATIONS -t 540 $STATWEIGHTS -v 0 -b 1 -c $CORES -json -o HTML --resume-mode
python simca.py -p hc_eonar.simc -f pw -i $ITERATIONS -t 350 $STATWEIGHTS -v 0 -b 1 -c $CORES -json -o HTML --resume-mode
python simca.py -p hc_imonar_the_soulhunter.simc -f pw -i $ITERATIONS -t 330 $STATWEIGHTS -v 0 -b 1 -c $CORES -json -o HTML --resume-mode
python simca.py -p hc_kingaroth.simc -f pw -i $ITERATIONS -t 500 $STATWEIGHTS -v 0 -b 1 -c $CORES -json -o HTML --resume-mode
python simca.py -p hc_varimathras.simc -f pw -i $ITERATIONS -t 300 $STATWEIGHTS -v 0 -b 1 -c $CORES -json -o HTML --resume-mode
python simca.py -p hc_coven_of_shivarra.simc -f pw -i $ITERATIONS -t 550 $STATWEIGHTS -v 0 -b 1 -c $CORES -json -o HTML --resume-mode
python simca.py -p hc_aggramar.simc -f pw -i $ITERATIONS -t 420 $STATWEIGHTS -v 0 -b 1 -c $CORES -json -o HTML --resume-mode 
python simca.py -p hc_argus_the_unmaker.simc -f pw -i $ITERATIONS -t 600 $STATWEIGHTS -v 0 -b 1 -c $CORES -json -o HTML --resume-mode
python simparser.py -c -r -o $OUTPUT
