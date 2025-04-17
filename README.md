## Monitor-System-Resources-Using-Netdata

<h1>📌 Objective</h1>
<p>Deploy **Netdata** on an **AWS EC2 instance** using **Docker** to visualize system metrics like **CPU**, **memory**, **disk**, and **Docker containers** performance.</p>

<h2>🔧Prequisites</h2>
<p>
    1. AWS EC2 instance running Amazon linux (with open port 19999)</p>
     2. SSH access to terminal</p>
      3. Install docker on the server</p>
</p>

## Steps

1. **Launch EC2 Instance**: Use Amazon Linux 2 or Ubuntu, and open port `19999` for inbound traffic. ![Screenshot 2025-04-17 172522](https://github.com/user-attachments/assets/62e95057-b5c4-40aa-b76b-525e57c5c087)
2. Install Docker
   ![Screenshot 2025-04-17 174855](https://github.com/user-attachments/assets/006ae40b-ad2c-4b2a-bd56-edfad2d71664)
3. **Run Netdata Container**:
docker run -d --name=netdata -p 19999:19999
--cap-add SYS_PTRACE --security-opt apparmor=unconfined
-v /etc/netdata:/etc/netdata -v /var/lib/netdata:/var/lib/netdata
netdata/netdata![Screenshot 2025-04-17 175244](https://github.com/user-attachments/assets/6cb9360b-d26d-4956-bcbe-6c3f4f80405e)
4. ✓ Access Netdata Dashboard. http://13.210.235.251:19999/
   ![Screenshot 2025-04-17 171946](https://github.com/user-attachments/assets/77c7da20-95c9-4fe8-98e5-6e911a304ce9)
5. ✓ view Configuration files after running with volumens, Netdata's configuration files are available here: cd ~/netdata/etc
   To edit alert settings: vim ~/netdata/etc/health_alarm_notify.conf
## Outcome
Successfully monitor real-time system performance with **Netdata** on AWS EC2 using Docker. Metrics include CPU, memory, disk I/O, and Docker containers.







