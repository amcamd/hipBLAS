#!/bin/bash

python3 ../performancereport.py -i ../../../../build/release/clients/staging -I scal/scal.yaml -o ./scal -w scal/doc --data-types gflops -m EXECUTE PLOT DOCUMENT

python3 ../performancereport.py -i ../../../../build/release/clients/staging -I axpy/axpy.yaml -o ./axpy -w axpy/doc --data-types gflops -m EXECUTE PLOT DOCUMENT

python3 ../performancereport.py -i ../../../../build/release/clients/staging -I nrm2/nrm2.yaml -o ./nrm2 -w nrm2/doc --data-types gflops -m EXECUTE PLOT DOCUMENT

python3 ../performancereport.py -i ../../../../build/release/clients/staging -I   dot/dot.yaml -o ./dot  -w dot/doc  --data-types gflops -m EXECUTE PLOT DOCUMENT

 python3 ../combine_plots.py -d dot/run00 -d axpy/run00 -d nrm2/run00 -d scal/run00/ -s N

