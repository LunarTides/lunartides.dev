#!/bin/bash
sudo chown -R 1001:1001 runner-data
sudo chmod 775 runner-data/.cache
sudo chmod g+s runner-data/.cache
