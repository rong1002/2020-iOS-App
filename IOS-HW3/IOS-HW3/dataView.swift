import Foundation

struct Song: Identifiable{
    var id = UUID()
    var name: String
    var image: String
    var singer: String
    var lyrics: String
}

let allsong = [Song(name: "孤獨",image:"孤獨", singer: "G.E.M 鄧紫棋",lyrics: "孤獨\n\n作詞：G.E.M. 鄧紫棋\n作曲：G.E.M. 鄧紫棋、Ludwig Van Beethoven\n編曲：T-Ma 馬敬恆\n\n又是另一個夜 雨飄的夜\n在一條喧鬧後的街 我望著月亮\n忘了是雨還是淚水突然滑過臉上\n心喃喃自語 我卻又聽不見\n白天 我總笑容滿面\n為什麼每夜 我總輾轉難眠\n自律和壓抑 到底如何分辨\n說要做自己 卻不敢對自己正眼\n\n原來孤獨 是燈光下 所有人都對我佩服\n但月光下 卻一直害怕自己退步\n你別停下 有個聲音催促\n但這無盡的賽跑為何追逐\nIf ain't nobody stayed with me\n那這是演給誰的戲\n我看著一路多少人都撲空\n到最後 怕自己也沒什麼不同\n也背向了背向了初衷\n\n皎潔的月光 請潔淨我\n洗淨年月潑的墨\n熄滅我吞下的煙火\n\n我從小到大 凡事都要做到第一位\n再艱難咬著牙 再累我不流一滴淚\n我有著強迫症的意志力 天賦不能浪費\n我讓我家裡幾個櫃子里都放滿了獎杯\n這世界告訴你 成功要靠自己\n什麼叫做成功我卻不知道定義\n我已經變得熱可炙手\n但優秀還是沒有為我帶來自由\n\n原來孤獨 是感覺自己是那藍天下的枯樹\n站在高處 傷口得自己捂住 無處哭訴\n雖然我堅強但是我也偶爾無助\n每當我祈禱上帝說努力了就好\n但面對世界我只感覺自己瘦小\nThey say when you're lonely, Hang out with homies\n他們不懂 說得容易 但我的Home里只有Me\n\n皎潔的月光 請潔淨我\n洗淨年月潑的墨\n熄滅我吞下的煙火\n\n對自己說了多少遍 I'm a super woman\n我逼著心裡面 那渴望愛的小女生\n要學會成熟點 有話就說給日記本\n終於發現世界再冷 沒有我對自己狠\n\n我爸教我恆心能讓 鐵柱變成針\n但一不小心能讓 泥足陷很深\n我是不是應該換個第三人稱\n問問自己 其實想過什麼樣的人生\n\n原來孤獨 是想哭卻又不想矚目\n是努力融入但你還 常常感覺自己格格不入\n是不想辜負了期待 你卻又感覺束縛\n唯一的安撫 是知道世界之大\n這一刻和你一樣 感到孤獨的 無數"),
               Song(name: "光年之外",image:"光年之外", singer: "G.E.M 鄧紫棋",lyrics: "光年之外\n\n作詞：G.E.M. 鄧紫棋\n作曲：G.E.M. 鄧紫棋\n編曲：Lupo Groinig\n\n感受停在我髮端的指尖\n如何瞬間 凍結時間\n記住望著我堅定的雙眼\n也許已經 沒有明天\n\n面對浩瀚的星海\n我們微小得像塵埃\n漂浮在一片無奈\n\n緣份讓我們相遇亂世以外\n命運卻要我們危難中相愛\n也許未來遙遠在光年之外\n我願守候未知裡為你等待\n\n我沒想到 為了你 我能瘋狂到\n山崩海嘯 沒有你 根本不想逃\n我的大腦 為了你 已經瘋狂到\n脈搏心跳 沒有你 根本不重要\n\n一雙圍在我胸口的臂彎\n足夠抵擋 天旋地轉\n一種執迷不放手的倔強\n足以點燃 所有希望\n\n宇宙磅礡而冷漠\n我們的愛微小卻閃爍\n顛簸 卻如此忘我\n\n緣份讓我們相遇亂世以外\n命運卻要我們危難中相愛\n也許未來遙遠在光年之外\n我願守候未知裡為你等待\n\n我沒想到 為了你 我能瘋狂到\n山崩海嘯 沒有你 根本不想逃\n我的大腦 為了你 已經瘋狂到\n脈搏心跳 沒有你 根本不重要\n\n也許航道以外 是醒不來的夢\n亂世以外 是純粹的相擁\n\n我沒想到 為了你 我能瘋狂到\n山崩海嘯 沒有你 根本不想逃\n我的大腦 為了你 已經瘋狂到\n脈搏心跳 沒有你 根本不重要\n\n相遇亂世以外 危難中相愛\n相遇亂世以外 危難中相愛\n我沒想到"),
               Song(name: "再見",image:"再見", singer: "G.E.M 鄧紫棋",lyrics: "再見\n\n作詞：G.E.M. 鄧紫棋\n作曲：G.E.M. 鄧紫棋\n編曲：Lupo Groinig\n\n愛情的起點 都是最美的瞬間\n什麼鐵達尼的經典 羅密歐跟茱麗葉\n\n那些最煽情的電影情節 都說愛能超越生死離別\n曾經我們都很堅決 愛了就不改變\n\n不要對我說再見\n一句再見 就結束這一切\n\n能否不要說再見\n你的再見 說得那麼明確\n\n怎麼我和你之間兩個世界 再也沒有交接\n如果告別 能不能再見\n\n我們的照片 紀錄幸福到永遠\n只是再幸福的畫面 只定格在一瞬間\n\n那些慢吞吞悲情的音樂 早說過愛過之後就是離別\n早該相信那些預言 我們也沒有多特別\n\n不要對我說再見\n一句再見 讓愛變得表面\n\n真的不用說再見\n就算再見 結局不能改變\n\n就算我和你之間兩個世界 再也沒有交接\n不用抱歉 就真的再見\n\n如果有緣 我們會再遇見\n反正地球本來就很圓\n\n就算今天 你要走得多遠\n反正就是一條地平線\n\n反正願望不一定會實現\n反正承諾不一定要兌現\n反正睡醒是新的一天\n\n別對我說再見\n一句再見 讓愛變得表面\n\n真的不用說再見\n就算再見 結局不能改變\n\n就算我和你之間兩個世界 再也沒有交接\n不用抱歉 就真的再見\n\n愛情到終點 我們只能說再見"),
               Song(name: "倒數",image:"倒數", singer: "G.E.M 鄧紫棋",lyrics: "倒數\n\n作詞：G.E.M. 鄧紫棋\n作曲：G.E.M. 鄧紫棋 Lupo Groinig\n編曲：Lupo Groinig\n\n還沒到的櫻花季 還沒用的照相機\n還沒光臨的餐廳 還在期待 有著你的旅行\n等待日落的巴黎 鐵塔之下牽著你\n等待說著我願意 等待未來 每天身邊有你\n\n一點一滴每一天珍惜\n怕突然來不及 好好的愛你\n\n時針一直倒數著 我們剩下的快樂\n此刻相擁的狂熱 卻永遠都深刻\n心跳一直倒數著 生命剩下的溫熱\n至少用力地愛著 還烏黑的頭髮 有你就不怕白了\n\n漆黑過後是旭日 淚流以後是堅持\n真的愛是日復日 從不放棄 重複說你願意\n還沒退化的眼睛 抓緊時間看看你\n愛是從來不止息 一個風景 每天新的生命\n\n一點一滴每一天珍惜\n用盡每一口氣 好好的愛你\n\n時針一直倒數著 我們剩下的快樂\n此刻相擁的狂熱 卻永遠都深刻\n心跳一直倒數著 生命剩下的溫熱\n至少用力地愛著 還烏黑的頭髮 有你就不怕白了\n\n咖啡再不喝就酸了 晚餐再不吃就冷了\n愛著為什麼不說呢 難道錯過了才來後悔著\n誰夢未實現就醒了 誰心沒開過就灰了\n追逐愛的旅途曲折 就算再曲折為你都值得\n\n一點一滴每一天珍惜\n用盡每一口氣 好好的愛你\n\n時針一直倒數著 我們剩下的快樂\n此刻相擁的狂熱 卻永遠都深刻\n心跳一直倒數著 生命剩下的溫熱\n至少痛並快樂著 愛過才算活著     有你別無所求了\n\n有你別無所求了 有你別無所求了\n有你別無所求了 有你別無所求了\n有你別無所求了"),
               Song(name: "來自天堂的魔鬼",image:"來自天堂的魔鬼", singer: "G.E.M 鄧紫棋",lyrics: "來自天堂的魔鬼\n\n作詞：G.E.M. 鄧紫棋\n作曲：G.E.M. 鄧紫棋\n編曲：Lupo Groinig\n\n夜裡做了美麗的惡夢\n想清醒我卻抵不過心動\nOh∼夢裡你是無底的黑洞\n我無力抗拒失重\n\n我的意識自控脈搏流動\n全被你神秘引力操控\n親愛的你是危險的迷宮\n我找不到出口\n\nYou took my heart away, away, away, away\nMy head is blown away, away, away, away\n你就是傳說來自天堂的魔鬼\nYou should take my heart away, away, away, away, away, away, away\n\n拜託別對我細心問候\n這是你也不察覺的陰謀\nOh∼我討厭你無心的微笑\n我快無可救藥\n\n你像一個漩渦慢慢讓我\n無法抽離一直地墜落\n親愛的你是優雅的惡魔\n一點一點把我吞沒\n\nYou took my heart away, away, away, away\nMy head is blown away, away, away, away\n你就是傳說來自天堂的魔鬼\nYou should take my heart away, away, away, away, away, away, away\n\n如果你是蛇的誘惑 你存心迷惑 我才能軟弱\n但你是牛頓頭上那顆 若無其事的蘋果\n\nYou took my heart away, away, away, away\nYou took my heart away, away, away, away\nYou took my heart away, away, away, away\nMy head is blown away, away, away, away\n你就是傳說來自天堂的魔鬼\nYou should take my heart away, away, away, away, away, away, away"),
               Song(name: "喜歡你",image:"喜歡你", singer: "G.E.M 鄧紫棋",lyrics: "喜歡你\n\n作詞：黃家駒＠Beyond\n作曲：黃家駒＠Beyond\n\n細雨帶風濕透黃昏的街道\n抹去雨水雙眼無故地仰望\n望向孤單的晚燈 是那傷感的記憶\n\n再次泛起心裡無數的思念\n以往片刻歡笑仍掛在臉上\n願妳此刻可會知 是我衷心的說聲\n\n喜歡妳 那雙眼動人\n笑聲更迷人 願再可\n輕撫妳 那可愛面容\n挽手說夢話 像昨天 妳共我\n\n滿帶理想的我曾經多衝動\n屢怨與她相愛難有自由\n願妳此刻可會知 是我衷心的說聲\n\n喜歡妳 那雙眼動人\n笑聲更迷人 願再可\n輕撫妳 那可愛面容\n挽手說夢話 像昨天 妳共我\n\n每晚夜裡自我獨行 隨處蕩 多冰冷\n以往為了自我掙扎 從不知 她的痛苦\n\n喜歡妳 那雙眼動人\n笑聲更迷人 願再可\n輕撫妳 那可愛面容\n挽手說夢話\n像昨天 妳共我"),
               Song(name: "摩天動物園",image:"摩天動物園", singer: "G.E.M 鄧紫棋",lyrics: "摩天動物園\n\n作詞：G.E.M. 鄧紫棋\n作曲：G.E.M. 鄧紫棋\n傳說在伊甸 原始的愛沒有欺騙\n簡樸過每一天 人們彼此真心一片\n心跟著獨特節奏跳\n臉掛著橘色嘴巴笑\n直到蛇在身邊繞 蘋果讓你咬\n直到起重機拔掉 我們的獨角\n\n可憐的亞當 從此掉進蜘蛛網\n為面包打仗 先要學會吃土壤\n樸實的大象 進化變成四不像\n舉頭望著八方 低頭忘了思故鄉\n\n⼈人都各自 想登峰插上 自己的旗幟\n純白的鴿子 為什麼牠像 變成了歷史\n努力要騎到寶馬買到房子\n不過是為了讓青蛙能變成王子\n\n穿灰衣的姑娘得不到尊重\n社會大眾不在乎微小昆蟲\n於是⼀群羔羊 卑微的願望是\n努力擠進荒涼 庸俗的天堂\n\n那些被龜贏的兔他們眼睛深紅\n只會每天妒忌著別人成功\n於是學著蟑螂 到處爬著牆 不怕黑也不怕髒\n大便也舔上 為了要前往 光鮮的監房\n\n活在摩天動物園\n文明和野獸周旋\n我看著黑白的臉\n一張張變色就在一念間\n人的心太莫測幻變\n糾纏在愛與恨之間\n天使與魔鬼都在身邊\n畫著沒終點的圓圈\n\n活在摩天動物園 我只能祈求上天\n賜我清澈一雙眼 一點點識破美麗的謊言\n當你站在慾望邊緣 突然間善惡難分辨\n天使與魔鬼都在身邊\n這時候你跪在誰跟前\n\n你和我生來都是曾經白的紙\n只是同樣被寫上太多歪的字\n長大最無奈的是 踏實 怕是 傻子\n你若不想被掰著吃 必須磨利牙齒\n\n別任人屠宰 必要關頭只能把人出賣\n再無奈 也只是成功無法避開的附帶\n\n當鼻子愛上了霧霾 一開始察覺不出來\n這一種腐敗 它像骨牌 慢慢地覆蓋 把你毒害\n\n單純的一群小白豬\n被名和利薰陶擺佈\n衣服都故意少塊布 淪為了潮牌奴\n賣了靈魂撈財富\n\n一個個紅得快速 卻餓得變了排骨\n鏡子裡面的怪物 四處無人牠就敗露\n當初都憧憬好萊塢\n最後通通都跑來哭\n\n穿灰衣的姑娘得不到尊重\n社會大眾不在乎微小昆蟲\n於是一群羔羊 卑微的願望\n是努力擠進荒涼 庸俗的天堂\n\n那些被龜贏的兔他們眼睛深紅\n只會每天妒忌著別人成功\n於是學著蟑螂 到處爬著牆 不怕黑也不怕髒\n大便也舔上 為了要前往 光鮮的監房\n\n活在摩天動物園\n文明和野獸周旋\n我看著黑白的臉\n一張張變色就在一念間\n人的心太莫測幻變\n糾纏在愛與恨之間\n天使與魔鬼都在身邊\n畫著沒終點的圓圈\n\n活在摩天動物園\n我只能祈求上天\n賜我清澈一雙眼\n一點點識破美麗的謊言\n當你站在慾望邊緣\n突然間善惡難分辨\n天使與魔鬼都在身邊\n這時候你跪在誰跟前\n\n誰迷失在 水泥的 森林裡面\n誰一直踩 最低的 人性底線\n誰一直還 隨意地 任憑病變\n誰其實在 回憶著 認命以前"),
               Song(name: "透明",image:"透明", singer: "G.E.M 鄧紫棋",lyrics: "透明\n\n作詞：G.E.M.鄧紫棋\n作曲：G.E.M.鄧紫棋\n\n愛著你 也愛著我\n這是一種折磨 這是一種折磨\n\n今夜無數的街燈 沿路陪著我\n卻把我孤獨的裂縫 照得更寂寞\n如果這是一個夢 註定沒結果\n那就讓它是個夢 醒來就解脫\n\n是否月光太煽情 讓我突然變得感性\n孤掌難鳴 我孤身卻難以安靜\n睜開眼睛 我們的路無法看清\n想閉上眼睛 把一切暫停\n\n當我的世界出現了你 出現了你\n我看著自己變得透明 變得透明\n怪我對你太執迷\n讓我變得不像自己\n\n在想念你的寂寞夜裡 寂寞夜裡\n我想把自己變得透明 變得透明\n想把你忘得乾淨\n我的心卻被你佔領\n\n感覺我遇上你 就像綿羊遇上獅子\n我徘徊在愛你 還是愛自己的十字\n在應該赤裸的時候戴著面具\n我對你說的是我聽不明白的言語\n\n你是太陽 我的星光 顯得多黯淡\n你是海洋 你的輕狂 我無從反抗\n我越來越擅長 對自己說謊\n我想要你的綻放 就把我埋葬\n\n當我的世界出現了你 出現了你\n我看著自己變得透明 變得透明\n怪我對你太執迷\n讓我變得不像自己\n\n在想念你的寂寞夜裡 寂寞夜裡\n我想把自己變得透明 變得透明\n想把你忘得乾淨\n我的心卻被你佔領\n\n愛著你 也愛著我\n這是一種折磨 這是一種折磨\n難道愛著你 就要忘了我\n這是一種折磨 這是一種折磨\n\n我的世界出現了你 出現了你\n我看著自己變得透明 變得透明\n怪我對你太執迷\n讓我變得不像自己\n\n在想念你的寂寞夜裡 寂寞夜裡\n我想把自己變得透明 變得透明\n想把你忘得乾淨\n我的心卻被你佔領\n\n愛著你 這是一種折磨 折磨"),
               Song(name: "很久以後",image:"很久以後", singer: "G.E.M 鄧紫棋",lyrics: "很久以後\n\n作詞：G.E.M.鄧紫棋\n作曲：G.E.M.鄧紫棋\n\n也許是不甘心 也許是可惜\n也許無法相信 突然身邊再也不是你\n能給的都已經給你 能做的都用盡全力\n也許遇見你是種幸運 分開卻是天意\n\n不是不能面對 又不是十八歲\n愛過你的年歲 心裡至少真的不後悔\n也許會不捨會落淚 但得不到也許才珍貴 \n也許再等等就有人會 比我們匹配 \n\n很久很久很久以後 \n當我抱著別個他的時候 \n是否我就能夠 對你笑著揮手 \n好久不見的朋友 換個角色 對你問候 \n\n誰還記得我們 曾多奮不顧身 \n失去你的人生 我像一棵樹被拔了根 \n如果只能依賴自己 我只能逼自己更獨立 \n雨再大過了總會天晴 不過時間而已 \n\n很久很久很久以後 \n當我抱著別個他的時候 \n也許我就能夠 對你笑著揮手 \n也許會釋然分手 是個出口 \n很久很久很久以後 \n當你牽著別個她的時候 \n我們這個傷口 也許不再難受 \n好久不見的朋友 祝福你們 直到永久 \n\n只是怕可能 以後愛別人 無法像愛你那麼深 \n但愛到了盡頭 哭有什麼用 也只能接受 \n愛情裡一切莫須有 \n\n很久很久很久以後 \n時間會把回憶慢慢偷走 \n此刻承受的痛 會慢慢變得虛構 \n不過就換了一雙 執子之手 \n很久很久很久以後 \n你我都各有所愛的時候 \n我們這個傷口 再也不會難受 \n好久不見的朋友 如果再見 微笑點頭"),
               Song(name: "差不多姑娘",image:"差不多姑娘", singer: "G.E.M 鄧紫棋",lyrics: "差不多姑娘\n\n作詞：姚中仁、G.E.M. 鄧紫棋\n作曲：姚中仁、G.E.M. 鄧紫棋\n編曲：T-Ma 馬敬恆\n\n差不多的姑娘\n追逐差不多的漂亮\n她們差不多的願望\n牽著她們鼻子方向\n\n我回到差不多的家 躺在差不多的沙發\n微博差不多的刷 都吃著差不多的瓜\n那標題差不多的炸 八著差不多的卦\n網友差不多的嘴弄髒了差不多的話\n\n一條差不多的事業線 抓差不多的眼\n看著差不多的留言 都是差不多的賤\n到處差不多的Baby 比著差不多的基尼 \n舉著差不多的V 擠著差不多的D\n\n在差不多的街頭 擺著差不多的Pose\n跟差不多的潮流 整了差不多的Nose \n交差不多的男友 走得差不多的Close\n供差不多的樓 送差不多的Rose \n\n跳著差不多的舞 扭著差不多的屁股 \n差不多的思路 嫌差不多的腿粗 \n看差不多的臉書 人差不多都想哭 \n女孩差不多的路 都差不多無助 \n\n差不多的姑娘 \n追逐差不多的漂亮 \n她們差不多的願望 \n牽著她們鼻子方向 \n\n都露著差不多的腰 Fake著差不多的微笑 \n撒著差不多的嬌 關係差不多的靠 \n抱 差不多的大腿 語氣差不多的騷 \n靠 差不多的方法 買了差不多的包 \n\n都逞著差不多的強 所以講話差不多的嗆 \n差不多思想 都有著差不多狹窄審美觀 \n差不多的彈 差不多的贊 \n為差不多的閃光 差不多的忙 \n\n喝差不多的紅酒 啃著差不多的肉 \n對差不多的鏡頭 演著差不多的秀 \n圖差不多的修 修得差不多的瘦 \n身邊差不多的密友 都是差不多的Low \n\nOH 差不多的優越感 寫在差不多的臉上 \n在差不多的機場 走差不多紅的地毯 \n差不多的妝 差不多的浪 \n裙子差不多的短 家裡差不多的髒 \n\n差不多的姑娘 \n追逐差不多的漂亮 \n她們差不多的願望 \n牽著她們鼻子方向 \n\n差不多的你 差不多的我 \n差不多的她 差不多的傻 \n聽著差不多的廢話 \n差不多的那些烏鴉 又嘻嘻哈哈 \n吱吱又喳喳 都差不多的瞎 \n差不多姑娘 都土生土長 在有毒的土壤 \n差不多都曾對鏡子里的自己失望 \n差不多都遺忘 沒有武裝的模樣 \n這差不多的症狀 誇張 \n\n而現在各位姑娘 這裡我要分享 \n曾經的我都一樣 有差不多的憂傷 \n差不多兩個禮拜沒有吃飯 \n差不多我就把命給送上 \n數不盡的差不多 都差不多 \n差不多 人生真的不該這麼過 \n像我唱的那首歌 差不多的虛榮如果能夠看破 \n只是差不多的那個 泡沫 ")]

struct Album: Identifiable{
    var id = UUID()
    var Albumname: String
    var Albumimage: String
    var Albumsongs: String
}

let allAlbum2008 = [Album(Albumname: "G.E.M.", Albumimage: "G.E.M2008", Albumsongs: "等一個他"),
                Album(Albumname: "G.E.M.", Albumimage: "G.E.M2008", Albumsongs: "Where Did U Go"),
                Album(Albumname: "G.E.M.", Albumimage: "G.E.M2008", Albumsongs: "回憶的沙漏（國語）"),
                Album(Albumname: "G.E.M.", Albumimage: "G.E.M2008", Albumsongs: "愛現在的我（國語"),
                Album(Albumname: "G.E.M.", Albumimage: "G.E.M2008", Albumsongs: "睡公主")]

let allAlbum2009 = [Album(Albumname: "18 plus", Albumimage: "G.E.M2009", Albumsongs: "All About U"),
                    Album(Albumname: "18 plus", Albumimage: "G.E.M2009", Albumsongs: "Game Over"),
                    Album(Albumname: "18 plus", Albumimage: "G.E.M2009", Albumsongs: "想講你知"),
                    Album(Albumname: "18 plus", Albumimage: "G.E.M2009", Albumsongs: "A.I.N.Y.（愛你）（國語）"),
                    Album(Albumname: "18 plus", Albumimage: "G.E.M2009", Albumsongs: "Mascara（煙燻妝）（國語）"),
                    Album(Albumname: "18 plus", Albumimage: "G.E.M2009", Albumsongs: "我不懂愛（國語）"),
                    Album(Albumname: "18 plus", Albumimage: "G.E.M2009", Albumsongs: "塞納河（國語）"),
                    Album(Albumname: "18 plus", Albumimage: "G.E.M2009", Albumsongs: "意式戀愛"),
                    Album(Albumname: "18 plus", Albumimage: "G.E.M2009", Albumsongs: "G.E.M.（Get Everybody Moving）(英語)"),
                    Album(Albumname: "18 plus", Albumimage: "G.E.M2009", Albumsongs: "18"),
                    Album(Albumname: "18 plus", Albumimage: "G.E.M2009", Albumsongs: "Where Did You Go 2.0（Sam Vahdat Remix）（Bonus track）"),
                    Album(Albumname: "18 plus", Albumimage: "G.E.M2009", Albumsongs: "Mascara（Glossy Version）（Bonus track）")]

let allAlbum2010 = [Album(Albumname: "MySecret", Albumimage: "G.E.M2010", Albumsongs: "One Button（國語）"),
                    Album(Albumname: "MySecret", Albumimage: "G.E.M2010", Albumsongs: "Good to be Bad"),
                    Album(Albumname: "MySecret", Albumimage: "G.E.M2010", Albumsongs: "Get Over You"),
                    Album(Albumname: "MySecret", Albumimage: "G.E.M2010", Albumsongs: "美好的舊時光 In My Heart（國語）"),
                    Album(Albumname: "MySecret", Albumimage: "G.E.M2010", Albumsongs: "寂寞星球的玫瑰 The Rose（國語）"),
                    Album(Albumname: "MySecret", Albumimage: "G.E.M2010", Albumsongs: "The Voice Within（國語）"),
                    Album(Albumname: "MySecret", Albumimage: "G.E.M2010", Albumsongs: "我的秘密 MySecret（國語）"),
                    Album(Albumname: "MySecret", Albumimage: "G.E.M2010", Albumsongs: "末日The End（國語）"),
                    Album(Albumname: "MySecret", Albumimage: "G.E.M2010", Albumsongs: "Twinkle II (英語+國語)"),
                    Album(Albumname: "MySecret", Albumimage: "G.E.M2010", Albumsongs: "Say it Loud")]

let allAlbum2012 = [Album(Albumname: "Xposed", Albumimage: "G.E.M2012", Albumsongs: "WHAT HAVE U DONE"),
                    Album(Albumname: "Xposed", Albumimage: "G.E.M2012", Albumsongs: "下一秒 (我們就要死掉) （國語）"),
                    Album(Albumname: "Xposed", Albumimage: "G.E.M2012", Albumsongs: "Someday I'll Fly"),
                    Album(Albumname: "Xposed", Albumimage: "G.E.M2012", Albumsongs: "泡沫（國語）"),
                    Album(Albumname: "Xposed", Albumimage: "G.E.M2012", Albumsongs: "潛意式的殘酷（國語）"),
                    Album(Albumname: "Xposed", Albumimage: "G.E.M2012", Albumsongs: "Oh Boy（國語）"),
                    Album(Albumname: "Xposed", Albumimage: "G.E.M2012", Albumsongs: "After Tonight（國語）"),
                    Album(Albumname: "Xposed", Albumimage: "G.E.M2012", Albumsongs: "失真"),
                    Album(Albumname: "Xposed", Albumimage: "G.E.M2012", Albumsongs: "奇蹟（國語）"),
                    Album(Albumname: "Xposed", Albumimage: "G.E.M2012", Albumsongs: "不存在的存在（國語）")]

let allAlbum2015 = [Album(Albumname: "新的心跳", Albumimage: "G.E.M2015", Albumsongs: "多遠都要在一起（國語）"),
                    Album(Albumname: "新的心跳", Albumimage: "G.E.M2015", Albumsongs: "再見（國語）"),
                    Album(Albumname: "新的心跳", Albumimage: "G.E.M2015", Albumsongs: " 新的心跳（國語）"),
                    Album(Albumname: "新的心跳", Albumimage: "G.E.M2015", Albumsongs: "來自天堂的魔鬼（國語）"),
                    Album(Albumname: "新的心跳", Albumimage: "G.E.M2015", Albumsongs: "盲點（國語）"),
                    Album(Albumname: "新的心跳", Albumimage: "G.E.M2015", Albumsongs: "單行的軌道（國語）"),
                    Album(Albumname: "新的心跳", Albumimage: "G.E.M2015", Albumsongs: "一路逆風（國語）"),
                    Album(Albumname: "新的心跳", Albumimage: "G.E.M2015", Albumsongs: "於是（國語）"),
                    Album(Albumname: "新的心跳", Albumimage: "G.E.M2015", Albumsongs: "瞬間（國語）"),
                    Album(Albumname: "新的心跳", Albumimage: "G.E.M2015", Albumsongs: "查克靠近（國語）")]

let allAlbum2016 = [Album(Albumname: "25 LOOKS", Albumimage: "G.E.M2016", Albumsongs: "再見–Club Mix"),
                    Album(Albumname: "25 LOOKS", Albumimage: "G.E.M2016", Albumsongs: "多遠都要在一起–Dub Mix"),
                    Album(Albumname: "25 LOOKS", Albumimage: "G.E.M2016", Albumsongs: "泡沫–PÀO MÒ Remix"),
                    Album(Albumname: "25 LOOKS", Albumimage: "G.E.M2016", Albumsongs: "瞬間–Dance Remix")]

let allAlbum20181 = [Album(Albumname: "童話三部曲:另一個童話", Albumimage: "G.E.M2018", Albumsongs: "倒數"),
                    Album(Albumname: "童話三部曲:另一個童話", Albumimage: "G.E.M2018", Albumsongs: "錯過不錯"),
                    Album(Albumname: "童話三部曲:另一個童話", Albumimage: "G.E.M2018", Albumsongs: "另一個童話")]
    
let allAlbum20182 = [Album(Albumname: "童話三部曲:毒蘋果", Albumimage: "G.E.M2018", Albumsongs: "那一夜"),
                    Album(Albumname: "童話三部曲:毒蘋果", Albumimage: "G.E.M2018", Albumsongs: "毒蘋果"),
                    Album(Albumname: "童話三部曲:毒蘋果", Albumimage: "G.E.M2018", Albumsongs: "突然之間")]
    
let allAlbum20183 = [Album(Albumname: "童話三部曲:睡皇后", Albumimage: "G.E.M2018", Albumsongs: "岩石裡的花"),
                     Album(Albumname: "童話三部曲:睡皇后", Albumimage: "G.E.M2018", Albumsongs: "WHY"),
                     Album(Albumname: "童話三部曲:睡皇后", Albumimage: "G.E.M2018", Albumsongs: "睡皇后")]

let allAlbum2018last = [Album(Albumname: "童話最終曲:童話的休止符", Albumimage: "G.E.M2019", Albumsongs: "倒數"),
                        Album(Albumname: "童話最終曲:童話的休止符", Albumimage: "G.E.M2019", Albumsongs: "錯過不錯"),
                        Album(Albumname: "童話最終曲:童話的休止符", Albumimage: "G.E.M2019", Albumsongs: "另一個童話"),
                        Album(Albumname: "童話最終曲:童話的休止符", Albumimage: "G.E.M2019", Albumsongs: "那一夜"),
                        Album(Albumname: "童話最終曲:童話的休止符", Albumimage: "G.E.M2019", Albumsongs: "毒蘋果"),
                        Album(Albumname: "童話最終曲:童話的休止符", Albumimage: "G.E.M2019", Albumsongs: "突然之間"),
                        Album(Albumname: "童話最終曲:童話的休止符", Albumimage: "G.E.M2019", Albumsongs: "岩石裡的花"),
                        Album(Albumname: "童話最終曲:童話的休止符", Albumimage: "G.E.M2019", Albumsongs: "WHY"),
                        Album(Albumname: "童話最終曲:童話的休止符", Albumimage: "G.E.M2019", Albumsongs: "睡皇后")]

let allAlbum2019 = [Album(Albumname: "摩天動物園", Albumimage: "G.E.M2019", Albumsongs: "摩天動物園"),
                    Album(Albumname: "摩天動物園", Albumimage: "G.E.M2019", Albumsongs: "Fly Away"),
                    Album(Albumname: "摩天動物園", Albumimage: "G.E.M2019", Albumsongs: "透明"),
                    Album(Albumname: "摩天動物園", Albumimage: "G.E.M2019", Albumsongs: "很久以後"),
                    Album(Albumname: "摩天動物園", Albumimage: "G.E.M2019", Albumsongs: "WALK ON WATER"),
                    Album(Albumname: "摩天動物園", Albumimage: "G.E.M2019", Albumsongs: "螢火"),
                    Album(Albumname: "摩天動物園", Albumimage: "G.E.M2019", Albumsongs: "灰狼"),
                    Album(Albumname: "摩天動物園", Albumimage: "G.E.M2019", Albumsongs: "差不多姑娘"),
                    Album(Albumname: "摩天動物園", Albumimage: "G.E.M2019", Albumsongs: "好想好想你"),
                    Album(Albumname: "摩天動物園", Albumimage: "G.E.M2019", Albumsongs: "別勉強"),
                    Album(Albumname: "摩天動物園", Albumimage: "G.E.M2019", Albumsongs: "多美麗"),
                    Album(Albumname: "摩天動物園", Albumimage: "G.E.M2019", Albumsongs: "句號"),
                    Album(Albumname: "摩天動物園", Albumimage: "G.E.M2019", Albumsongs: "依然睡公主")]

struct Place: Identifiable{
    var id = UUID()
    var placename: String
    var latitude : Double
    var longitude : Double
}

let places=[Place(placename: "台灣", latitude: 25.033710, longitude: 121.564718),
            Place(placename: "香港", latitude: 22.28056, longitude: 114.17694),
            Place(placename: "澳門", latitude: 22.20111, longitude: 113.54417)]
