EVS=`flowmaps-data covid19 list --only-ids`
echo $EVS

for ev in $EVS; do
	echo $ev
	FILENAME=data/$ev/$ev.covid-19.parquet
	mkdir -p data/$ev/
	flowmaps-data covid19 download --ev $ev --output-format parquet --output-file $FILENAME
done

