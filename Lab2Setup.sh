aws ec2 run-instances \
  --image-id ami-01bc990364452ab3e \
  --count 1 \
  --instance-type t3.micro \
  --key-name mainKey \
  --security-group-ids sg-01739d2ff5b54baf2 \
  --iam-instance-profile Name="AdminSSM" \
  --tag-specifications 'ResourceType=instance,Tags=[{Key=Name,Value=DevLab2}]' \
  --user-data file://user_data.sh

