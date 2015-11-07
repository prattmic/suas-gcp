Deploy SUAS interop on GCP
==========================

1. Perform [Compute Engine Setup](https://cloud.google.com/compute/docs/quickstart#setup).
   You just need to get through step 6, where you configure gcloud for your
   project.
2. `./new_vm.sh` (gcloud will have you create SSH keys for the machine)
3. ???
4. Profit!  Click the link to see your server.

The instance name is printed near the end of the output.  Use this to SSH
into the machine as necessary:

```
$ gcloud compute ssh ${instance_name} --zone us-central1-c
```
