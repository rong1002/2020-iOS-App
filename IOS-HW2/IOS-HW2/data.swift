import SwiftUI

struct Teacher: Identifiable {
    var id = UUID()
    var image: String
    var name: String
    var description: String
}

let teachers: [Teacher] = [
    Teacher(image: "G.E.M", name: "鄧紫棋", description: "2008年，以16歲之齡出道，取得香港三大樂壇頒獎禮新人金獎。鄧紫棋為第一位擁有三支破億MV的華語女歌手、第二個擁有三支破億MV的華語歌手，並且未滿25歲便完成100場個人演唱會。2020年，金曲獎正式獲獎名單公怖，鄧紫棋憑《摩天動物園》獲得金曲獎的評審團獎。"),
    Teacher(image: "Will Pan", name: "潘瑋柏", description: "出生在美國，是美籍華人，歌手、演員，之前做過主持人並經常在台北接拍平面及電視廣告。潘瑋柏是一位人緣很好的陽光型青春大男孩，開朗的同時還對音樂很是敬業，他的歌主要側重於Rap方面。"),
    Teacher(image: "Kris Wu", name: "吳亦凡", description: "曾為韓國男子組合EXO成員及中國分隊EXO-M隊長，並曾在隊內擔任主Rapper。2018年，在美國iTunes總榜及分榜再度拿下冠軍，並持續登頂72小時，打破華人歌手在榜的最佳紀錄"),
    Teacher(image: "MC HotDog", name: "熱狗", description: "台灣饒舌歌手，出生於台北市木柵區。台北市立建國中學補校、輔仁大學影像傳播學士。他的歌曲大多使用直白的語言對各種社會現象進行赤裸裸的揭露。"),
    Teacher(image: "Yue", name: "張震嶽", description: "阿美族人，流行搖滾創作歌手，自1993年至今共發行過多張音樂專輯，創作出的經典歌曲有《愛我別走》、《自由》、《思念是一種病》等等，也曾參與電影演出。")]

struct Episode {
    var imageEpisode: String
    var nameEpisode: String
    var descriptionEpisode: String
    var url: String
}

let episodes: [Episode] = [
    Episode(imageEpisode: "0714", nameEpisode: "完整版", descriptionEpisode: "第1集 60s淘汰賽殘酷開戰", url: "https://tw.iqiyi.com/v_19rr4fov3g.html"),
    Episode(imageEpisode: "0721", nameEpisode: "完整版", descriptionEpisode: "第2集 1V1淘汰賽製作人難抉擇", url: "https://tw.iqiyi.com/v_19rr4foysk.html"),
    Episode(imageEpisode: "0728", nameEpisode: "完整版", descriptionEpisode: "第3集 小青龍VS劉柏辛遇危機", url: "https://tw.iqiyi.com/v_19rr4forxc.html"),
    Episode(imageEpisode: "0804", nameEpisode: "完整版", descriptionEpisode: "第4集 選擇門升級吳亦凡難抉擇", url: "https://tw.iqiyi.com/v_19rr4fot8g.html"),
    Episode(imageEpisode: "0811", nameEpisode: "完整版", descriptionEpisode: "第5集 熱狗忍痛淘汰小老弟", url: "https://tw.iqiyi.com/v_19rr4fps0k.html"),
    Episode(imageEpisode: "0818", nameEpisode: "完整版", descriptionEpisode: "第6集 吳亦凡難決斷欲退賽", url: "https://tw.iqiyi.com/v_19rr4fpw9s.html"),
    Episode(imageEpisode: "0825", nameEpisode: "完整版", descriptionEpisode: "第7集 王以太演繹撩人情歌", url: "https://tw.iqiyi.com/v_19rr4fpknk.html"),
    Episode(imageEpisode: "0901", nameEpisode: "完整版", descriptionEpisode: "第8集 那吾克熱獲讚中國阿姆", url: "https://tw.iqiyi.com/v_19rr4fplrk.html"),
    Episode(imageEpisode: "0908", nameEpisode: "完整版", descriptionEpisode: "第9集 那吾克熱秀三語RAP", url: "https://tw.iqiyi.com/v_19rr4fphps.html"),
    Episode(imageEpisode: "0915", nameEpisode: "完整版", descriptionEpisode: "第10集 李榮浩尤長靖同台幫唱", url: "https://tw.iqiyi.com/v_19rr4fnsv8.html"),
    Episode(imageEpisode: "0922", nameEpisode: "完整版", descriptionEpisode: "第11集 復活賽滿舒克艾熱回歸", url: "https://tw.iqiyi.com/v_19rr4fnwcw.html"),
    Episode(imageEpisode: "0929", nameEpisode: "完整版", descriptionEpisode: "第12集 製作人花式拉票獻驚喜", url: "https://tw.iqiyi.com/v_19rr4fnxqs.html"),
    Episode(imageEpisode: "1006", nameEpisode: "完整版", descriptionEpisode: "第13集 四強爭冠上演巔峰對決", url: "https://tw.iqiyi.com/v_19rr4fnoyo.html")]

struct TeamSong {
    var imageTeamSong: String
    var nameTeamSong: String
    var urlTeamSong: String
}

struct Team {
    var imageTeam: String
    var nameTeam: String
    var songTeam: [TeamSong]
}

let teams: [Team] = [
    Team(imageTeam: "鄧紫棋-潘瑋柏", nameTeam: "攀登戰隊",
         songTeam: [TeamSong(imageTeamSong: "安靜的稻草人", nameTeamSong: "艾熱、楊和蘇", urlTeamSong: "https://tw.iqiyi.com/v_19rvebofo8.html"),
                    TeamSong(imageTeamSong: "Get It Out", nameTeamSong: "ICE、王齊銘、周湯豪", urlTeamSong: "https://tw.iqiyi.com/v_19rvebrtdc.html"),
                    TeamSong(imageTeamSong: "頂天立地", nameTeamSong: "ICE、艾熱、王齊銘、周湯豪", urlTeamSong: "https://tw.iqiyi.com/v_19rveahq14.html"),
                    TeamSong(imageTeamSong: "I Am The Man", nameTeamSong: "周湯豪", urlTeamSong: "https://tw.iqiyi.com/v_19rveal2jc.html"),
                    TeamSong(imageTeamSong: "蛻變", nameTeamSong: "潘瑋柏&鄧紫棋、ICE、艾熱", urlTeamSong: "https://tw.iqiyi.com/v_19rqz87b5o.html"),
                    TeamSong(imageTeamSong: "巨人", nameTeamSong: "艾熱", urlTeamSong: "https://tw.iqiyi.com/v_19rqz8c3x0.html"),
                    TeamSong(imageTeamSong: "Trust My Gut", nameTeamSong: "ICE", urlTeamSong: "https://tw.iqiyi.com/v_19rvdzv7i8.html"),
                    TeamSong(imageTeamSong: "AYA", nameTeamSong: "ICE", urlTeamSong: "https://tw.iqiyi.com/v_19rvdzvqsg.html"),
                    TeamSong(imageTeamSong: "小人物", nameTeamSong: "艾熱", urlTeamSong: "https://tw.iqiyi.com/v_19rvdzvp5s.html"),
                    TeamSong(imageTeamSong: "王牌冤家", nameTeamSong: "ICE、李榮浩", urlTeamSong: "https://tw.iqiyi.com/v_19rvdzbx04.html"),
                    TeamSong(imageTeamSong: "倒數", nameTeamSong: "鄧紫棋", urlTeamSong: "https://tw.iqiyi.com/v_19rvegclrc.html"),
                    TeamSong(imageTeamSong: "Moonlight", nameTeamSong: "潘瑋柏、袁婭維", urlTeamSong: "https://tw.iqiyi.com/v_19rvegg3i8.html"),
                    TeamSong(imageTeamSong: "U Don't Know", nameTeamSong: "ICE", urlTeamSong: "https://tw.iqiyi.com/v_19rveggty0.html"),
                    TeamSong(imageTeamSong: "烏雲中", nameTeamSong: "艾熱", urlTeamSong: "https://tw.iqiyi.com/v_19rvdzxqnk.html"),
                    TeamSong(imageTeamSong: "攀登", nameTeamSong: "潘瑋柏&鄧紫棋、艾熱", urlTeamSong: "https://tw.iqiyi.com/v_19rvep1mrk.html"),
                    TeamSong(imageTeamSong: "Climb To The Top", nameTeamSong: "潘瑋柏&鄧紫棋、ICE", urlTeamSong: "https://tw.iqiyi.com/v_19rveozma0.html"),
                    TeamSong(imageTeamSong: "華夏Power", nameTeamSong: "ICE", urlTeamSong: "https://tw.iqiyi.com/v_19rvep3o90.html"),
                    TeamSong(imageTeamSong: "新三部曲", nameTeamSong: "艾熱", urlTeamSong: "https://tw.iqiyi.com/v_19rr59prmw.html")]),
    
    Team(imageTeam: "吳亦凡", nameTeam: "夢之隊",
         songTeam: [TeamSong(imageTeamSong: "追夢", nameTeamSong: "Blow Fever、王以太、滿舒克", urlTeamSong: "https://tw.iqiyi.com/v_19rvebs9sk.html"),
                    TeamSong(imageTeamSong: "Rap That Culture", nameTeamSong: "Al Rocco、那吾克熱", urlTeamSong: "https://tw.iqiyi.com/v_19rqy7hshg.html"),
                    TeamSong(imageTeamSong: "Champ", nameTeamSong: "Al Rocco、Blow Fever、王以太、那吾克熱", urlTeamSong: "https://tw.iqiyi.com/v_19rveagxvc.html"),
                    TeamSong(imageTeamSong: "目不轉睛", nameTeamSong: "王以太", urlTeamSong: "https://tw.iqiyi.com/v_19rqzim1qs.html"),
                    TeamSong(imageTeamSong: "家人", nameTeamSong: "吳亦凡、Blow Fever、那吾克熱", urlTeamSong: "https://tw.iqiyi.com/v_19rvdzujhs.html"),
                    TeamSong(imageTeamSong: "旋轉椅", nameTeamSong: "Blow Fever", urlTeamSong: "https://tw.iqiyi.com/v_19rvdztez4.html"),
                    TeamSong(imageTeamSong: "漂 PartⅡ", nameTeamSong: "那吾克熱", urlTeamSong: "https://tw.iqiyi.com/v_19rvdzws60.html"),
                    TeamSong(imageTeamSong: "時間是金", nameTeamSong: "王以太", urlTeamSong: "https://tw.iqiyi.com/v_19rvdzw6ac.html"),
                    TeamSong(imageTeamSong: "四季", nameTeamSong: "那吾克熱", urlTeamSong: "https://tw.iqiyi.com/v_19rvdzzuoo.html"),
                    TeamSong(imageTeamSong: "童言無忌", nameTeamSong: "王以太", urlTeamSong: "https://tw.iqiyi.com/v_19rvdzy44o.html"),
                    TeamSong(imageTeamSong: "飄向北方", nameTeamSong: "那吾克熱、尤長靖", urlTeamSong: "https://tw.iqiyi.com/v_19rvdzg1x8.html"),
                    TeamSong(imageTeamSong: "中國魂", nameTeamSong: "吳亦凡", urlTeamSong: "https://tw.iqiyi.com/v_19rvegiw50.html"),
                    TeamSong(imageTeamSong: "紙飛機", nameTeamSong: "那吾克熱", urlTeamSong: "https://tw.iqiyi.com/v_19rveghh3o.html"),
                    TeamSong(imageTeamSong: "Real Man", nameTeamSong: "那吾克熱", urlTeamSong: "https://tw.iqiyi.com/v_19rvep323c.html"),
                    TeamSong(imageTeamSong: "水滴石穿", nameTeamSong: "那吾克熱", urlTeamSong: "https://tw.iqiyi.com/v_19rr59pre8.html")]),
    
    Team(imageTeam: "熱狗-張震嶽", nameTeam: "SKY 聯盟",
         songTeam: [TeamSong(imageTeamSong: "我的夢", nameTeamSong: "Max、馬俊、功夫胖", urlTeamSong: "https://tw.iqiyi.com/v_19rvebri2w.html"),
                    TeamSong(imageTeamSong: "動腦金", nameTeamSong: "Jason、Lexie 劉柏辛、派克特", urlTeamSong: "https://tw.iqiyi.com/v_19rvebrfto.html"),
                    TeamSong(imageTeamSong: "24小時", nameTeamSong: "Max 馬俊、Lexie 劉柏辛、功夫胖、派克特", urlTeamSong: "https://tw.iqiyi.com/v_19rveai2zg.html"),
                    TeamSong(imageTeamSong: "Coco Make Me Do It", nameTeamSong: "Lexie 劉柏辛", urlTeamSong: "https://tw.iqiyi.com/v_19rveajzag.html"),
                    TeamSong(imageTeamSong: "飛太遠", nameTeamSong: "張震嶽&MC HotDog、Lexie 劉柏辛、功夫胖、派克特", urlTeamSong: "https://tw.iqiyi.com/v_19rvdzu91o.html"),
                    TeamSong(imageTeamSong: "蹦極", nameTeamSong: "功夫胖", urlTeamSong: "https://tw.iqiyi.com/v_19rqz884gs.html"),
                    TeamSong(imageTeamSong: "Y", nameTeamSong: "派克特", urlTeamSong: "https://tw.iqiyi.com/v_19rvdzv8jw.html"),
                    TeamSong(imageTeamSong: "木蘭", nameTeamSong: "Lexie 劉柏辛", urlTeamSong: "https://tw.iqiyi.com/v_19rvdzzchw.html"),
                    TeamSong(imageTeamSong: "編號89757", nameTeamSong: "Lexie 劉柏辛、吳莫愁", urlTeamSong: "https://tw.iqiyi.com/v_19rvdzceb8.html"),
                    TeamSong(imageTeamSong: "City Lights", nameTeamSong: "Lexie 劉柏辛", urlTeamSong: "https://tw.iqiyi.com/v_19rvdzgt5s.html"),
                    TeamSong(imageTeamSong: "嗨嗨人生", nameTeamSong: "張震嶽&MC HotDog", urlTeamSong: "https://tw.iqiyi.com/v_19rvegblek.html"),
                    TeamSong(imageTeamSong: "Dripping Sauce", nameTeamSong: "Lexie 劉柏辛", urlTeamSong: "https://tw.iqiyi.com/v_19rveg9tsw.html"),
                    TeamSong(imageTeamSong: "孤獨求敗", nameTeamSong: "張震嶽&MC HotDog、Lexie 劉柏辛", urlTeamSong: "https://tw.iqiyi.com/v_19rveozwyc.html")])]

struct Resurrection {
    var numberResurrection: String
    var imageResurrection: String
    var nameResurrection: String
    var urlResurrection: String
    
}
let resurrections: [Resurrection] = [
    Resurrection(numberResurrection: "第一戰", imageResurrection: "每一天", nameResurrection: "滿舒克", urlResurrection: "https://tw.iqiyi.com/v_19rvdzfaug.html"),
    Resurrection(numberResurrection: "第一戰", imageResurrection: "West Side", nameResurrection: "艾熱", urlResurrection: "https://tw.iqiyi.com/v_19rvdzf44s.html"),
    Resurrection(numberResurrection: "第二戰", imageResurrection: "夢魘", nameResurrection: "王以太", urlResurrection: "https://tw.iqiyi.com/v_19rvdzf0x4.html"),
    Resurrection(numberResurrection: "第二戰", imageResurrection: "都是小事兒", nameResurrection: "艾熱", urlResurrection: "https://tw.iqiyi.com/v_19rvdzirbc.html"),
    Resurrection(numberResurrection: "第三戰", imageResurrection: "Sun", nameResurrection: "小青龍", urlResurrection: "https://tw.iqiyi.com/v_19rvdzimvc.html"),
    Resurrection(numberResurrection: "第三戰", imageResurrection: "往昔", nameResurrection: "艾熱", urlResurrection: "https://tw.iqiyi.com/v_19rvdzijhs.html"),
    Resurrection(numberResurrection: "第四戰", imageResurrection: "情深深雨濛濛", nameResurrection: "周湯豪", urlResurrection: "https://tw.iqiyi.com/v_19rvdzjgr4.html"),
    Resurrection(numberResurrection: "第四戰", imageResurrection: "家走", nameResurrection: "艾熱", urlResurrection: "https://tw.iqiyi.com/v_19rvdzjd5k.html"),
    Resurrection(numberResurrection: "第五戰", imageResurrection: "特別", nameResurrection: "李佳隆", urlResurrection: "https://tw.iqiyi.com/v_19rvdziybk.html"),
    Resurrection(numberResurrection: "第五戰", imageResurrection: "受夠了", nameResurrection: "艾熱", urlResurrection: "https://tw.iqiyi.com/v_19rvdzhfzo.html")]

struct GoldenSong {
    var imageGoldenSong: String
    var nameGoldenSong: String
    var rankGoldenSong: String
    var urlGoldenSong: String
}

let goldensong: [GoldenSong] = [
    GoldenSong(imageGoldenSong: "星球墜落", nameGoldenSong: "艾熱、李佳隆", rankGoldenSong: "TOP1",urlGoldenSong: "https://tw.iqiyi.com/v_19rved0uns.html"),
    GoldenSong(imageGoldenSong: "目不轉睛", nameGoldenSong: "王以太",rankGoldenSong: "TOP2", urlGoldenSong: "https://tw.iqiyi.com/v_19rqzim1qs.html"),
    GoldenSong(imageGoldenSong: "Three Pass", nameGoldenSong: "ICE、那吾克熱",rankGoldenSong: "TOP3", urlGoldenSong: "https://tw.iqiyi.com/v_19rvecyg4o.html"),
    GoldenSong(imageGoldenSong: "兒子娃娃", nameGoldenSong: "那吾克熱",rankGoldenSong: "TOP4", urlGoldenSong: "https://tw.iqiyi.com/v_19rr2bt11k.html"),
    GoldenSong(imageGoldenSong: "頂天立地", nameGoldenSong: "ICE、艾熱、王齊銘、周湯豪",rankGoldenSong: "TOP5", urlGoldenSong: "https://tw.iqiyi.com/v_1t3tm6q97bc.html")]

struct data_Previews: PreviewProvider {
    static var previews: some View {
        Text("123456")
           .font(.custom("Nagurigaki-Crayon", size: 30))
    }
}
