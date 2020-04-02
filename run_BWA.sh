#This .sh is for running BWA for pair-end fastq sequencing data. By Chong Jennifer Zhang. 20160901

samtoolspath="/your_path_to/samtools"
bwarun="/your_path_to/SangerQ-bwaRunnerforhumanG"
outdir=$3
fq1=$1
fq2=$2
prefix=$outdir/`basename $fq1`

mkdir -p $outdir
echo start: `date`
python $bwarun PE -x 500  -d $outdir  /your_reference_fold/hg19.fa.gz  $fq1 $fq2
echo sam to bam  : `date`
$samtoolspath view -Sb $prefix.sam.gz > $prefix.bam
rm  $prefix.sam.gz
echo sort : `date`
$samtoolspath sort  $prefix.bam   $prefix.sort
rm $prefix.bam
echo end: `date`
