# FRIKEE-xrepo

Self-built customized XMake package registry.  
自建定制化 XMake 包仓库。

## Usage / 使用方法

1. Add by command / 使用命令添加
```shell
xmake repo --add FRIKEE git@github.com:FRI-KEE/FRIKEE-xrepo.git
```

2. Add directly in xmake.lua / 在 xmake.lua 内添加
```lua
add_repositories("FRIKEE git@github.com:FRI-KEE/FRIKEE-xrepo.git")
```

- 注意：如果 SSH 连接失败，可以尝试使用 HTTPS 连接 `https://github.com/FRI-KEE/FRIKEE-xrepo.git`
- Note: If the SSH connection fails, you can try the HTTPS connection `https://github.com/FRI-KEE/FRIKEE-xrepo.git`.
