aws ec2 run-instances \
  --image-id ami-01bc990364452ab3e \
  --count 1 \
  --instance-type t3.micro \
  --key-name devopskey \
  --security-group-ids subnet-0b18b2106e7e8b233 \
  --subnet-id sg-052614c943e8676eb \
  --iam-instance-profile Name="RoleSM" \
  --tag-specifications 'ResourceType=instance,Tags=[{Key=Name,Value=DevLab2}]' \
  --user-data file://user_data.sh \

