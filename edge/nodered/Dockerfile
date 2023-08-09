FROM nodered/node-red:3.0.2

RUN npm install node-red-contrib-influxdb@0.6.1 \
                @node-red-contrib-themes/theme-collection@3.0.6 \
                node-red-contrib-opcua@0.2.117 \
                node-red-contrib-opcua-server@1.1.1 \
                node-red-contrib-modbus@5.26.0 

# RUN npm install node-red-contrib-influxdb@0.6.1 \
#                 @node-red-contrib-themes/theme-collection@3.0.6 \
#                 node-red-contrib-opcua@0.2.117 \
#                 node-red-contrib-opcua-server@1.1.1 \
#                 node-red-contrib-modbus@5.26.0 \
#                 @bitpoolos/edge-modbus@1.6.0 \
#                 node-red-contrib-mssql@0.0.7 \
#                 node-red-contrib-aws-iot-hub@0.1.14 \
#                 node-red-contrib-azure-iot-hub@0.4.0 \
#                 node-red-contrib-json-msg@1.0.0 \
#                 node-red-contrib-kafka-manager@0.5.1 

# Copy package.json to the WORKDIR so npm builds all
# of your added nodes modules for Node-RED
# COPY package.json .
# RUN npm install --unsafe-perm --no-update-notifier --no-fund --only=production

# Copy _your_ Node-RED project files into place
# NOTE: This will only work if you DO NOT later mount /data as an external volume.
#       If you need to use an external volume for persistence then
#       copy your settings and flows files to that volume instead.
# COPY settings.js /data/settings.js
# COPY flows_cred.json /data/flows_cred.json
# COPY flows.json /data/flows.json
