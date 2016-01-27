myapp=$1
util=$2
i=$(date)
/root/experiment-scripts/reboot_run_bench_Array_granular.sh $myapp uni-medium 10 uni-moderate $util && \
j=$(date)

date && echo "starting ratio" && \
/root/experiment-scripts/reboot_run_ratio_fig2_else.sh $myapp $util && date && echo "all done" && \
echo "run bench start at:" && echo "$i" && \
echo "run bench done at:" && echo "$j"
