Docker - amule

### Build

```sh
git clone https://github.com/garret/amule-raspberrypi.git
cd amule-raspberrypi
docker build -t garret88/amule-raspberrypi .
```

### Usage

#### Host Directories and Volume Mapping

Host|Inside Container|Mapping Required|Usage
---|---|---|---
${AMULE_DIR}|/amule/.aMule/|yes|amule directory
${AMULE_UID}|PUID|yes|amule uid
${AMULE_GID}|PGID|yes|amule gid
${TZ}|P_TZ|yes|timezone

#### Run

```docker
docker run \
-d \
-e PUID=1001 \
-e PGID=1001 \
-e P_TZ=Europe/Rome \
-v /home/user/.amule:/amule/.aMule \
-v /home/user/Incoming:/amule/.aMule\Incoming \
-v /home/user/Temp:/amule/.aMule\Temp \
--network=host \
garret88/amule-raspberrypi
```

### License

The MIT License

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
