FROM aphecetche/centos7-ali-core

COPY etc-cvmfs-default-local /etc/cvmfs/default.local

RUN mkdir -p /cvmfs/alice.cern.ch /cvmfs/alice-ocdb.cern.ch 

COPY cvmfs-startup.sh /cvmfs-startup.sh

RUN chmod +x /cvmfs-startup.sh

ENTRYPOINT ["/cvmfs-startup.sh"]

CMD ["AliRoot::v5-08-16-1"]
