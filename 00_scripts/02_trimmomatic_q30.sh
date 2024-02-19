#!/usr/bin/env bash

# trimmomatic version 0.39
# trimmomatic manual : http://www.usadellab.org/cms/uploads/supplementary/Trimmomatic/TrimmomaticManual_V0.32.pdf

WORKING_DIRECTORY=/home/fungi/MADCAPS_NGS/01_raw_data/2_Filtered/Original_reads
OUTPUT=/home/fungi/MADCAPS_NGS/03_cleaned_data/Original_reads_16S_ITS_18S

# Make the directory (mkdir) only if not existe already(-p)
mkdir -p $OUTPUT

ADAPTERFILE=/home/fungi/MADCAPS_NGS/99_softwares/adapters_sequences.fasta

# Arguments :
# ILLUMINACLIP:"$ADAPTERFILE":2:30:10 LEADING:30 TRAILING:30 SLIDINGWINDOW:26:30 MINLEN:150

eval "$(conda shell.bash hook)"
conda activate trimmomatic

cd $WORKING_DIRECTORY

####################################################
# Cleaning step
####################################################

trimmomatic PE -Xmx60G -threads 8 -phred33 $WORKING_DIRECTORY/sample-16_S172_R1_001.fastq.gz $WORKING_DIRECTORY/sample-16_S172_R2_001.fastq.gz $OUTPUT/sample-16_S172_R1_001.paired.fastq.gz $OUTPUT/sample-16_S172_R1_001.single.fastq.gz $OUTPUT/sample-16_S172_R2_001.paired.fastq.gz $OUTPUT/sample-16_S172_R2_001.single.fastq.gz ILLUMINACLIP:"$ADAPTERFILE":2:30:10 LEADING:30 TRAILING:30 SLIDINGWINDOW:26:30 MINLEN:150
trimmomatic PE -Xmx60G -threads 8 -phred33 $WORKING_DIRECTORY/sample-17_S173_R1_001.fastq.gz $WORKING_DIRECTORY/sample-17_S173_R2_001.fastq.gz $OUTPUT/sample-17_S173_R1_001.paired.fastq.gz $OUTPUT/sample-17_S173_R1_001.single.fastq.gz $OUTPUT/sample-17_S173_R2_001.paired.fastq.gz $OUTPUT/sample-17_S173_R2_001.single.fastq.gz ILLUMINACLIP:"$ADAPTERFILE":2:30:10 LEADING:30 TRAILING:30 SLIDINGWINDOW:26:30 MINLEN:150
trimmomatic PE -Xmx60G -threads 8 -phred33 $WORKING_DIRECTORY/sample-21_S174_R1_001.fastq.gz $WORKING_DIRECTORY/sample-21_S174_R2_001.fastq.gz $OUTPUT/sample-21_S174_R1_001.paired.fastq.gz $OUTPUT/sample-21_S174_R1_001.single.fastq.gz $OUTPUT/sample-21_S174_R2_001.paired.fastq.gz $OUTPUT/sample-21_S174_R2_001.single.fastq.gz ILLUMINACLIP:"$ADAPTERFILE":2:30:10 LEADING:30 TRAILING:30 SLIDINGWINDOW:26:30 MINLEN:150
trimmomatic PE -Xmx60G -threads 8 -phred33 $WORKING_DIRECTORY/sample-2_S167_R1_001.fastq.gz $WORKING_DIRECTORY/sample-2_S167_R2_001.fastq.gz $OUTPUT/sample-2_S167_R1_001.paired.fastq.gz $OUTPUT/sample-2_S167_R1_001.single.fastq.gz $OUTPUT/sample-2_S167_R2_001.paired.fastq.gz $OUTPUT/sample-2_S167_R2_001.single.fastq.gz ILLUMINACLIP:"$ADAPTERFILE":2:30:10 LEADING:30 TRAILING:30 SLIDINGWINDOW:26:30 MINLEN:150
trimmomatic PE -Xmx60G -threads 8 -phred33 $WORKING_DIRECTORY/sample-3_S168_R1_001.fastq.gz $WORKING_DIRECTORY/sample-3_S168_R2_001.fastq.gz $OUTPUT/sample-3_S168_R1_001.paired.fastq.gz $OUTPUT/sample-3_S168_R1_001.single.fastq.gz $OUTPUT/sample-3_S168_R2_001.paired.fastq.gz $OUTPUT/sample-3_S168_R2_001.single.fastq.gz ILLUMINACLIP:"$ADAPTERFILE":2:30:10 LEADING:30 TRAILING:30 SLIDINGWINDOW:26:30 MINLEN:150
trimmomatic PE -Xmx60G -threads 8 -phred33 $WORKING_DIRECTORY/sample-5_S169_R1_001.fastq.gz $WORKING_DIRECTORY/sample-5_S169_R2_001.fastq.gz $OUTPUT/sample-5_S169_R1_001.paired.fastq.gz $OUTPUT/sample-5_S169_R1_001.single.fastq.gz $OUTPUT/sample-5_S169_R2_001.paired.fastq.gz $OUTPUT/sample-5_S169_R2_001.single.fastq.gz ILLUMINACLIP:"$ADAPTERFILE":2:30:10 LEADING:30 TRAILING:30 SLIDINGWINDOW:26:30 MINLEN:150
trimmomatic PE -Xmx60G -threads 8 -phred33 $WORKING_DIRECTORY/sample-8_S170_R1_001.fastq.gz $WORKING_DIRECTORY/sample-8_S170_R2_001.fastq.gz $OUTPUT/sample-8_S170_R1_001.paired.fastq.gz $OUTPUT/sample-8_S170_R1_001.single.fastq.gz $OUTPUT/sample-8_S170_R2_001.paired.fastq.gz $OUTPUT/sample-8_S170_R2_001.single.fastq.gz ILLUMINACLIP:"$ADAPTERFILE":2:30:10 LEADING:30 TRAILING:30 SLIDINGWINDOW:26:30 MINLEN:150
trimmomatic PE -Xmx60G -threads 8 -phred33 $WORKING_DIRECTORY/sample-9_S171_R1_001.fastq.gz $WORKING_DIRECTORY/sample-9_S171_R2_001.fastq.gz $OUTPUT/sample-9_S171_R1_001.paired.fastq.gz $OUTPUT/sample-9_S171_R1_001.single.fastq.gz $OUTPUT/sample-9_S171_R2_001.paired.fastq.gz $OUTPUT/sample-9_S171_R2_001.single.fastq.gz ILLUMINACLIP:"$ADAPTERFILE":2:30:10 LEADING:30 TRAILING:30 SLIDINGWINDOW:26:30 MINLEN:150
