#This .sh file is to run Mutect to call mutations. By Chong Jennifer Zhang. 20160902
/your_path_to/java -Xmx12g -jar /your_path_to/muTect-1.1.4.jar \
     -T MuTect \
     -R /your_path_to/hg19.fa \
     --dbsnp /your_path_to/dbsnp.vcf \
     --intervals /your_path_to/variation.merge.bed \
     --input_file:normal $1 \
     --input_file:tumor $2 \
     --out $3.out \
     --vcf $3.out.vcf \
     --required_maximum_alt_allele_mapping_quality_score 20 \
     --max_alt_alleles_in_normal_count 1 \
     --max_alt_allele_in_normal_fraction 0.02\
     --cosmic /your_path_to/CosmicCodingMuts_v61.chr.sort.vcf
