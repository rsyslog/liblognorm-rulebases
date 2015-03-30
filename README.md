# liblognorm-rulebases

The liblognorm project ( http://www.liblognorm.com ) provides high speed
text log normalization. It does so be utilizing so-called **rulebases**
which describe the content of log messages.

In this liblognorm-rulebases project we provide canned rulebases for a
variety of devices. The project's goal is to make using liblognorm as
easy as possible without the need to re-invent rulebases.

The project is currently in its infancy. Contributions are **very welcome**.
We are looking both for

* ready-to-use rulebases
* log samples

Log samples permits us to fine-tune rulebases and improve the rsyslog
tooling. When we receive samples for which no rulebase yet exists, we
try to create one.

How to Contribute
-----------------
Contribution of log samples is extremely easy via our log ingestion server.
Simply send logs via UDP to:

hostname: logsubmit.rsyslog.com
port:     514
protocol: any flavor of syslog or other text data

in rsyslog.conf, you can do so via this line:

   *.* @logsubmit.rsyslog.com

Logs will be migrated to the respository via a manual process. So please
don't expect them to show up immediately and bear a little with us.

Of course, to submit samples or rulebases, you can simply fork this 
project and send us a pull request. Or email the project lead
(Rainer Gerhards) directly at rgerhards@adiscon.com - or use whichever
other method that fits you best.

License
-------
Please note that all contributions must be under the BSD 2-clause license.
By contributing, you agree to this.
