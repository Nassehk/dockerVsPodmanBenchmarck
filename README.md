## Introduction

Deploying applications using containers improves the reliability of deployment by ensuring what runs on the server is what you wanted. Additionally containerized application can leverage cookie cutter deployment methods such as AWS ECS and EKS, Azure App Service and so on. In this post I wanted to see how two container run times of docker and podman compare in terms of performance. There is more to consider in podman vs docker than just performance. but for now let's see how the stack up for running my custom Python benchmark. 

Looks like we are taking about 15% performance hit and podman runs slightly faster than docker.

## Technical details

My benchmark in Python that does three things:

- Calculates factorial
- List comprehension 
- Creating a dictionary 

The Python version used in the containers is 3.11.9 running on Alpine Linux 3.20 and on the base OS is python version 3.11.2 running on Debian bookworm. I ran the code 15 times to have reliable statistics.
If you ran the benchmark on your machine let me know what your results are. Let me know if you want to update the benchmark code. 
If you have any experience that can shed light on the observe performance difference leave a comment.
