# cookiecutter-cpp

C++ 项目配置模板，包含 CMakePresets.json 和 .vscode 配置。

## 新建项目

```bash
cookiecutter gh:aureliano248/cookiecutter-cpp
```

## 已有项目注入配置

在项目根目录下运行：

```bash
curl -sL https://raw.githubusercontent.com/aureliano248/cookiecutter-cpp/main/inject.sh | bash
```

已有的文件不会被覆盖，只补缺的。
