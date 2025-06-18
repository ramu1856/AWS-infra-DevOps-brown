#!/bin/bash
echo "Deploying Application..."
scp -r * ubuntu@ec2-xx-xx-xx-xx.compute-1.amazonaws.com:/var/www/html/
echo "Deployment Completed!"
git init
