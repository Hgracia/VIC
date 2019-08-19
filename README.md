# Variant Interpretation for Cancer (VIC)

A Computational Tool for Assessing Clinical Impacts of Somatic Variants Following the AMP-ASCO-CAP 2017 Guidelines

## SYNOPSIS
```
java -jar target/VIC-1.0-jar-with-dependencies.jar --help
```
## WHAT DOES IT DO

VIC is a bioinformatics software tool for assessing clinical impacts of somatic variants following the AMP-ASCO-CAP 2017 Guidelines.

## PREREQUISITE

1. You need to install Java >= 1.8.
2. You need to install [ANNOVAR](http://annovar.openbioinformatics.org/en/latest/) version >=  2016-02-01.
3. You need to download the latest version of the files such as mim2gene.txt from [OMIM](http://www.omim.org/downloads); updated files could generate more accurate results while using VIC.

## OPTIONS

To see the help menu, use the program as "java -jar target/VIC-1.0-jar-with-dependencies.jar --help":

Notice: Your command of VIC is [--help]
```
java -jar target/VIC-1.0-jar-with-dependencies.jar [-b ] [-d ] [-h] [-input_type ] [-i ] [-cancer_type ] [-convert2annovar ] [-l ] [-skip_annovar] [-o ] [-annotate_variation ] [-table_annovar ] [-s ] [-otherinfo ] [-db ]

-annotate_variation The Annovar perl script of annotate_variation.pl

-b,--buildver The genomic build version, it can be hg19 and will support GRCh37 hg18 GRCh38 later

-cancer_type The cancer type, please check the doc for the details of cancer type

-convert2annovar The Annovar perl script of convert2annovar.pl

-d,--database_locat/humandb The database location/dir for the annotation dataset

-db,--database_vic --required argument: The database location/dir for the VIC dataset file

-h,--help help message

-i,--inputfile --required argument: The input file contains your variant

-input_type --required argument: The input file type, it can be AVinput(Annovar's format),VCF(VCF with single sample),VCF_m(VCF with multiple samples)

-l,--user_specified_list User specified variant list with self-designated clinical impact significance, must be in AVinput format

-o,--outputfile --required argument: The prefix of output file which contains the results, the file of results will be as [$$prefix].vic

-otherinfo true or false:print out otherinfo (infomration in fifth column in queryfile,default: TRUE). this option only perform well with AVinput file,and the other information only can be put in the fifth column. The information in >5th column will be lost. When input as VCF or VCF_m files with otherinfo option, only het/hom will be kept, depth and qual will be lost, the cancer type should be provide by command option.

-s,--evidence_file User specified Evidence file for each variant

-skip_annovar Skip the Annovar annotation, this can be true only after you already got the annovar's annotation result

-table_annovar The Annovar perl script of table_annovar.pl
```
## EXAMPLE
```
java -jar target/VIC-1.0-jar-with-dependencies.jar -annotate_variation /path/to/annotate_variation.pl -b hg19 -convert2annovar /path/to/convert2annovar.pl

-table_annovar /path/to/table_annovar.pl -d /path/to/annovar/humandb -db /path/to/vicdb -i inputfile.avinput -input_type AVinput -o outputfile
```
## HOW DOES IT WORK

VIC is a bioinformatics software tool for the interpretation of sequence variants in cancer by the AMP-ASCO-CAP 2017 standards and guidelines. The input to VIC is an annotated file generated by ANNOVAR or un-annotated AVinput/VCF files, while the output of VIC is the classification of variants into "strong clinical significance", "potential clinical significance", "unknown clinical significance", and "benign or likely benign", together with detailed evidence scores.

## LICENSE

VIC is free for non-commercial use without warranty. Users need to obtain licenses such as OMIM and ANNOVAR by themselves. Please contact the authors for commercial use.

## REFERENCE

He MM, Li Q, Yan M, Cao H, Hu Y, He KY, Cao K, Li MM, Wang K. Variant Interpretation for Cancer (VIC): A Computational Tool for Assessing Clinical Impacts of Somatic Variants. <i>Genome Medicine</i>, 2019 (Accepted).

Li MM, Datto M, Duncavage EJ, Kulkarni S, Lindeman NI, Roy S, Tsimberidou AM, Vnencak-Jones CL, Wolff DJ, Younes A, Nikiforova MN. [Standards and Guidelines for the Interpretation and Reporting of Sequence Variants in Cancer: A Joint Consensus Recommendation of the Association for Molecular Pathology, American Society of Clinical Oncology, and College of American Pathologists](https://www.ncbi.nlm.nih.gov/pubmed/27993330). <i>Journal of Molecular Diagnostics</i>, 2017 Jan;19(1):4-23. [doi: 10.1016/j.jmoldx.2016.10.002](https://www.ncbi.nlm.nih.gov/pubmed/27993330).


