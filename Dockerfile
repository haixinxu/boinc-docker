# boinc  
FROM debian:testing  
  
RUN apt update  
RUN apt upgrade -y  
RUN apt install boinc boinc-manager -y 
RUN apt clean  
  
USER boinc  
ENV USER=boinc  
  
CMD ["bash","-c","boinc& && boinccmd --join_acct_mgr $MGR_URL $MGR_USER $MGR_PASS"] 
