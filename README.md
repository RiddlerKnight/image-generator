# Create Image For Testing purpose

This script just generate identical images and tag them in different versions.

This script design to use with aws ecr.

```plain
aws ecr get-login-password --region ap-southeast-1 | docker login --username AWS --password-stdin xxx.dkr.ecr.ap-southeast-1.amazonaws.com
```
