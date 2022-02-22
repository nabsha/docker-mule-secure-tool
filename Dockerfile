FROM openjdk:8

ADD https://docs.mulesoft.com/downloads/mule-runtime/4.2/secure-properties-tool.jar .


RUN echo \
"#!/bin/bash \n" \
"if [[ \$# -ne 4 ]]; then \n" \
"   echo \"Usage: docker run .. <encrypt|decrypt> <algo> <key> <message>\" \n  " \
"   exit \n " \
"fi \n " \
"java -cp secure-properties-tool.jar com.mulesoft.tools.SecurePropertiesTool string \$1 \$2 CBC \$3 \$4" > ./entrypoint.sh
RUN chmod +x ./entrypoint.sh

ENTRYPOINT ["/bin/bash", "./entrypoint.sh"]
