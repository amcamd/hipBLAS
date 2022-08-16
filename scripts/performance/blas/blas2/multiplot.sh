#!/bin/bash

 python3 ../performancereport.py -i ../../../../build/release/clients/staging -I gemv/gemv.yaml -o ./gemv -w gemv/doc --data-types gflops -m EXECUTE PLOT DOCUMENT
 python3 ../performancereport.py -i ../../../../build/release/clients/staging -I gbmv/gbmv.yaml -o ./gbmv -w gbmv/doc --data-types gflops -m EXECUTE PLOT DOCUMENT

 python3 ../performancereport.py -i ../../../../build/release/clients/staging -I symv/symv.yaml -o ./symv -w symv/doc --data-types gflops -m EXECUTE PLOT DOCUMENT
 python3 ../performancereport.py -i ../../../../build/release/clients/staging -I spmv/spmv.yaml -o ./spmv -w spmv/doc --data-types gflops -m EXECUTE PLOT DOCUMENT
 python3 ../performancereport.py -i ../../../../build/release/clients/staging -I sbmv/sbmv.yaml -o ./sbmv -w sbmv/doc --data-types gflops -m EXECUTE PLOT DOCUMENT

 python3 ../performancereport.py -i ../../../../build/release/clients/staging -I   ger/ger.yaml -o  ./ger -w  ger/doc --data-types gflops -m EXECUTE PLOT DOCUMENT

 python3 ../performancereport.py -i ../../../../build/release/clients/staging -I   syr/syr.yaml -o  ./syr -w  syr/doc --data-types gflops -m EXECUTE PLOT DOCUMENT
 python3 ../performancereport.py -i ../../../../build/release/clients/staging -I   spr/spr.yaml -o  ./spr -w  spr/doc --data-types gflops -m EXECUTE PLOT DOCUMENT

 python3 ../performancereport.py -i ../../../../build/release/clients/staging -I syr2/syr2.yaml -o ./syr2 -w syr2/doc --data-types gflops -m EXECUTE PLOT DOCUMENT
 python3 ../performancereport.py -i ../../../../build/release/clients/staging -I spr2/spr2.yaml -o ./spr2 -w spr2/doc --data-types gflops -m EXECUTE PLOT DOCUMENT

 python3 ../performancereport.py -i ../../../../build/release/clients/staging -I hemv/hemv.yaml -o ./hemv -w hemv/doc --data-types gflops -m EXECUTE PLOT DOCUMENT
 python3 ../performancereport.py -i ../../../../build/release/clients/staging -I hpmv/hpmv.yaml -o ./hpmv -w hpmv/doc --data-types gflops -m EXECUTE PLOT DOCUMENT
 python3 ../performancereport.py -i ../../../../build/release/clients/staging -I hbmv/hbmv.yaml -o ./hbmv -w hbmv/doc --data-types gflops -m EXECUTE PLOT DOCUMENT

 python3 ../performancereport.py -i ../../../../build/release/clients/staging -I   her/her.yaml -o  ./her -w  her/doc --data-types gflops -m EXECUTE PLOT DOCUMENT
 python3 ../performancereport.py -i ../../../../build/release/clients/staging -I   hpr/hpr.yaml -o  ./hpr -w  hpr/doc --data-types gflops -m EXECUTE PLOT DOCUMENT

 python3 ../performancereport.py -i ../../../../build/release/clients/staging -I her2/her2.yaml -o ./her2 -w her2/doc --data-types gflops -m EXECUTE PLOT DOCUMENT
 python3 ../performancereport.py -i ../../../../build/release/clients/staging -I hpr2/hpr2.yaml -o ./hpr2 -w hpr2/doc --data-types gflops -m EXECUTE PLOT DOCUMENT

 python3 ../performancereport.py -i ../../../../build/release/clients/staging -I trmv/trmv.yaml -o ./trmv -w trmv/doc --data-types gflops -m EXECUTE PLOT DOCUMENT
 python3 ../performancereport.py -i ../../../../build/release/clients/staging -I tpmv/tpmv.yaml -o ./tpmv -w tpmv/doc --data-types gflops -m EXECUTE PLOT DOCUMENT
 python3 ../performancereport.py -i ../../../../build/release/clients/staging -I tbmv/tbmv.yaml -o ./tbmv -w tbmv/doc --data-types gflops -m EXECUTE PLOT DOCUMENT

 python3 ../performancereport.py -i ../../../../build/release/clients/staging -I trsv/trsv.yaml -o ./trsv -w trsv/doc --data-types gflops -m EXECUTE PLOT DOCUMENT
 python3 ../performancereport.py -i ../../../../build/release/clients/staging -I tpsv/tpsv.yaml -o ./tpsv -w tpsv/doc --data-types gflops -m EXECUTE PLOT DOCUMENT
 python3 ../performancereport.py -i ../../../../build/release/clients/staging -I tbsv/tbsv.yaml -o ./tbsv -w tbsv/doc --data-types gflops -m EXECUTE PLOT DOCUMENT


 python3 ../combine_plots.py -d gemv/run00/ -d symv/run00/ -d ger/run00/ -d trmv/run00/ -d tpmv/run00 -d trsv/run00 -d spmv/run00/ -d gbmv/run00 -d sbmv/run00 -d tbmv/run00 -d tbsv/run00 -s M

 python3 ../combine_plots.py -d syr/run00/ -d spr/run00/ -d syr2/run00/ -d spr2/run00/ -d tpsv/run00/ -s N

 python3 ../combine_plots.py -d hemv/run00/ -d her2/run00 -d hpr2/run00 -d her/run00 -d hpr/run00 -d hpmv/run00 -d hbmv/run00 -s N
