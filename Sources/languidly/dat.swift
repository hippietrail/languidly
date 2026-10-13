import Foundation

let wordData: [String: [Entry]] = [
    "bird": [
        Entry("ms+id", "burung", alt: "بوروڠ"),
        Entry([("th", "นก", alt: "nok"), ("lo", "ນົກ", alt: "nok")]),
        Entry("zh", "鸟", alt: "niǎo"),
        Entry("ja", "鳥", alt: "tori"),
    ],
    "border": [
        Entry("ms", "sempadan", alt: "سمڤادن"),
        Entry("id", "perbatasan"),
    ],
    "car": [
        Entry("ms", "kereta", alt: "كريتا"),
        Entry("id", "mobil"),
        Entry("th", "รถ", alt: "rot"),
        Entry("zh", "车", alt: "chē"),
        Entry("vi", "xe"),
    ],
    "cash": [
        Entry([
            ("th", "เงินสด", alt: "ngern sot"),
            ("lo", "ເງິນສົດ", alt: "ngœn sot"),
        ]),
        Entry([
            ("zh", "现金", alt: "xiànjīn"),
            ("ja", "現金", alt: "genkin"),
        ]),
        Entry([
            ("ms", "wang tunai", alt: "واڠ توناي"),
            ("id", "uang tunai", alt: nil),
        ]),
    ],
    "cat": [
        Entry("ja", "ねこ", alt: "neko"),
        Entry("ms+id", "kucing", alt: "کوچيڠ"),
        Entry("th", "แมว", alt: "maew"),
        Entry("zh", "猫", alt: "māo"),
    ],
    "centre": [
        Entry("ms+id", "pusat", alt: "ڤوست"),
        Entry("th", "กลาง", alt: "klang"),
        Entry("zh", "中心", alt: "zhōngxīn"),
    ],
    "clean": [
        Entry("ms+id", "bersih", alt: "برسيه"),
        Entry("zh", "干净", alt: "gānjìng"),
        Entry("th", "สะอาด", alt: "sa-at"),
        Entry("lo", "ສະອາດ", alt: "sa-at"),
    ],
    "coconut": [
        Entry("ms+id", "kelapa", alt: "کلاڤ"),
        Entry("th", "มะพร้าว", alt: "mphrao"),
        Entry("lo", "ຫມາກພ້າວ", alt: "mhaak phao"),
        Entry("zh", "椰子", alt: "yēzi"),
        Entry("vi", "dừa"),
    ],
    "crow": [
        Entry("ms+id", "gagak", alt: "ݢاݢق"),
        Entry("ja", "烏", alt: "karasu"),
    ],
    "cute": [
        Entry("ms+id", "comel", alt: "چوميل"),
        Entry("th", "น่ารัก", alt: "na rak"),
        Entry("zh", "可爱", alt: "kě'ài"),
        Entry("ja", "かわいい", alt: "kawaii"),
    ],
    "dirty": [
        Entry("ms+id", "kotor", alt: "کوتور"),
        Entry("ja", "汚い", alt: "kitanai"),
    ],
    "east": [
        Entry("ms+id", "timur", alt: "تيمور"),
        Entry("zh", "东", alt: "dōng"),
        Entry("ja", "東", alt: "ひがし"),
    ],
    "easy": [
        Entry("ms+id", "mudah", alt: "موده"),
        Entry("ja", "簡単", alt: "kantan"),
        Entry("th", "ง่าย", alt: "ngai"),
    ],
    "expensive": [
        Entry("ms+id", "mahal", alt: "ماهل"),
        Entry("th", "แพง", alt: "phaeng"),
        Entry("zh", "贵", alt: "guì"),
    ],
    "far": [
        Entry("ms+id", "jauh", alt: "جاءوه"),
        Entry("es", "lejos"),
        Entry("th", "ไกล", alt: "glai"),
    ],
    "fish": [
        Entry("ms+id", "ikan", alt: "ايکن"),
        Entry("th", "ปลา", alt: "pla"),
        Entry("zh", "鱼", alt: "yú"),
        Entry("tr", "balık"),
    ],
    "flower": [
        Entry("ms+id", "bunga", alt: "بوڠا"),
        Entry([("th", "ดอกไม้", alt: "dok-mai"), ("lo", "ດອກໄມ້", alt: "dok mai")]),
        Entry("zh", "花", alt: "huā"),
        Entry("ja", "花", alt: "hana"),
    ],
    "forget": [
        Entry("ms+id", "lupa", alt: "لوڤا"),
        Entry("es", "olvidar"),
        Entry("de", "vergessen"),
        Entry("zh", "忘记", alt: "wàngjì"),
    ],
    "friend": [
        Entry("ms+id", "teman", alt: "تمن"),
        Entry("ms", "kawan", alt: "کاون"),
        Entry("th", "เพื่อน", alt: "phuen"),
        Entry("zh", "朋友", alt: "péngyou"),
    ],
    "guesthouse": [
        Entry("th", "บ้านพัก", alt: "ban phak"),
        Entry("lo", "ເຮືອນພັກ", alt: "huen phak"),
        Entry("km", "ផ្ទះសំណាក់", alt: "pteah samnak"),
    ],
    "half": [
        Entry("ms+id", "setengah", alt: "ستڠه"),
        Entry("th", "ครึ่ง", alt: "krung"),
        Entry("zh", "半", alt: "bàn"),
    ],
    "heavy": [
        Entry("ms+id", "berat", alt: "برت"),
        Entry("zh", "重", alt: "zhòng"),
        Entry("th", "หนัก", alt: "nàk"),
    ],
    "highway": [
        Entry("ms+id", "lebuh raya", alt: "لبوه راي"),
        Entry("zh", "高速公路", alt: "gāosù gōnglù"),
        Entry("tr", "otoyol"),
    ],
    "key": [
        Entry("ms+id", "kunci", alt: "کونچي"),
        Entry("th", "กุญแจ", alt: "kun chae"),
        Entry("lo", "ກະແຈ", alt: "kha chae"),
        Entry("zh", "钥匙", alt: "yàoshi"),
        Entry("ja", "鍵", alt: "kagi"),
    ],
    "kitchen": [
        Entry("ms+id", "dapur", alt: "داڤور"),
        Entry("zh", "厨房", alt: "chúfáng"),
        Entry("th", "ครัว", alt: "khraw"),  // or ห้องครัว
        Entry("ja", "台所", alt: "daidokoro"),
        // ເຮືອນຄົວ (Heuan khua), ຫ້ອງຄົວ (Hong khua)
    ],
    "know" /* a person */: [
        Entry("de", "kennen"),
        Entry("es", "conocer"),
        Entry("ms+id", "kenal", alt: "کنل"),
        Entry("zh", "认识", alt: "rènshi"),
        Entry("th", "รู้จัก", alt: "rujak"),
    ],
    "left": [
        Entry("zh", "左", alt: "zuǒ"),
        Entry("ms+id", "kiri", alt: "کيري"),
        Entry("th", "ซ้าย", alt: "saai"),
        Entry("es", "derecha"),
        Entry("de", "Links"),
        Entry("ja", "左", alt: "hidari"),
    ],
    "to like": [
        Entry("ms+id", "suka", alt: "سوک"),
        Entry("th", "ชอบ", alt: "chob"),
        Entry("lo", "ມັກ", alt: "mak"),
        Entry("zh", "喜欢", alt: "xǐhuān"),
        Entry("vi", "thích"),
        Entry("km", "ចូលចិត្ត", alt: "chol chit"),
        Entry("ka", "მომწონს", alt: "momcons"),
    ],
    "limit": [
        Entry("ms", "had", alt: "حد")
    ],
    "look for": [
        Entry("ms+id", "cari", alt: "چاري"),
        Entry("ja", "探す", alt: "sagasu"),
        Entry("zh", "找", alt: "zhǎo"),
        Entry("th", "หา", alt: "haa"),
    ],
    "map": [
        Entry([
            ("ja", "地図", alt: "chizu"),
            ("zh", "地图", alt: "dìtú"),
        ]),
        Entry("ms+id", "peta", alt: "ڤتا"),
        Entry("th", "แผนที่", alt: "phaenthí"),
    ],
    "maybe": [
        Entry("ja", "多分", alt: "tabun"),
        Entry("ms+id", "mungkin", alt: "موڠکين"),
        Entry("zh", "可能", alt: "kěnéng"),
    ],
    "milk": [
        Entry("ms+id", "susu", alt: "سوسو"),
        Entry("ka", "რძე", alt: "rdza"),
        Entry("zh", "牛奶", alt: "niúnǎi"),
        Entry([
            ("th", "นม", alt: "nom"),
            ("lo", "ນົມ", alt: "nom"),
        ]),
    ],
    "mosquito": [
        Entry("ms+id", "nyamuk", alt: "ڽاموق"),
        Entry([
            ("lo", "ຍຸງ", alt: "nyung"),
            ("th", "ยุง", alt: "yung"),
        ]),
        Entry("zh", "蚊子", alt: "wénzi"),
    ],
    "near": [
        Entry("ms+id", "dekat", alt: "دکت"),
        Entry("es", "cerca"),
        Entry("th", "ใกล้", alt: "klai"),
        Entry("zh", "近", alt: "jìn"),
    ],
    "north": [
        Entry("ja", "北", alt: "kita"),
        Entry("ms+id", "utara", alt: "اوتارا"),  // but also اتارا or اوتار or اوترا
        Entry("zh", "北", alt: "běi"),
        Entry("th", "เหนือ", alt: "nuea"),
    ],
    "ordinary": [
        Entry("ms+id", "biasa", alt: "بياسا"),
        Entry("th", "ปกติ", alt: "bòk-gà-dtì"),
        Entry("th", "ธรรมดา", alt: "tam-má-daa"),
    ],
    "to pay": [
        Entry("ms+id", "bayar", alt: "باير"),
        Entry("es", "pagar"),
        Entry([
            ("th", "จ่าย", alt: "jàai"),
            ("lo", "ຈ່າຍ", alt: "chāi"),
        ]),
    ],
    "peanut": [
        Entry("ms+id", "kacang", alt: "كاچڠ"),
        Entry("th", "ถั่วลิสง", alt: "tua li-song"),
        Entry("lo", "ຖົ່ວດິນ", alt: "tua din"),
        Entry("zh", "花生", alt: "huāshēng"),
    ],
    "perfect": [
        Entry("ms+id", "sempurna", alt: "سمڤورنا"),
        Entry("th", "สมบูรณ์", alt: "sombun"),
        Entry("zh", "完美", alt: "wánměi"),
    ],
    "pigeon": [
        Entry("ms+id", "merpati", alt: "مرڤاتي"),
        Entry("th", "นกพิราบ", alt: "nok phiraab"),
        Entry("zh", "鸽子", alt: "gēzi"),
        Entry("ko", "비둘기", alt: "bidulgi"),
    ],
    "please": [
        Entry("ms+id", "tolong", alt: "تولوڠ"),
        Entry("ms", "sila", alt: "سيلا"),
        Entry("ms+id", "silakan", alt: "سيلاکن"),
        Entry("ka", "თუ შეიძლება", alt: "tu sheidzleba"),
    ],
    "prohibited": [
        Entry("th", "ห้าม", alt: "hâm"),
        Entry([
            ("ja", "禁止", alt: "kinshi"),
            ("zh", "禁止", alt: "jìnzhǐ"),
        ]),
        Entry("ms+id", "dilarang", alt: "دلارڠ"),
    ],
    "pull": [
        Entry("ms+id", "tarik", alt: "تاريق"),
        Entry("zh", "拉", alt: "lā"),
        Entry("ja", "引", alt: "hiku"),
        Entry("lo", "ດຶງ", alt: "deng"),
    ],
    "push": [
        Entry("ms", "tolak", alt: "تولق"),
        Entry("id", "dorong"),
        Entry("zh", "推", alt: "tuī"),
        Entry("ja", "押", alt: "osu"),
        Entry("lo", "ຍູ້", alt: "yoo"),
    ],
    "remember": [
        Entry("ms+id", "ingat", alt: "ايڠت"),
        Entry("de", "erinnern"),
        Entry("es", "recordar"),
    ],
    "return": [
        Entry("ms+id", "kembali", alt: "کمبالي"),
        Entry("th", "กลับ", alt: "klaap"),
        Entry("lo", "ກັບ", alt: "kab"),
        Entry("zh", "回来", alt: "huílái"),
        Entry("ja", "戻る", alt: "kaeru"),
        Entry("es", "volver"),
    ],
    "right": [
        Entry("ja", "右", alt: "migi"),
        Entry("de", "Rechts"),
        Entry("es", "derecha"),
        Entry("th", "ขวา", alt: "khwaa"),
        Entry("ms+id", "kanan", alt: "کانن"),
        Entry("zh", "右", alt: "yòu"),
    ],
    "room": [
        Entry("ms", "bilik", alt: "بيليق"),
        Entry("id", "kamar"),
        Entry([
            ("th", "ห้อง", alt: "hong"),
            ("lo", "ຫ້ອງ", alt: "hong"),
        ]),
        Entry("zh", "房间", alt: "fángjiān"),
    ],
    "rubbish": [
        Entry("ms+id", "sampah", alt: "سمڤه"),
        Entry("th", "ขยะ", alt: "kà-yà"),
        Entry([
            ("zh", "垃圾", alt: "lāji"),
            ("tw", "垃圾", alt: "lèsè"),
        ]),
        Entry("lo", "ຂີ້ເຫຍື້ອ", alt: "khī hư̄ai"),
        Entry("ja", "ゴミ", alt: "gomi"),
        Entry("ko", "쓰레기", alt: "sseuregi"),
    ],
    "shoe": [
        Entry("th", "รองเท้า", alt: "rong-thao"),
        Entry("lo", "ເກີບ", alt: "koeb"),
        Entry("id", "sepatu"),
        Entry("ms", "kasut", alt: "کاسوت"),
        Entry("zh", "鞋", alt: "xié"),
        Entry("ja", "靴", alt: "kutsu"),
    ],
    "slippery": [
        Entry("zh", "滑", alt: "huá"),
        Entry("ms+id", "licin", alt: "ليچين"),
        Entry("th", "ลื่น", alt: "luen"),
    ],
    "snack": [
        Entry("ms", "kudapan", alt: "کودڤن"),
        Entry("zh", "小吃", alt: "xiǎochī"),
    ],
    "south": [
        Entry("ms+id", "selatan", alt: "سلاتن"),
        Entry("zh", "南", alt: "nán"),
        Entry("th", "ใต้", alt: "tai"),
        Entry("vi", "nam"),
    ],
    "special": [
        Entry("ms+id", "istimewa", alt: "ايستيميوا"),
        Entry("th", "พิเศษ", alt: "pí-sèt"),
        Entry("zh", "特别", alt: "tèbié"),
        Entry("ja", "特別", alt: "tokubetsu"),
    ],
    "spicy": [
        Entry("ms+id", "pedas", alt: "ڤدس"),
        Entry([
            ("th", "เผ็ด", alt: "ped"),
            ("lo", "ເຜັດ", alt: "ped"),
        ]),
        Entry("zh", "辣", alt: "là"),
        Entry("vi", "cay"),
    ],
    "spoon": [
        Entry("ms", "sudu", alt: "سودو"),
        Entry("id", "sendok"),
        Entry("th", "ช้อน", alt: "chon"),
        Entry("zh", "勺子", alt: "sháozi"),
        Entry("lo", "ບ່ວງ", alt: "būang"),
    ],
    "stairs": [
        Entry("ms+id", " tangga", alt: "تڠݢ"),
        Entry("th", "บันได", alt: "ban dai"),
        Entry("zh", "楼梯", alt: "lóutī"),
        Entry("ja", "階段", alt: "kaidan"),
    ],
    "storey": [
        Entry("ms", "tingkat", alt: "تيڠکت"),
        Entry("id", "lantai"),
        Entry("zh", "楼", alt: "lóu"),
    ],
    "strong": [
        Entry("ms+id", "kuat", alt: "قوات")
    ],
    "to talk": [
        Entry("ms", "bercakap", alt: "برچاکڤ"),
        Entry("id", "berbicara"),
        Entry("th", "พูด", alt: "phut"),
        Entry("lo", "ເວົ້າ", alt: "vao"),
        Entry("zh", "说", alt: "shuō"),
        Entry("ja", "話す", alt: "hanasu"),
        Entry("ko", "말하다", alt: "malhada"),
    ],
    "tap": [
        Entry("ms", "paip air", alt: "ڤاي اير"),
        Entry("id", "kran air"),
        Entry("th", "ก๊อกน้ำ", alt: "kɔːk nɯːaː"),
        Entry("zh", "水龙头", alt: "shuǐ lóng tóu"),
        Entry("zh", "蛇口", alt: "shé kǒu"),
    ],
    "thank you": [
        Entry("ms+id", "terima kasih", alt: "تريما کاسيه"),
        Entry("vi", "cảm ơn"),
        Entry("nan", "感謝", alt: "kam-siā"),
        Entry("km", "ឣរគុណ", alt: "aw koun"),
        Entry("ta", "நன்றி", alt: "nandri"),
        Entry("ka", "გმადლობთ", alt: "gamadlobt"),
    ],
    "toilet": [
        Entry("ms", "tandas", alt: "تاندس"),
        Entry("th", "ห้องน้ำ", alt: "hong nam"),
        Entry("zh", "厕所", alt: "cèsuǒ"),
        Entry("vi", "vệ sinh"),
        Entry("es", "baño"),
        Entry("zh", "卫生间", alt: "wèishēngjiān"),
        Entry("zh", "洗手间", alt: "xǐshǒujiān"),
        Entry("ka", "ტუალეტი", alt: "tualeti"),
    ],
    "twenty": [
        Entry("ms+id", "dua puluh", alt: "دوا ڤولوه"),
        Entry("th", "ยี่สิบ", alt: "yee sip"),
        Entry("lo", "ຊາວ", alt: "sao"),
        Entry("zh", "二十", alt: "èrshí"),
    ],
    "very": [
        Entry("ms", "sangat", alt: "ساڠت"),
        Entry("th", "มาก", alt: "mak"),
        Entry("lo", "ຫຼາຍ", alt: "hlay"),
    ],
    "to walk": [
        Entry("ms+id", "jalan", alt: "جالن"),
        Entry("th", "เดิน", alt: "doen"),
        Entry("lo", "ຍ່າງ", alt: "nyang"),
        Entry("ja", "歩く", alt: "aruku"),
        Entry("zh", "走", alt: "zǒu"),
        Entry("km", "ដើរ", alt: "daer"),
    ],
    "want": [
        Entry("zh", "要", alt: "yào"),
        Entry("th", "อยาก", alt: "yàak"),
        Entry("th", "เอา", alt: "ao"),
        Entry("vi", "muốn"),
        Entry([
            ("ms", "mahu", alt: "ماهو"),
            ("id", "mau", alt: nil),
        ]),
        Entry("ms", "nak", alt: "نق"),
    ],
    "wet": [
        Entry("ms+id", "basah", alt: "باسه"),
        Entry("zh", "湿", alt: "shī"),
        Entry([
            ("lo", "ປຽກ", alt: "bpiak"),
            ("th", "เปียก", alt: "bpiak"),
        ]),
    ],
    "when": [
        Entry("ms", "bila", alt: "بيلا"),
        Entry("th", "เวลา", alt: "wela"),
        Entry("zh", "什么时候", alt: "shénme shíhou"),
        Entry("id", "kapan"),
    ],
    "without": [
        Entry("ms+id", "tanpa", alt: "تنڤا"),
        Entry("th", "ไม่มี", alt: "mai mi"),
        Entry("lo", "ບໍ່ມີ", alt: "bo mi"),
        Entry("zh", "没有", alt: "méiyǒu"),
    ],
    "to work": [
        Entry("th", "ทำงาน", alt: "tham ngan"),
        Entry("ms+id", "kerja", alt: "کرجا"),
        Entry("zh", "工作", alt: "gōngzuò"),
    ],
    "would like": [
        Entry("zh", "想", alt: "xiǎng"),
        Entry("th", "อยาก", alt: "yàak"),
        Entry("vi", "muốn"),
        Entry("id", "ingin"),
        Entry("th", "ขอ", alt: "kŏr"),
        Entry("ms", "hendak", alt: "هندق"),
        Entry("ms", "mahu", alt: "ماهو"),
    ],
    "yummy": [
        Entry("ms", "sedap", alt: "سدڤ"),
        Entry("id", "enak"),
        Entry("ja", "美味しい", alt: "oishii"),
        Entry("th", "อร่อย", alt: "aroi"),
        Entry("vi", "ngon", alt: "ngon"),
        Entry("km", "ឆ្ងាញ់", alt: "chnganh"),
        Entry("lo", "ແຊບ", alt: "saep"),
        Entry("ka", "გემრიელი", alt: "gemrieli"),
    ],
    "🙏": [
        Entry("th", "ไหว้", alt: "wai"),
        Entry("lo", "ນົບ", alt: "nop"),
        Entry("km", "សំពះ", alt: "sampeah"),
    ],
]

let phraseData: [String: [Entry]] = [
    "go where": [
        Entry("th", "ไปไหน", alt: "pai nai"),
        Entry("lo", "ໄປໃສ", alt: "pai sai"),
        Entry("zh", "去哪里", alt: "qù nǎ li"),
        Entry("vi", "đi đâu"),
        // Entry("ms", "pergi ke mana", alt: ""),
    ],
    "I've got a cold": [
        Entry("zh", "我感冒了", alt: "wǒ gǎnmào le"),
        Entry("ms+id", "saya sakit pilek", alt: "ساي ساكيت ڤيلق"),
    ],
    "let's go": [
        Entry("th", "ไปกันเลย", alt: "bpaí gan loeuy"),
        Entry("ja", "行きましょう", alt: "ikimasho"),
        Entry("zh", "走吧", alt: "zǒu ba"),
        Entry("vi", "đi mau"),
        Entry("ms", "jom", alt: "جوم"),
        Entry("id", "ayo"),
    ],
    "nice to meet you": [
        Entry("ja", "はじめまして", alt: "hajimemashite"),
        Entry("ms", "selamat berkenalan", alt: "سلامت برکنالن"),
        Entry("th", "ยินดีที่ได้รู้จัก", alt: "yin-dee thee dai roo-jak"),
    ],
    "no problem": [
        Entry("ms+id", "tiada masalah", alt: "تياد مسئله"),
        Entry("th", "ไม่เป็นไร", alt: "mai pen rai"),
        Entry("lo", "ບໍ່ເປັນຫຍັງ", alt: "bo pen hyang"),
        Entry("km", "មិនអីទេ", alt: "min ai te"),
    ],
]

func getEntriesFor(_ enKey: String) -> [Entry]? {
    return wordData[enKey] ?? phraseData[enKey]
}

func langCodeToFlag(_ code: String) -> String {
    switch code.lowercased() {
    case "de": return "🇩🇪"  // also austria flag, swiss flag?
    case "es": return "🇲🇽"  // also spain flag?
    case "id": return "🇮🇩"
    case "ja": return "🇯🇵"
    case "ka": return "🇬🇪"
    case "km": return "🇰🇭"
    case "ko": return "🇰🇷"
    case "lo": return "🇱🇦"
    case "ms": return "🇲🇾"
    case "ms+id": return "🇲🇾🇮🇩"
    case "nan": return "閩"  // also taiwan flag? nah we'll use that for taiwanese variatns of mandarin
    case "ta": return "தமிழ்"  // also india flag?
    case "th": return "🇹🇭"
    case "tr": return "🇹🇷"
    case "tw": return "🇹🇼"
    case "vi": return "🇻🇳"
    case "zh": return "🇨🇳"
    default: return "🏳️"
    }
}
