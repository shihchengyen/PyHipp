#!/bin/bash

echo "Number of hkl files"
find . -name "*.hkl" | grep -v -e spiketrain -e mountains | wc -l

echo "Number of mda files"
find mountains -name "firings.mda" | wc -l
echo ""
echo "#==========================================================="
echo "Start Times"
echo "==> rplpl-slurm.queue1-dy-m5a-4xlarge-1.1.out <=="
head -n 1 rplpl-slurm.queue1-dy-m5a-4xlarge-1.1.out
echo ""
echo "==> rplspl-slurm.queue1-dy-m5a-4xlarge-1.2.out <=="
head -n 1 rplspl-slurm.queue1-dy-m5a-4xlarge-1.2.out
echo "End Times"
echo "==> rplpl-slurm.queue1-dy-m5a-4xlarge-1.1.out <=="
tail -n 2 rplpl-slurm.queue1-dy-m5a-4xlarge-1.1.out
echo ""
echo "==> rplspl-slurm.queue1-dy-m5a-4xlarge-1.2.out <=="
tail -n 2 rplspl-slurm.queue1-dy-m5a-4xlarge-1.2.out

