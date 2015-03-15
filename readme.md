Better Jenkins ootb
============

Run this:

   docker run -p 8080:8080 maxandersen/jenkins-ootb

Now you shuold have jenkins with various good plugins installed and running at http://dockerhost:8080

To do more add other plugins to plugin.txt and run

  docker build --tag=my-jenkins-ootb .
  docker run -p 8080:8080 my-jenkins-ootb


