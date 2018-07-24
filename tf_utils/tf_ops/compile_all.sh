set -e

cd sampling
bash tf_sampling_compile.sh
cd ..

cd grouping
bash tf_grouping_compile.sh
cd ..

cd interpolation
bash tf_interpolate_compile.sh
cd ..

cd pointSIFT_op
bash tf_pointSIFT_compile.sh
cd ..


