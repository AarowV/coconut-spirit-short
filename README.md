# 放生椰子精

一条东方奇幻 × 荒诞喜剧的 AI 短视频，改编自一个梦：主角用竹竿拨弄一个凉薯形不倒翁，转停后它变成一颗会说话的椰子，主角拿"放了你"换修仙功法和黄金，椰子变成泥人，带他往西边的雷云走去。

约 85 秒，22 镜，16:9 生成，后期加 2.39:1 遮幅。

## 目录

```
.
├── README.md
├── docs/
│   └── storyboard.md          分镜剧本（22 镜，含台词、声音、制作建议）
├── prompts/
│   ├── image-prompts.md       定妆图、场景图、补图的提示词
│   └── i2v-prompts.md         图生视频提示词（通用版）+ 8 张合成首帧图的提示词
├── assets/
│   ├── README.md              素材状态表和还缺的图
│   ├── manifest.json          素材清单（机器可读）
│   ├── characters/            主角、爸爸、椰子精、泥人
│   ├── props/                 不倒翁
│   ├── scenes/                荒原石台、雷暴云
│   ├── composites/            合成首帧图（待补）
│   └── _superseded/           已取代的旧版本
├── video/
│   ├── clips/                 每个镜头生成的片段，命名 shot01.mp4 …
│   └── final/                 成片
└── scripts/
    └── setup_github.sh        一键创建 GitHub 仓库并推送（已用不上，留作备用）
```

## 当前进度

- 分镜和提示词：已完成
- 图像素材：12 张可用或定稿，3 张旧版本归档，还缺的图见 `assets/README.md`
- 视频片段：还没开始生成

## 怎么让别的应用访问

仓库是公开（public）的，仓库里的每个文件都有固定直链，格式是：

```
https://raw.githubusercontent.com/AarowV/coconut-spirit-short/main/<文件路径>
```

例如椰子精的基准图：

```
https://raw.githubusercontent.com/AarowV/coconut-spirit-short/main/assets/characters/coconut_spirit_awake_base.png
```

- 图像或视频生成工具需要参考图 URL 时，直接贴上面的链接。
- 其他应用（Claude Code、Cursor、自动化脚本）可以直接 `git clone`，或读 `assets/manifest.json` 拿到全部素材的路径、状态和用在哪个镜头。
- 想改成私有仓库也可以，但私有仓库没有公开直链，工具读取要用 GitHub 的 Personal Access Token。

## 命名约定

- 图片：小写英文加下划线，例如 `coconut_spirit_awake_base.png`。
- 视频片段：`shot01.mp4` 到 `shot22.mp4`，拆成两段的镜头加后缀，例如 `shot07a.mp4`、`shot07b.mp4`。
- 合成首帧图：`composite_A.png` 到 `composite_H.png`，放进 `assets/composites/`。
- 改版的图加版本号，旧版本移进 `_superseded/`，不要直接覆盖。

## 视频文件的注意事项

- GitHub 单个文件不能超过 100MB，单条镜头片段通常够用。成片太大的话，用仓库的 Releases 页面上传，不要提交进 git。
- 想反复提交大文件，用 Git LFS。
- 过程文件（剪映工程、临时导出）已经在 `.gitignore` 里排除。
