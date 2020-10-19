#!/bin/bash
ls *fq.gz | parallel -j8 md5sum {} > checksums.txt
ls *fq.gz | parallel fastqc {}
multiqc .
