# mogilefs-mogstored
mogilefs-mogstored is the mogstored of MogileFS 

use this image ：

config your mogstored.conf
    
cat /etc/mogilefs/mogstored.conf

        maxconns = 10000  
        httplisten = 0.0.0.0:7500  
        mgmtlisten = 0.0.0.0:7501  
        docroot=/var/mogdata 

volume the /var/mogdata

    docker run -d -p 7500:7500 -p 7501:7501 -v /path/db:/var/mogdata kcrist/mogilefs-mogstored:latest

if you add device, show your device  name and mkdir  /var/mogdata/DEVICENAME  after that ,restart your mogstored container
