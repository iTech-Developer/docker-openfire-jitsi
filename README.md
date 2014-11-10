# OpenFire + Jitsi VideoBridge
#### *Powerful xmpp server with multi-user video chat allows you to host your own server with services similar to Skype and Google Hangout*

OpenFire is a xmpp (japper) server that can be used for chat, voice, video, conference rooms, desktop sharing, collaboration and file transfer. 

Any xmpp client can be used including Jitsi and Spark.

To quickly run it (using --net=host because lots of ports need to be exposed and docker latest release 1.3.1 does not include port range yet)

`docker run -d --name='openfire-jitsi' --net=host -e DOMAIN=YOUR_DOMAIN itech/openfire-jitsi:latest`

-
### Usage

Go to http://YOUR-DOMAIN:9090/ to complete the installation
To test jitsi video go to https://YOUR-DOMAIN:7443/jitsi/apps/ofmeet

--
## LICENSE
Copyright 2014 iTech-Developer

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.

