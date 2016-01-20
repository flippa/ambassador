# ambassador

Generic TCP ambassador.

Full credit to SvenDoweit. I'd fork it but I can't do that with a subfolder: 
https://github.com/SvenDowideit/dockerfiles/tree/master/ambassador

Details of the ambassador pattern here:
https://docs.docker.com/engine/articles/ambassador_pattern_linking/

The TLDR is that you use this to avoid hard-coding networking details in the
primary container. A secondary bonus is that DNS lookup appears to happen each
new connection using the system's resolver, making it perfect for ELB.

## Usage

Include in the `docker-compose.yml` of the relevant projects whenever
ambassadorial services are required.
