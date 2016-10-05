FROM aphecetche/centos7-ali-core

RUN mkdir -p /cvmfs/alice.cern.ch /cvmfs/alice-ocdb.cern.ch 

ENTRYPOINT ["/cvmfs-startup.sh"]

CMD ["AliRoot::v5-08-16-1"]
