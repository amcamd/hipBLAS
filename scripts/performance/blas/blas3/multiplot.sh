#!/bin/bash

 python3 ../performancereport.py -i ../../../../build/release/clients/staging -I   gemm/gemm.yaml -o  ./gemm -w  gemm/doc --data-types gflops -m EXECUTE PLOT DOCUMENT

 python3 ../performancereport.py -i ../../../../build/release/clients/staging -I   symm/symm.yaml -o  ./symm -w  symm/doc --data-types gflops -m EXECUTE PLOT DOCUMENT

 python3 ../performancereport.py -i ../../../../build/release/clients/staging -I syr2k/syr2k.yaml -o ./syr2k -w syr2k/doc --data-types gflops -m EXECUTE PLOT DOCUMENT

 python3 ../performancereport.py -i ../../../../build/release/clients/staging -I   syrk/syrk.yaml -o  ./syrk -w  syrk/doc --data-types gflops -m EXECUTE PLOT DOCUMENT

 python3 ../performancereport.py -i ../../../../build/release/clients/staging -I syrkx/syrkx.yaml -o ./syrkx -w syrkx/doc --data-types gflops -m EXECUTE PLOT DOCUMENT

 python3 ../performancereport.py -i ../../../../build/release/clients/staging -I   trmm/trmm.yaml -o  ./trmm -w  trmm/doc --data-types gflops -m EXECUTE PLOT DOCUMENT

 python3 ../performancereport.py -i ../../../../build/release/clients/staging -I   trsm/trsm.yaml -o  ./trsm -w  trsm/doc --data-types gflops -m EXECUTE PLOT DOCUMENT

 python3 ../performancereport.py -i ../../../../build/release/clients/staging -I   hemm/hemm.yaml -o  ./hemm -w  hemm/doc --data-types gflops -m EXECUTE PLOT DOCUMENT

 python3 ../performancereport.py -i ../../../../build/release/clients/staging -I her2k/her2k.yaml -o ./her2k -w her2k/doc --data-types gflops -m EXECUTE PLOT DOCUMENT

 python3 ../performancereport.py -i ../../../../build/release/clients/staging -I   herk/herk.yaml -o  ./herk -w  herk/doc --data-types gflops -m EXECUTE PLOT DOCUMENT

 python3 ../performancereport.py -i ../../../../build/release/clients/staging -I herkx/herkx.yaml -o ./herkx -w herkx/doc --data-types gflops -m EXECUTE PLOT DOCUMENT



 python3 ../combine_plots.py -d  gemm/run00/ -d syrkx/run00 -d syrk/run00 -d syr2k/run00 -d trsm/run00 -d symm/run00/ -d trmm/run00 -d trmm_outofplace/run00 -s N

 python3 ../combine_plots.py -d herkx/run00 -d herk/run00 -d her2k/run00 -d hemm/run00/ -s N
