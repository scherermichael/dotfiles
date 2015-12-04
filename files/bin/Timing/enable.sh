#!/bin/bash

APP="info.eurocomp.TimingHelper"

# Allow execution
sudo ./tccutil.py --insert ${APP}
sudo ./tccutil.py --enable ${APP}
