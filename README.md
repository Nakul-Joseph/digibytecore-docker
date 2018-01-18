# digibytecore-docker
Docker Repo for Digibyte.

## Usage Instructions

**Mandatory Requirement**: Must use a local mount volume and config file.

Example:

```
sudo docker run -it --name=digibytecore-docker \   
-v /path/to/local/digibytecore/dir:/opt/digibytecore \   
-p 127.0.0.1:14022:14022 nakuljoseph/digibytecore:latest
```

**Config file is read from**: `/opt/digibytecore/digibyte.conf`, i.e., `/path/to/local/digibytecore/dir/digibyte.conf`

##Storing of Data

You can store data within `/opt/digibytecore/data` or any directory within `/opt/digibytecore`.

This will inturn store your data within `/path/to/local/digibytecore/dir` described above. 

Hence, to store within a different local dir, create a hard symlink for any other directory inside `/path/to/local/digibytecore/dir` and then use that directory as `datadir` in `digibyte.conf`

###Example

If your host directory is `/usr/local/digibytecore` and want to store data in `/var/digibytecore`, do the following:

```
mkdir -p /usr/local/digibytecore
mkdir -p /var/digibytecore
ln -s /var/digibytecore /usr/local/digibytecore/data
```

and use `/opt/digibytecore/data` as your data dir inside `digibyte.conf`

```
#digibyte.conf
datadir=/opt/digibytecore/data
```
##Based on:
https://github.com/kp666/dashcore-docker
