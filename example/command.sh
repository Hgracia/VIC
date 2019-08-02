#!/bin/bash
main="/Users/muqingyan/Documents/Simceredx"
annovar="${main}/wcancer_test/hysql/biotools/annovar"
##For Avinput files
java -jar "${main}/program_2/VIC/target/VIC-1.0-jar-with-dependencies.jar" \
	-b hg19 \
	-i ./vic_test1.avinput \
	-o ./vic_test1 \
	-input_type avinput \
	-db ${main}/program_2/VIC/vicdb \
	-table_annovar ${annovar}/table_annovar.pl \
	-convert2annovar ${annovar}/convert2annovar.pl \
	-annotate_variation ${annovar}/annotate_variation.pl \
	-d ${annovar}/humandb \
	-otherinfo true \
	-s vic_test1.evidence_file
#	-skip_annovar
###For VCF file
#java -jar "${main}/VIC/dist/VIC.jar" \
#	-b hg19 \
#	-i ${main}/VIC/example/vic_test2.vcf \
#	-o ${main}/VIC/example/vic_test2_vcf \
#	-input_type avinput \
#	-db ${main}/VIC/vicdb \
#	-table_annovar ${annovar}/table_annovar.pl \
#	-convert2annovar ${annovar}/convert2annovar.pl \
#	-annotate_variation ${annovar}/annotate_variation.pl \
#	-d ${annovar}/humandb \
#	-otherinfo true
###For Avinput files
#java -jar "${main}/program/VIC/target/VIC-1.0-jar-with-dependencies.jar" \
#	-b hg19 \
#	-i ${main}/program/VIC/example/vic_test4.vcf \
#	-o ${main}/program/VIC/example/vic_test4.vcf_m \
#	-input_type vcf_m \
#	-db ${main}/program/VIC/vicdb \
#	-table_annovar ${annovar}/table_annovar.pl \
#	-convert2annovar ${annovar}/convert2annovar.pl \
#	-annotate_variation ${annovar}/annotate_variation.pl \
#	-d ${annovar}/humandb \
#	-otherinfo true \
#	-skip_annovar
