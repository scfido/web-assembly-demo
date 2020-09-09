# 简介

以mono为运行环境的Web Assembly示例

## 运行

```sh
sh ./build.sh
cd wwwroot
dotnet serve -p 8080
```

访问http://localhost:8080

## 调试

1. 打开`launch.json`,添加`Launch Edge`,添加` port`参数设置为`9222`。
2. 运行Mono SDK目录中的`BrowserDebugHost`
    ```
    cd mono-wasm/dbg-proxy/netcoreapp3.0 
    dotnet BrowserDebugHost.dll
    ```
3. VSCode `F5` 启动调试
4. 另开一个浏览器访问http://localhost:9300

**注意：** 目前并不能调试C#代码
