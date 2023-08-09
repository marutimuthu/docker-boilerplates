# Base forked from : https://github.com/DynamicDevices/ming

# MING (Mosquitto, InfluxDB, NodeRed, Grafana)

MING is a containerised IoT sensor server stack in the traditions of LAMP.

We've leveraged #OpenBalena to provide a embedded Linux environment to provide:

- Mosquitto MQtt broker listening on port 1883 for MQtt message publications

- InfluxDB listening on port 8086 providing a time series database for sensor data storage

- NodeRed listening on port 1880 to provide an easy to use graphical environment for parsing,
  analysing, storing, and forwarding sensor data messages

- Grafana listening on port 80 providing a data visualisation environment for sensor data.

# Getting going

## Configure via [environment variables](https://docs.resin.io/management/env-vars/)
Variable Name | Value | Description | Default
------------ | ------------- | ------------- | -------------
**`JUPYTER_MING_PASS`** | `STRING` | the password Jupyter Labs will start up with | mingstack
**`MING_AP`** | `1` OR `0` | Whether to start a Wifi AP or not, 0 = off, 1 = on  | 0

# More detail

Here's an example of what you will see on the Balena dashboard.

You can see the individual containers running, the unique ID (UID) of the newly registered device,
and it's local IP address. You can also enable a public URL to access the device remotely. By default
if you enable access to port 80 you'll enable access to the Grafana server.

![](https://i.ibb.co/jvxDcNr/Screenshot-from-2019-10-13-18-46-32.png)

You can see from the above that the short form of the UID for this device is e844144.

You can change this but for now if you attempt to ping that UID you should have connectivity

`$ ping e844144.local`

If you run into problems just try pinging to the local IP address you see on the dashboard 

`$ ping 192.168.0.228`

With connectivity working you can now take a look at the servers running on the target.

- NodeRed http://e844144.local:1880

![](https://i.ibb.co/pPMRkgS/Screenshot-from-2019-10-13-19-00-18.png)

- Grafana http://e844144.local:80 (default password: admin, admin)

![](https://i.ibb.co/rZ8C1qD/Screenshot-from-2019-10-13-19-00-54.png)

- You can also publish to Mosquitto using MQtt on the default port 1883