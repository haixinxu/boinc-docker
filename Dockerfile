# boinc  
FROM debian:testing  
  
RUN apt update  
RUN apt upgrade -y  
RUN apt install boinc boinc-manager  
RUN apt clean  
  
USER boinc  
ENV USER=boinc  
  
CMD ["sh -c","boinc& ; boinccmd --join_acct_mgr $MGR_URL $MGR_USER $MGR_PASS"] 
