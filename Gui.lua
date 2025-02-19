local T, C, L = unpack((select(2, ...)))

local GUI = T["GUI"]
local Locale = GetLocale()

local General = function(self)
	local Window = self:CreateWindow("通用设置", true)

	Window:CreateSection("All", "配置文件")
	local Profile = Window:CreateDropdown("All", "General", "Profiles", "从其他角色导入配置文件")
	Profile.Menu:HookScript("OnHide", GUI.SetProfile)

	Window:CreateSection("All", "主题")
	Window:CreateDropdown("All", "General", "Themes", "设置UI主题")

	Window:CreateSection("All", "缩放")
	Window:CreateSlider("All", "General", "UIScale", "设置UI缩放", 0.35, 1, 0.01)

	Window:CreateSection("All", "边框和背景")
	Window:CreateColorSelection("All", "General", "BackdropColor", "背景颜色")
	Window:CreateColorSelection("All", "General", "BorderColor", "边框颜色")
	Window:CreateSwitch("All", "General", "ClassColorBorder", "使用职业颜色覆盖边框颜色")
	Window:CreateSwitch("All", "General", "HideShadows", "隐藏框架阴影")

	Window:CreateSection("All", "字体")
	Window:CreateDropdown("All", "General", "GlobalFont", "设置全局字体")
end

local ActionBars = function(self)
	local Window = self:CreateWindow("动作条")

	Window:CreateSection("All", "启用")
	Window:CreateSwitch("All", "ActionBars", "Enable", "启用动作条模块")
	Window:CreateSwitch("All", "ActionBars", "BottomLeftBar", "启用左下动作条")
	Window:CreateSwitch("All", "ActionBars", "BottomRightBar", "启用右下动作条")
	Window:CreateSwitch("All", "ActionBars", "RightBar", "启用右侧动作条 #1")
	Window:CreateSwitch("All", "ActionBars", "LeftBar", "启用右侧动作条 #2")
	Window:CreateSwitch("Retail", "ActionBars", "Bar6", "启用右侧动作条 #3")
	Window:CreateSwitch("Retail", "ActionBars", "Bar7", "启用右侧动作条 #4")
	Window:CreateSwitch("Retail", "ActionBars", "Bar8", "启用右侧动作条 #5")
	Window:CreateSwitch("All", "ActionBars", "Pet", "启用宠物条")
	Window:CreateSwitch("All", "ActionBars", "ShapeShift", "启用形态条")
	Window:CreateSwitch("All", "ActionBars", "HotKey", "启用快捷键文本")
	Window:CreateSwitch("All", "ActionBars", "Macro", "启用宏文本")
	--Window:CreateSwitch("WOTLK", "ActionBars", "MultiCastBar", "显示暴雪多播图腾条")
	Window:CreateSwitch("Retail", "ActionBars", "AutoAddNewSpell", "自动将新法术添加到动作条")

	Window:CreateSection("All", "动作条样式")
	Window:CreateSwitch("All", "ActionBars", "ProcAnim", "启用自定义法术触发动画")
	Window:CreateSwitch("All", "ActionBars", "EquipBorder", "高亮显示装备在动作条中的物品")
	Window:CreateSwitch("All", "ActionBars", "SwitchBarOnStance", "姿态变化时切换动作条")
	Window:CreateSwitch("All", "ActionBars", "ShowBackdrop", "显示动作条背景")
	Window:CreateSlider("All", "ActionBars", "Bar1ButtonsPerRow", "动作条 #1, 每行按钮数量", 1, 12, 1)
	Window:CreateSlider("All", "ActionBars", "Bar2ButtonsPerRow", "动作条 #2, 每行按钮数量", 1, 12, 1)
	Window:CreateSlider("All", "ActionBars", "Bar3ButtonsPerRow", "动作条 #3, 每行按钮数量", 1, 12, 1)
	Window:CreateSlider("All", "ActionBars", "Bar4ButtonsPerRow", "动作条 #4, 每行按钮数量", 1, 12, 1)
	Window:CreateSlider("All", "ActionBars", "Bar5ButtonsPerRow", "动作条 #5, 每行按钮数量", 1, 12, 1)
	Window:CreateSlider("Retail", "ActionBars", "Bar6ButtonsPerRow", "动作条 #6, 每行按钮数量", 1, 12, 1)
	Window:CreateSlider("Retail", "ActionBars", "Bar7ButtonsPerRow", "动作条 #7, 每行按钮数量", 1, 12, 1)
	Window:CreateSlider("Retail", "ActionBars", "Bar8ButtonsPerRow", "动作条 #8, 每行按钮数量", 1, 12, 1)
	Window:CreateSlider("All", "ActionBars", "BarPetButtonsPerRow", "宠物动作条, 每行按钮数量", 1, 10, 1)

	Window:CreateSection("All", "每行按钮数量")
	Window:CreateSlider("All", "ActionBars", "Bar1NumButtons", "动作条 #1, 每行按钮数量", 1, 12, 1)
	Window:CreateSlider("All", "ActionBars", "Bar2NumButtons", "动作条 #2, 每行按钮数量", 1, 12, 1)
	Window:CreateSlider("All", "ActionBars", "Bar3NumButtons", "动作条 #3, 每行按钮数量", 1, 12, 1)
	Window:CreateSlider("All", "ActionBars", "Bar4NumButtons", "动作条 #4, 每行按钮数量", 1, 12, 1)
	Window:CreateSlider("All", "ActionBars", "Bar5NumButtons", "动作条 #5, 每行按钮数量", 1, 12, 1)
	Window:CreateSlider("Retail", "ActionBars", "Bar6NumButtons", "动作条 #6, 每行按钮数量", 1, 12, 1)
	Window:CreateSlider("Retail", "ActionBars", "Bar7NumButtons", "动作条 #7, 每行按钮数量", 1, 12, 1)
	Window:CreateSlider("Retail", "ActionBars", "Bar8NumButtons", "动作条 #8, 每行按钮数量", 1, 12, 1)

	Window:CreateSection("All", "动作条大小")
	Window:CreateSlider("All", "ActionBars", "NormalButtonSize", "设置按钮大小", 20, 48, 1)
	Window:CreateSlider("All", "ActionBars", "PetButtonSize", "设置宠物按钮大小", 20, 48, 1)
	Window:CreateSlider("All", "ActionBars", "ButtonSpacing", "设置按钮间距", 0, 8, 1)

	Window:CreateSection("All", "字体")
	Window:CreateDropdown("All", "ActionBars", "Font", "设置动作条字体", "Font")
	Window:CreateDropdown("All", "Cooldowns", "Font", "设置冷却字体", "Font")
end

local Auras = function(self)
	local Window = self:CreateWindow("光环")

	Window:CreateSection("All", "启用")
	Window:CreateSwitch("All", "Auras", "Enable", "启用光环模块")

	Window:CreateSection("All", "光环样式")
	Window:CreateSwitch("All", "Auras", "Flash", "在持续时间较短时闪烁光环")
	Window:CreateSwitch("All", "Auras", "ClassicTimer", "使用经典计时器倒计时")
	Window:CreateSwitch("All", "Auras", "HideBuffs", "隐藏增益效果")
	Window:CreateSwitch("All", "Auras", "HideDebuffs", "隐藏减益效果")
	Window:CreateSwitch("All", "Auras", "Animation", "为新光环添加动画效果")
	Window:CreateSlider("All", "Auras", "BuffsPerRow", "每行显示的增益数量", 1, 40, 1)

	Window:CreateSection("All", "字体")
	Window:CreateDropdown("All", "Auras", "Font", "设置光环字体", "Font")
end

local Bags = function(self)
	local Window = self:CreateWindow("背包")

	Window:CreateSection("All", "Enable")
	Window:CreateSwitch("All", "Bags", "Enable", "启用背包模块")
	Window:CreateSwitch("Retail", "Bags", "ReagentInsideBag", "将材料包物品放入主背包内")
	Window:CreateSwitch("All", "Bags", "ItemLevel", "在背包的护甲和武器物品上显示物品等级")

	Window:CreateSection("All", "背包样式")
	Window:CreateSwitch("All", "Bags", "IdentifyQuestItems", "用感叹号标记背包中的任务物品")
	Window:CreateSwitch("All", "Bags", "FlashNewItems", "闪烁背包中的新物品")
	Window:CreateColorSelection("Retail", "Bags", "ReagentBagColor", "主背包中材料包插槽的颜色")

	Window:CreateSection("All", "设置大小")
	Window:CreateSlider("All", "Bags", "ButtonSize", "设置背包格子大小", 20, 36, 1)
	Window:CreateSlider("All", "Bags", "Spacing", "设置背包格子间距", 0, 8, 1)
	Window:CreateSlider("All", "Bags", "ItemsPerRow", "设置每行物品数量", 8, 16, 1)

	Window:CreateSection("All", "排序")
	Window:CreateSwitch("All", "Bags", "SortToBottom", "将背包物品排序到底部")
end

local Chat = function(self)
	local Window = self:CreateWindow("聊天")

	Window:CreateSection("All", "启用")
	Window:CreateSwitch("All", "Chat", "Enable", "启用聊天模块")
	Window:CreateSwitch("All", "Chat", "WhisperSound", "启用私聊声音")
	Window:CreateSwitch("All", "Chat", "TextFading", "聊天消息不活跃时是否淡入淡出?")
	Window:CreateDropdown("All", "Chat", "Bubbles", "聊天气泡")
	Window:CreateSlider("All", "Chat", "BubblesTextSize", "设置气泡文本大小", 6, 16, 1)
	Window:CreateSwitch("All", "Chat", "BubblesNames", "在气泡中显示名称?")

	Window:CreateSection("All", "历史记录")
	Window:CreateSlider("All", "Chat", "LogMax", "你希望保存到聊天历史记录中的聊天行数", 0, 500, 10)

	Window:CreateSection("All", "窗口大小 [Tukui主题专用]")
	Window:CreateSlider("All", "Chat", "LeftWidth", "设置左侧聊天窗口宽度", 300, 600, 1)
	Window:CreateSlider("All", "Chat", "LeftHeight", "设置左侧聊天窗口高度", 150, 600, 1)
	Window:CreateSlider("All", "Chat", "RightWidth", "设置右侧聊天窗口宽度", 300, 600, 1)
	Window:CreateSlider("All", "Chat", "RightHeight", "设置右侧聊天窗口高度", 150, 600, 1)

	Window:CreateSection("All", "窗口样式")
	Window:CreateSwitch("All", "Chat", "SkinBubbles", "为气泡应用皮肤")
	Window:CreateSwitch("All", "Chat", "ShortChannelName", "缩短频道名称")
	Window:CreateSlider("All", "Chat", "ScrollByX", "设置滚动行数", 1, 6, 1)
	Window:CreateSlider("All", "Chat", "BackgroundAlpha", "设置聊天窗口背景透明度", 40, 100, 1)
	Window:CreateSlider("All", "Chat", "TextFadingTimer", "聊天文本淡入淡出的时间?", 10, 600, 10)
	Window:CreateSwitch("All", "Chat", "LinkBrackets", "在括号中显示URL链接")
	Window:CreateSwitch("All", "Chat", "RightChatAlignRight", "右侧聊天窗口文本右对齐")
	Window:CreateColorSelection("All", "Chat", "LinkColor", "链接颜色")

	Window:CreateSection("All", "字体")
	Window:CreateDropdown("All", "Chat", "ChatFont", "设置聊天字体", "Font")
	Window:CreateDropdown("All", "Chat", "TabFont", "设置聊天标签字体", "Font")
end

local DataTexts = function(self)
	local Window = self:CreateWindow("信息条")

	Window:CreateSection("All", "启用")
	Window:CreateSwitch("All", "DataTexts", "Battleground", "启用战场数据文本")
	Window:CreateSwitch("All", "DataTexts", "HideFriendsNotPlaying", "隐藏当前未玩任何游戏的好友")

	Window:CreateSection("All", "颜色")
	Window:CreateColorSelection("All", "DataTexts", "NameColor", "标题颜色")
	Window:CreateColorSelection("All", "DataTexts", "ValueColor", "文本颜色")
	Window:CreateColorSelection("All", "DataTexts", "HighlightColor", "高亮颜色")
	Window:CreateSwitch("All", "DataTexts", "ClassColor", "按职业颜色显示数据文本（覆盖名称/值颜色）")

	Window:CreateSection("All", "字体")
	Window:CreateDropdown("All", "DataTexts", "Font", "设置数据文本字体", "Font")
end

local Loot = function(self)
	local Window = self:CreateWindow("拾取")

	Window:CreateSection("All", "Enable")
	Window:CreateSwitch("All", "Loot", "Enable", "启用拾取模块")

	Window:CreateSection("All", "Font")
	Window:CreateDropdown("All", "Loot", "Font", "设置拾取字体", "Font")
end

local Misc = function(self)
	local Window = self:CreateWindow("杂项")

	Window:CreateSection("All", "Widgets")
	Window:CreateSwitch("All", "Misc", "DisplayWidgetPowerBar", "显示坐骑按钮")
	Window:CreateSection("All", "微型菜单按钮")
	Window:CreateDropdown("All", "Misc", "MicroStyle", "选择你要使用的微型菜单样式")
	Window:CreateDropdown("All", "Misc", "MicroToggle", "选择切换微菜单的快捷键")
	Window:CreateSection("All", "物品等级")
	Window:CreateSwitch("All", "Misc", "ItemLevel", "在角色面板中显示物品等级")
	Window:CreateSection("All", "仇恨")
	Window:CreateSwitch("All", "Misc", "ThreatBar", "启用仇恨条")
	Window:CreateSection("All", "经验和声望条")
	Window:CreateSwitch("All", "Misc", "ExperienceEnable", "启用经验和声望条")
	Window:CreateSection("All", "AFK屏保")
	Window:CreateSwitch("All", "Misc", "AFKSaver", "启用 AFK 屏保")
	Window:CreateSection("All", "访问商人自动修理销售")
	Window:CreateSwitch("All", "Misc", "AutoSellJunk", "访问商人时自动出售垃圾物品")
	Window:CreateSwitch("All", "Misc", "AutoRepair", "访问商人时自动修理装备")
	Window:CreateSection("All", "UI报错框")
	Window:CreateSlider("All", "Misc", "UIErrorSize", "设置 UI 错误文本字体大小", 12, 24, 1)
	Window:CreateDropdown("All", "Misc", "UIErrorFont", "设置 UI 错误字体", "Font")
	Window:CreateSection("All", "肖像/头像")
	Window:CreateSwitch("All", "Misc", "TalkingHeadEnable", "启用对话头像?")
	Window:CreateSection("All", "任务追踪器")
	Window:CreateSwitch("All", "Misc", "ObjectiveTracker", "启用任务追踪器")
end

local Maps = function(self)
	local Window = self:CreateWindow("地图")

	Window:CreateSection("All", "小地图")
	Window:CreateSwitch("All", "Maps", "MinimapTracking", "启用小地图追踪图标")
	Window:CreateSwitch("All", "Maps", "MinimapCoords", "鼠标悬停小地图时启用坐标显示")
	Window:CreateSlider("All", "General", "MinimapScale", "设置小地图缩放比例（%）", 50, 200, 1)
	Window:CreateSection("All", "世界地图")
	Window:CreateSwitch("All", "Misc", "WorldMapEnable", "启用我们的自定义世界地图")
	Window:CreateSlider("All", "Misc", "FadeWorldMapAlpha", "移动时世界地图的不透明度", 0, 100, 1)
	Window:CreateSlider("All", "General", "WorldMapScale", "设置世界地图缩放比例（%）", 40, 100, 1)
end

local NamePlates = function(self)
	local Window = self:CreateWindow("姓名版")

	Window:CreateSection("All", "启用")
	Window:CreateSwitch("All", "NamePlates", "Enable", "启用姓名板模块")
	Window:CreateSwitch("All", "NamePlates", "NameplateCastBar", "启用姓名板施法条")
	Window:CreateSwitch("All", "NamePlates", "QuestIcon", "启用姓名板任务图标指示器")
	Window:CreateSwitch("Retail", "NamePlates", "ClassIcon", "启用姓名板职业图标指示器（PvP 推荐）")
	Window:CreateSection("All", "姓名版选中样式")
	Window:CreateSlider("All", "NamePlates", "NotSelectedAlpha", "设置未选中姓名板的透明度（%）", 0, 100, 1)
	Window:CreateSlider("All", "NamePlates", "SelectedScale", "设置选中姓名板的缩放比例（%）", 100, 200, 1)
	Window:CreateSwitch("All", "NamePlates", "OnlySelfDebuffs", "仅显示我自己施加的减益效果")
	Window:CreateColorSelection("All", "NamePlates", "HighlightColor", "高亮纹理颜色")
	Window:CreateSection("All", "姓名版仇恨着色")
	Window:CreateSwitch("All", "NamePlates", "ColorThreat", "启用根据仇恨值对姓名板染色")
	Window:CreateColorSelection("All", "NamePlates", "AggroColor1", "生命值颜色：低仇恨时")
	Window:CreateColorSelection("All", "NamePlates", "AggroColor2", "生命值颜色：仇恨过量时")
	Window:CreateColorSelection("All", "NamePlates", "AggroColor3", "生命值颜色：坦克仇恨不稳定，在仇恨列表但非仇恨最高")
	Window:CreateColorSelection("All", "NamePlates", "AggroColor4", "生命值颜色：坦克仇恨稳定且仇恨最高")
	Window:CreateSection("All", "姓名版尺寸")
	Window:CreateSlider("All", "NamePlates", "Width", "设置姓名板宽度", 60, 200, 10)
	Window:CreateSlider("All", "NamePlates", "Height", "设置姓名板高度", 12, 24, 1)
	Window:CreateSlider("All", "NamePlates", "HighlightSize", "设置姓名板高亮部分的大小", 5, 15, 1)
	Window:CreateSection("All", "生命值样式")
	Window:CreateDropdown("All", "NamePlates", "HealthTag", "姓名板上的生命值标签")
	Window:CreateSection("All", "字体")
	Window:CreateDropdown("All", "NamePlates", "Font", "设置姓名板字体", "Font")
end

local Party = function(self)
	local Window = self:CreateWindow("小队")

	Window:CreateSection("All", "启用")
	Window:CreateSwitch("All", "Party", "Enable", "启用队伍模块")
	Window:CreateSwitch("All", "Party", "ShowPets", "显示宠物")

	Window:CreateSection("All", "队伍样式")
	Window:CreateSwitch("All", "Party", "Buffs", "在队伍成员上显示增益效果")
	Window:CreateSwitch("All", "Party", "Debuffs", "在队伍成员上显示减益效果")
	Window:CreateSwitch("All", "Party", "ShowPlayer", "在队伍中显示自己")
	Window:CreateSlider("All", "Party", "RangeAlpha", "设置超出范围时的透明度", 0, 1, 0.1)
	Window:CreateSwitch("All", "Party", "ShowHealthText", "显示生命值文本数值")
	Window:CreateSwitch("All", "Party", "ShowManaText", "显示法力值文本数值")
	Window:CreateColorSelection("All", "Party", "HighlightColor", "高亮纹理颜色")
	Window:CreateSlider("All", "Party", "HighlightSize", "设置姓名板高亮部分的大小", 5, 15, 1)

	Window:CreateSection("All", "文本样式")
	Window:CreateDropdown("All", "Party", "HealthTag", "队伍单位的生命值标签")

	Window:CreateSection("All", "字体")
	Window:CreateDropdown("All", "Party", "Font", "设置队伍字体", "Font")
	Window:CreateDropdown("All", "Party", "HealthFont", "设置队伍生命值字体t", "Font")
end

local Raid = function(self)
	local Window = self:CreateWindow("团队")

	Window:CreateSection("All", "启用")
	Window:CreateSwitch("All", "Raid", "Enable", "启用团队模块")
	Window:CreateSwitch("All", "Raid", "ShowPets", "为宠物启用团队模块")
	Window:CreateSwitch("All", "Raid", "VerticalHealth", "启用垂直生命值条")

	Window:CreateSection("All", "|cffffff00[团队 1->20]|r 人设置")
	Window:CreateSlider("All", "Raid", "MaxUnitPerColumn", "设置每列的最大单位数", 1, 15, 1)
	Window:CreateSlider("All", "Raid", "WidthSize", "设置单位宽度", 79, 150, 1)
	Window:CreateSlider("All", "Raid", "HeightSize", "设置单位高度", 45, 150, 1)
	Window:CreateSlider("All", "Raid", "Padding", "单位之间的像间距", 0, 20, 1)

	Window:CreateSection("All", "|cf00fff00[团队 20->40]|r 人设置")
	Window:CreateSlider("All", "Raid", "Raid40MaxUnitPerColumn", "设置每列的最大单位数", 1, 15, 1)
	Window:CreateSlider("All", "Raid", "Raid40WidthSize", "设置单位宽度", 79, 150, 1)
	Window:CreateSlider("All", "Raid", "Raid40HeightSize", "设置单位高度", 45, 150, 1)
	Window:CreateSlider("All", "Raid", "Padding40", "单位之间的像素间距", 0, 20, 1)

	Window:CreateSection("All", "增益")
	Window:CreateDropdown("All", "Raid", "RaidBuffsStyle", "选择你要使用的增益效果显示样式")

	if C.Raid.RaidBuffsStyle.Value == "Standard" then
		Window:CreateDropdown("All", "Raid", "RaidBuffs", "启用增益效果显示和过滤")
		Window:CreateSwitch("All", "Raid", "DesaturateBuffs", "将非自己施加的增益效果去饱和显示")
	elseif C.Raid.RaidBuffsStyle.Value == "Aura Track" then
		Window:CreateSwitch("All", "Raid", "AuraTrack", "为治疗职业启用光环追踪模块（替代增益效果）")
		Window:CreateSwitch("All", "Raid", "AuraTrackIcons", "使用方形图标代替状态条")
                                Window:CreateSwitch("All", "Raid", "AuraTrackSpellTextures", "在光环方块上显示图标纹理而不是彩色方块")
		Window:CreateSlider("All", "Raid", "AuraTrackThickness", "状态条的厚度（像素）", 2, 10, 1)
	end

	Window:CreateSection("All", "减益")
	Window:CreateSwitch("All", "Raid", "启用减益效果追踪（根据当前游戏玩法（PVP 或 PVE）自动过滤）")
	Window:CreateSwitch("All", "Raid", "我们已经有一个 PVE 和 PVP 的减益效果追踪列表，是否使用它？")

	Window:CreateSection("All", "文本样式")
	Window:CreateDropdown("All", "Raid", "HealthTag", "团队单位的生命值标签")

	Window:CreateSection("All", "其他")
	Window:CreateDropdown("All", "Raid", "Font", "置团队字体", "Font")
	Window:CreateDropdown("All", "Raid", "HealthFont", "设置团队生命值字体", "Font")
	Window:CreateSlider("All", "Raid", "RangeAlpha", "设置超出范围时的透明度", 0, 1, 0.1)
	Window:CreateSlider("All", "Raid", "HighlightSize", "设置团队高亮部分的大小", 5, 15, 1)
	Window:CreateColorSelection("All", "Raid", "HighlightColor", "高亮纹理颜色")
	Window:CreateDropdown("All", "Raid", "GroupBy", "设置团队分组方式")
end

local Tooltips = function(self)
	local Window = self:CreateWindow("鼠标提示")

	Window:CreateSection("All", "启用")
	Window:CreateSwitch("All", "Tooltips", "Enable", "启用提示信息框模块")
	Window:CreateSwitch("All", "Tooltips", "DisplayTitle", "在玩家姓名中显示头衔")
	Window:CreateSwitch("All", "Tooltips", "UnitHealthText", "启用单位生命值文本显示")
	Window:CreateSwitch("All", "Tooltips", "AlwaysCompareItems", "始终比较物品")

	Window:CreateSection("All", "样式")
	Window:CreateSwitch("All", "Tooltips", "ItemBorderColor", "根据物品品质设置边框颜色？")
	Window:CreateSwitch("All", "Tooltips", "UnitBorderColor", "根据单位职业/反应设置边框颜色？")
	Window:CreateSwitch("All", "Tooltips", "HideInCombat", "战斗中隐藏提示信息框")
	Window:CreateSwitch("All", "Tooltips", "MouseOver", "在鼠标光标处显示提示信息框")

	Window:CreateSection("All", "字体")
	Window:CreateDropdown("All", "Tooltips", "HealthFont", "设置提示信息框生命值字体", "Font")
end

local Textures = function(self)
	local Window = self:CreateWindow("纹理样式")

	Window:CreateSection("All", "单位框架")
	Window:CreateDropdown("All", "Textures", "UFHealthTexture", "单位框架生命值纹理", "Texture")
	Window:CreateDropdown("All", "Textures", "UFPowerTexture", "单位框架能量值纹理", "Texture")
	Window:CreateDropdown("All", "Textures", "UFCastTexture", "单位框架施法条纹理", "Texture")

	Window:CreateSection("All", "小队")
	Window:CreateDropdown("All", "Textures", "UFPartyHealthTexture", "队伍生命值纹理", "Texture")
	Window:CreateDropdown("All", "Textures", "UFPartyPowerTexture", "队伍能量值纹理", "Texture")

	Window:CreateSection("All", "团队")
	Window:CreateDropdown("All", "Textures", "UFRaidHealthTexture", "团队生命值纹理", "Texture")
	Window:CreateDropdown("All", "Textures", "UFRaidPowerTexture", "团队能量值纹理", "Texture")

	Window:CreateSection("All", "姓名版")
	Window:CreateDropdown("All", "Textures", "NPHealthTexture", "姓名板生命值纹理", "Texture")
	Window:CreateDropdown("All", "Textures", "NPPowerTexture", "姓名板能量值纹理", "Texture")
	Window:CreateDropdown("All", "Textures", "NPCastTexture", "姓名板施法条纹理", "Texture")

	Window:CreateSection("All", "杂项")
	Window:CreateDropdown("All", "Textures", "QuestProgressTexture", "任务进度条纹理", "Texture")
	Window:CreateDropdown("All", "Textures", "TTHealthTexture", "提示信息框生命值纹理", "Texture")
end

local UnitFrames = function(self)
	local Window = self:CreateWindow("单位框架")

	Window:CreateSection("All", "启用")
	Window:CreateSwitch("All", "UnitFrames", "Enable", "启用单位框架模块")
	Window:CreateSwitch("Retail", "UnitFrames", "ClassBar", "启用职业资源条（例如：神圣能量）")
	Window:CreateSwitch("Cata", "UnitFrames", "ClassBar", "启用职业资源条（例如：神圣能量）")
	Window:CreateSwitch("All", "UnitFrames", "OOCNameLevel", "非战斗状态下显示我的姓名/等级")
	Window:CreateSwitch("All", "UnitFrames", "OOCPetNameLevel", "非战斗状态下显示我的宠物姓名/等级")
	Window:CreateSwitch("All", "UnitFrames", "Portrait", "启用单位头像")
	Window:CreateSwitch("All", "UnitFrames", "CastBar", "启用施法条")
	Window:CreateSwitch("All", "UnitFrames", "HealComm", "启用治疗预估")
	Window:CreateSwitch("All", "UnitFrames", "Boss", "启用首领单位框架")
	Window:CreateSwitch("All", "UnitFrames", "Arena", "启用竞技场单位框架")
	Window:CreateSwitch("All", "UnitFrames", "TotemBar", "启用图腾条")
	Window:CreateSwitch("Classic", "UnitFrames", "PowerTick", "启用能量刻度")

	Window:CreateSection("All", "自身战斗信息滚动显示")
	Window:CreateSwitch("All", "UnitFrames", "ScrollingCombatText", "启用战斗信息滚动文本")
	Window:CreateSwitch("All", "UnitFrames", "ScrollingCombatTextIcon", "在战斗信息滚动文本上显示图标")
	Window:CreateSlider("All", "UnitFrames", "ScrollingCombatTextFontSize", "战斗信息滚动文本的字体大小", 10, 80, 1)
	Window:CreateSlider("All", "UnitFrames", "ScrollingCombatTextRadius", "战斗信息滚动文本的显示区域大小", 50, 500, 10)
	Window:CreateSlider("All", "UnitFrames", "ScrollingCombatTextDisplayTime", "文本显示的秒数", .5, 3, .1)
	Window:CreateDropdown("All", "UnitFrames", "ScrollingCombatTextFont", "设置战斗信息滚动文本的字体", "Font")
	Window:CreateDropdown("All", "UnitFrames", "ScrollingCombatTextAnim", "你想使用哪种动画效果？")

	Window:CreateSection("All", "光环")
	Window:CreateSwitch("All", "UnitFrames", "PlayerBuffs", "启用玩家增益效果")
	Window:CreateSwitch("All", "UnitFrames", "PlayerDebuffs", "启用玩家减益效果")
	Window:CreateSwitch("All", "UnitFrames", "PlayerAuraBars", "以状态条形式显示玩家光环")
	Window:CreateSwitch("All", "UnitFrames", "OnlySelfBuffs", "只在单位框架上显示我们自己施加的增益效果")
	Window:CreateSwitch("All", "UnitFrames", "OnlySelfDebuffs", "只在目标上显示我们自己施加的减益效果")
	Window:CreateSwitch("All", "UnitFrames", "TargetBuffs", "启用目标光环")
	Window:CreateSwitch("All", "UnitFrames", "TargetDebuffs", "启用目标减益效果")
	Window:CreateSwitch("All", "UnitFrames", "TOTAuras", "启用目标的目标光环")
	Window:CreateSwitch("All", "UnitFrames", "PetAuras", "启用宠物光环")
	Window:CreateSwitch("All", "UnitFrames", "FocusAuras", "启用焦点和焦点目标光环")
	Window:CreateSwitch("All", "UnitFrames", "ArenaAuras", "启用竞技场光环")
	Window:CreateSwitch("All", "UnitFrames", "BossAuras", "启用首领光环")
	Window:CreateSwitch("All", "UnitFrames", "AurasBelow", "将光环移动到单位框架下方")
	Window:CreateSwitch("All", "UnitFrames", "DesaturateDebuffs", "将非自己施加的减益效果去饱和显示")
	Window:CreateSwitch("All", "UnitFrames", "FlashRemovableBuffs", "闪烁可驱散/净化/偷取的敌人增益效果")

	Window:CreateSection("All", "样式设置")
	Window:CreateSwitch("All", "UnitFrames", "Smoothing", "为生命值和能量条添加动画效果")
	Window:CreateSwitch("All", "UnitFrames", "TargetEnemyHostileColor", "根据敌对反应颜色为敌人生命值条染色")
	Window:CreateSlider("All", "UnitFrames", "StatusBarBackgroundMultiplier", "生命值和能量条背景的不透明度百分比", 0, 50, 1)
	Window:CreateSwitch("All", "UnitFrames", "UnlinkCastBar", "将施法条与单位框架分离")
	Window:CreateSwitch("All", "UnitFrames", "CastBarIcon", "在施法条上显示法术图标")
	Window:CreateSwitch("All", "UnitFrames", "CastBarLatency", "在施法条上显示施法延迟")
	Window:CreateSwitch("All", "UnitFrames", "ComboBar", "启用连击点数条")
	Window:CreateSwitch("All", "UnitFrames", "Smooth", "启用生命值平滑过渡效果")
	Window:CreateSwitch("All", "UnitFrames", "CombatLog", "启用战斗反馈文本")
	Window:CreateSwitch("All", "UnitFrames", "Portrait2D", "使用 2D 头像")
	Window:CreateDropdown("All", "UnitFrames", "Font", "设置单位框架字体", "Font")
	Window:CreateDropdown("All", "UnitFrames", "TotemBarStyle", "你想使用哪种图腾样式？")
	Window:CreateColorSelection("All", "UnitFrames", "HealCommSelfColor", "治疗预估 - 我的治疗颜色")
	Window:CreateColorSelection("All", "UnitFrames", "HealCommOtherColor", "治疗预估 - 他人治疗颜色")
	Window:CreateColorSelection("Retail", "UnitFrames", "HealCommAbsorbColor", "治疗预估 - 吸收效果颜色")
	Window:CreateColorSelection("All", "UnitFrames", "CastingColor", "施法条施法时的颜色")
	Window:CreateColorSelection("All", "UnitFrames", "ChannelingColor", "施法条引导法术时的颜色")
	Window:CreateColorSelection("Retail", "UnitFrames", "NotInterruptibleColor", "施法条不可打断法术时的颜色")
	Window:CreateSlider("All", "UnitFrames", "RaidIconSize", "团队标记图标的大小", 16, 32, 1)
	Window:CreateSlider("All", "UnitFrames", "HighlightSize", "设置姓名板高亮部分的大小", 5, 15, 1)
	Window:CreateSlider("All", "UnitFrames", "RangeAlpha", "设置超出范围时的透明度（焦点/竞技场/首领）", 0, 1, 0.1)

	Window:CreateSection("All", "Tags")
	Window:CreateDropdown("All", "UnitFrames", "PlayerHealthTag", "玩家框架上的生命值标签")
	Window:CreateDropdown("All", "UnitFrames", "TargetHealthTag", "目标框架上的生命值标签")
	Window:CreateDropdown("All", "UnitFrames", "FocusHealthTag", "焦点框架上的生命值标签")
	Window:CreateDropdown("All", "UnitFrames", "FocusTargetHealthTag", "焦点目标框架上的生命值标签")
	Window:CreateDropdown("All", "UnitFrames", "BossHealthTag", "首领框架上的生命值标签")
end

GUI:AddWidgets(General)
GUI:AddWidgets(ActionBars)
GUI:AddWidgets(Auras)
GUI:AddWidgets(Bags)
GUI:AddWidgets(Chat)
GUI:AddWidgets(DataTexts)
GUI:AddWidgets(Loot)
GUI:AddWidgets(Maps)
GUI:AddWidgets(Misc)
GUI:AddWidgets(NamePlates)
GUI:AddWidgets(Party)
GUI:AddWidgets(Raid)
GUI:AddWidgets(Tooltips)
GUI:AddWidgets(Textures)
GUI:AddWidgets(UnitFrames)
