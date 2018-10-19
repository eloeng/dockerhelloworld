FROM java:8
COPY src /home/root/javahelloworld/src
WORKDIR /home/root/javahelloworld
ENV foo bar
RUN mkdir bin
RUN mkdir test
RUN javac -d bin ./src/HelloWorld.java
ENTRYPOINT ["java","-cp","bin","HelloWorld"]
