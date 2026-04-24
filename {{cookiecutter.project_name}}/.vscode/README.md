# VS Code 变量参考

以下变量在 VS Code 的各个配置文件中都生效。

| 变量 | 含义 |
|------|------|
| `${workspaceFolder}` | 项目根目录绝对路径 |
| `${workspaceFolderBasename}` | 项目根目录的文件夹名（不含路径） |
| `${file}` | 当前打开的文件的绝对路径 |
| `${fileBasename}` | 当前文件名（含扩展名） |
| `${fileBasenameNoExtension}` | 当前文件名（不含扩展名） |
| `${fileDirname}` | 当前文件所在目录 |
| `${env:VARIABLE_NAME}` | 读取系统环境变量 |
| `${command:cmake.launchTargetPath}` | CMake 插件提供，指向构建产物路径 |
