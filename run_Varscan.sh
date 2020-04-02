#This .sh file is to run Verscan on pileup files.

output-normal_pileup=$1
output-tumor_pileup=$2
output=$3
 
java  -Djava.io.tmpdir=./JAVA_TMP  -Xmx8g  -jar /your_path_to/VarScan.v2.3.9.jar processsomatic  $output-normal_pileup $output-tumor_pileup $output
 
java  -Djava.io.tmpdir=./JAVA_TMP  -Xmx8g  -jar /your_path_to/VarScan.v2.3.9.jar copynumber  $output-normal_pileup $output-tumor_pileup $output
 
java  -Djava.io.tmpdir=./JAVA_TMP  -Xmx8g  -jar /your_path_to/VarScan.v2.3.9.jar copyCaller varScan.copynumber --output-file $output-varscan.copynumber.called                                                                                                                                                                                                                                
