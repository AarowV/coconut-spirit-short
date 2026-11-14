# 素材说明

图片都是 AI 生成的 PNG，文件名全部是小写英文加下划线，方便在链接里使用。机器可读的清单在 [`manifest.json`](manifest.json)。

## 目录

| 目录 | 内容 |
| --- | --- |
| `characters/` | 人物和椰子精、泥人的定妆图、表情图 |
| `props/` | 道具：不倒翁静态图、旋转态图 |
| `scenes/` | 场景：荒原石台、雷暴云 |
| `composites/` | 合成首帧图（A～H），还没出，出完放这里 |
| `_superseded/` | 已被取代的旧版本，先留着对照，不要再当参考图用 |

## 现有素材状态

| 文件 | 状态 | 用在哪 | 备注 |
| --- | --- | --- | --- |
| `characters/protagonist_portrait_v1.png` | 可用 | 脸、发型、服装基准 | 只有坏笑一个表情 |
| `characters/protagonist_with_pole_9x16.png` | 可用 | 镜 02、05、07A | 竖版，视频用需要出 16:9 |
| `characters/father_portrait_v1.png` | 要改 | 镜 05、07B、09、11 | 发髻和主角太像，要改成半披散灰白头发 |
| `characters/coconut_spirit_awake_base.png` | 定稿 | 镜 06、08、10 | 椰子精所有表情的基准图 |
| `characters/coconut_spirit_sigh.png` | 定稿 | 镜 12、13 | 叹气 |
| `characters/coconut_spirit_smirk.png` | 定稿 | 镜 08 尾帧 | 冷笑 |
| `characters/mudman_fullbody_v1.png` | 要改 | 镜 13、17、18、19 | 轮廓太清晰，眼睛是黑洞 |
| `characters/mudman_closeup_v1.png` | 要改 | 镜 14、16、21 | 泥浆半透明偏金，要改成哑光灰褐 |
| `props/tumbler_static.png` | 定稿 | 镜 02 合成图的参考 | |
| `props/tumbler_spinning.png` | 定稿 | 镜 03、04 首帧 | |
| `scenes/wasteland_stone_platform.png` | 定稿 | 镜 01 | 还要出加了小人影的版本 |
| `scenes/thunderstorm_cloud_wide.png` | 定稿 | 镜 20 | |

## 还没出的图

1. 椰子沉睡版（镜 04 尾帧、镜 06 首帧）
2. 主角 16:9 版（合成图 A、B、C、E、F、G 的参考）
3. 泥人修正版特写和全身
4. 爸爸 16:9 半身图（改发型）
5. 主角"兴奋"表情图（镜 07A 首帧）；疑惑、尴尬表情
6. 荒原石台加小人影版（镜 01）
7. 合成首帧图 A～H（提示词见 `../prompts/i2v-prompts.md`）

## 在别的应用里引用图片

仓库是公开的，每张图都有固定的直链：

```
https://raw.githubusercontent.com/AarowV/coconut-spirit-short/main/assets/characters/coconut_spirit_awake_base.png
```

需要给图像或视频生成工具当参考图 URL 时，直接贴这个链接，把末尾的路径换成别的图的路径即可。
