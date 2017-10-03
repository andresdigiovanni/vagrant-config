#!/bin/bash

# Start Jupyter notebook
ipython notebook --notebook-dir=/vagrant --no-browser --ip=0.0.0.0 &
echo "[vagrant provisioning] Notebook ready: go open http://localhost:8888/ in a browser"
