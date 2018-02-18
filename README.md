Aria2 with webui for unRaid
---
Only 11Mb. Inspired by XUJINKAI.  

Edit config file out of the image.  
Move file completed to another folder.  
(Tasks that contains more than one files will not be moved.)  

### Install
I. replace **/DOWNLOAD_DIR**, **/COMPLETED_DIR** and **/CONFIG_DIR** for save data, and **YOUR_SECRET_CODE** for security. Run command below  
```
sudo docker run -d \
--name unraid-aria2-with-webui \
-p 6800:6800 \
-p 6880:80 \
-v /CONFIG_DIR:/conf \
-v /DOWNLOAD_DIR:=/download \
-v /COMPLETED_DIR:=/finished \
-e SECRET=YOUR_SECRET_CODE \
fanningert/unraid-aria2-with-webui
```
  
II. Open `http://serverip:6880/` for aria2-webui.  

### Build:  
`sudo docker build -f Dockerfile -t fanningert/unraid-aria2-with-webui .`  

### Link:  
https://github.com/aria2/aria2  
https://github.com/ziahamza/webui-aria2  

https://github.com/acgotaku/BaiduExporter  
