## HDFS:
 
* Block size of a regular FS is 8K which is also equal to page size. 
* Empirically selected value
* Block size :
  * Shard  
  * Replica
  * I/O - ideal block size is 8K but this would lead a large number of file shards. 
  
 * HDFS does not implement virtual file interface.

## HDFS architecture:
  * Namenode stores meta-data :
    * Keep tracks of the data blocks
    * namenode is rack aware, it creates 3 replicas, two in one rack and the third in the other.
    * Not three racks there are switch overhead involved, every switch we hit adds a some cost in terms of I/O time.
    * Primary Namenode:
      * 
    * Secondary Namenode:
      * It is not a backup namenode, it performs some tasks for the primanry namenode
      * It manages the index of file blocks, so when a new primary comes online, it reads this index to perform it other tasks.
      * Corum devices:
        * external device usually a disc, namenode that is the first one to get there wins and becomes the master of the service.
     
    * WORM : work-once write many
 
 ## Limitations of HDFS
 * Scalibility : namenode only scales to 100M files.
 
 
 ## Mapr Docs:
 [maprdocs.mapr.com](https://maprdocs.mapr.com/home/)
 
 
 
    
      
     
     
 
 
