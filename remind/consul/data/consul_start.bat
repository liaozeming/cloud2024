@echo.服务启动......  
@echo off  
@sc create Consul binpath= "E:\consul\consul_1.18.0_windows_386\consul.exe agent -server -ui -bind=127.0.0.1 -client=0.0.0.0 -bootstrap-expect  1  -data-dir E:\consul\data   "
@net start Consul
@sc config Consul start= AUTO  
@echo.Consul start is OK......success
@pause