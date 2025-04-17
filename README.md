<title>Monitor-System-Resources-Using-Netdata</title> 

<h1>📌 Objective</h1>
<p>Deploy **Netdata** on an **AWS EC2 instance** using **Docker** to visualize system metrics like **CPU**, **memory**, **disk**, and **Docker containers** performance.</p>

<h2>🔧Prequisites</h2>
<p>
    1. AWS EC2 instance running Amazon linux (with open port 19999)
     2. SSH access to terminal
      3. Install docker on the server
</p>

## Steps

1. **Launch EC2 Instance**: Use Amazon Linux 2 or Ubuntu, and open port `19999` for inbound traffic.
