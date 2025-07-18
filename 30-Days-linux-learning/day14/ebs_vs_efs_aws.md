# AWS EBS vs EFS Explained with Examples

Amazon offers multiple types of storage services. Two widely used ones for EC2 and Linux-based environments are:

- **EBS (Elastic Block Store)**
- **EFS (Elastic File System)**

---

## 1. Amazon EBS (Elastic Block Store)

### What is EBS?

Amazon EBS provides **block-level storage volumes** that can be attached to EC2 instances. These volumes behave like raw unformatted block devices and are ideal for:

- Operating system boot volumes
- Databases
- Applications that require persistent, low-latency block storage

### Key Features:

- Attached to a single EC2 instance in one Availability Zone
- Persistent storage: data survives instance stops/restarts
- Can be encrypted, snapshotted, and resized
- Multiple volume types: gp3, io2, st1, sc1

### Common Use Cases:

- Root volumes for EC2
- MySQL/PostgreSQL storage
- Application server storage

### Example:

```bash
# List block devices
lsblk

# Format the volume
sudo mkfs.ext4 /dev/xvdf

# Mount the volume
sudo mkdir /mnt/data
sudo mount /dev/xvdf /mnt/data
```

### Persisting the mount:

```bash
echo '/dev/xvdf /mnt/data ext4 defaults,nofail 0 2' | sudo tee -a /etc/fstab
```

---

## 2. Amazon EFS (Elastic File System)

### What is EFS?

Amazon EFS is a **scalable, elastic NFS file system** that can be mounted on multiple EC2 instances simultaneously. It grows and shrinks automatically as files are added and removed.

### Key Features:

- Shared filesystem for multiple EC2 instances
- NFSv4.1/4.2 protocol
- Scales automatically, no provisioning required
- Data stored across multiple AZs (Highly Available)
- Supports access points, encryption, lifecycle management

### Common Use Cases:

- Shared codebases
- Containerized workloads (EKS, ECS)
- Media processing
- Machine learning

### Example:

#### Step-by-step:

1. Create EFS via AWS Console or CLI
2. Add mount targets to subnets
3. On EC2, install NFS client:

```bash
sudo yum install -y nfs-utils  # Amazon Linux
```

4. Mount the EFS:

```bash
sudo mkdir /mnt/efs
sudo mount -t nfs4 -o nfsvers=4.1 fs-12345678.efs.us-east-1.amazonaws.com:/ /mnt/efs
```

### Persisting the mount:

```bash
echo 'fs-12345678.efs.us-east-1.amazonaws.com:/ /mnt/efs nfs4 defaults,_netdev 0 0' | sudo tee -a /etc/fstab
```

---

## 3. EBS vs EFS Comparison

| Feature      | EBS               | EFS                      |
| ------------ | ----------------- | ------------------------ |
| Storage Type | Block             | File                     |
| Access       | Single EC2        | Multiple EC2             |
| Performance  | High IOPS (io2)   | Scalable throughput      |
| Resizing     | Manual            | Automatic                |
| Protocol     | Local disk        | NFS                      |
| Use Cases    | DBs, boot volumes | Web servers, shared data |
| AZ Scope     | Single AZ         | Multi-AZ                 |

---

## 4. Cost Considerations

- **EBS**: Charged per GB provisioned + IOPS (if using io2)
- **EFS**: Charged based on usage (Standard or Infrequent Access tier)

### Tip:

Use **EBS** when you need fast, consistent performance for a single EC2. Use **EFS** when you need shared access across many EC2s or containers.

---

## 5. Useful CLI Commands

```bash
# Create EBS volume
aws ec2 create-volume --availability-zone us-east-1a --size 10 --volume-type gp3

# Describe EBS volumes
aws ec2 describe-volumes

# Mount EFS
sudo mount -t nfs4 -o nfsvers=4.1 fs-id.efs.region.amazonaws.com:/ /mnt/efs
```

---

## Conclusion

Both **EBS** and **EFS** are foundational storage solutions in AWS. Choose based on your use case:

- EBS = Fast, block storage for single-instance workloads
- EFS = Scalable, shared storage for distributed workloads

Understanding both helps in architecting efficient, cost-effective cloud systems.

