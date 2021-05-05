# install node dependencies
npm install

# zip required files
zip deploy.zip app.js index.js node_modules/

# Push zip file to s3
aws s3 cp deploy.zip s3://$DEPLOY_BUCKET/deploy.zip

# update application version
aws elasticbeanstalk create-application-version --application-name $EBS_APP_NAME --version-label current --source-bundle S3Bucket="$DEPLOY_BUCKET",S3Key="deploy.zip"

# update elastic beanstalk environment
aws elasticbeanstalk update-environment --application-name $EBS_APP_NAME --environment-name $EBS_ENV_NAME --version-label current