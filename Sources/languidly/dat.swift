import Foundation

// 1. Group your data into a dictionary
let dictionaryData: [String: [Entry]] = [
    "cat": [
        Entry("ja", "ねこ", alt: "neko"),
        Entry("ms+id", "kucing", alt: "کوچيڠ"),
        Entry("th", "แมว", alt: "maew"),
        Entry("zh", "猫", alt: "māo"),
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
    "guesthouse": [
        Entry("th", "บ้านพัก", alt: "ban phak"),
        Entry("lo", "ເຮືອນພັກ", alt: "huen phak"),
        Entry("km", "ផ្ទះសំណាក់", alt: "pteah samnak"),
    ],
    "heavy": [
        Entry("ms+id", "berat", alt: "برت")
    ],
    "to like": [
        Entry("ms+id", "suka", alt: "سوک"),
        Entry("th", "ชอบ", alt: "chob"),
        Entry("lo", "ມັກ", alt: "mak"),
        Entry("zh", "喜欢", alt: "xǐhuān"),
        Entry("vi", "thích"),
        Entry("km", "ចូលចិត្ត", alt: "chol chit"),
    ],
    "near": [
        Entry("ms+id", "dekat", alt: "دکت"),
        Entry("es", "cerca"),
        Entry("th", "ใกล้", alt: "klai"),
    ],
    "no problem": [
        Entry("ms+id", "tiada masalah", alt: "تياد مسئله"),
        Entry("th", "ไม่เป็นไร", alt: "mai pen rai"),
        Entry("lo", "ບໍ່ເປັນຫຍັງ", alt: "bo pen hyang"),
        Entry("km", "មិនអីទេ", alt: "min ai te"),
    ],
    "north": [
        Entry("ja", "北", alt: "kita"),
        Entry("ms+id", "utara", alt: "اوتارا or اتارا or اوتار or اوترا"),
        Entry("zh", "北", alt: "běi"),
        Entry("th", "เหนือ", alt: "nuea"),
    ],
    "to pay": [
        Entry("ms+id", "bayar", alt: "باير"),
        Entry("es", "pagar"),
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
    "room": [
        Entry("ms", "bilik", alt: "بيليق"),
        Entry("id", "kamar"),
        Entry("th", "ห้อง", alt: "hong"),
        Entry("lo", "ຫ້ອງ", alt: "hong"),
        Entry("zh", "房间", alt: "fángjiān"),
    ],
    "south": [
        Entry("ms+id", "selatan", alt: "سلاتن"),
        Entry("zh", "南", alt: "nán"),
        Entry("th", "ใต้", alt: "tai"),
        Entry("vi", "nam"),
    ],
    "spoon": [
        Entry("ms", "sudu", alt: "سودو"),
        Entry("id", "sendok"),
        Entry("th", "ช้อน", alt: "chon"),
        Entry("zh", "勺子", alt: "sháozi"),
    ],
    "strong": [
        Entry("ms+id", "kuat", alt: "قوات")
    ],
    "thank you": [
        Entry("ms+id", "terima kasih", alt: "تريما کاسيه"),
        Entry("vi", "cảm ơn"),
        Entry("nan", "感謝", alt: "kam-siā"),
        Entry("km", "ឣរគុណ", alt: "aw koun"),
        Entry("ta", "நன்றி", alt: "nandri"),
    ],
    "toilet": [
        Entry("ms", "tandas", alt: "تاندس"),
        Entry("th", "ห้องน้ำ", alt: "hong nam"),
        Entry("zh", "厕所", alt: "cèsuǒ"),
        Entry("vi", "vệ sinh"),
        Entry("es", "baño"),
    ],
    "to walk": [Entry("ms+id", "jalan", alt: "جالن")],
    "to work": [
        Entry("th", "ทำงาน", alt: "tham ngan"),
        Entry("ms+id", "kerja", alt: "کرجا"),
    ],
    "yummy": [
        Entry("ms", "sedap", alt: "سدڤ"),
        Entry("id", "enak"),
        Entry("ja", "美味しい", alt: "oishii"),
        Entry("th", "อร่อย", alt: "aroi"),
        Entry("vi", "ngon", alt: "ngon"),
        Entry("km", "ឆ្ងាញ់", alt: "chnganh"),
    ],
]

// 2. Fallback function matching your old logic so you don't break code elsewhere
func getEntriesFor(_ word: String) -> [Entry]? {
    return dictionaryData[word]
}

func langCodeToFlag(_ code: String) -> String {
    switch code.lowercased() {
    case "de": return "🇩🇪"  // also austria flag, swiss flag
    case "es": return "🇲🇽"  // also spain flag
    case "id": return "🇮🇩"
    case "ja": return "🇯🇵"
    case "km": return "🇰🇭"
    case "ko": return "🇰🇷"
    case "lo": return "🇱🇦"
    case "ms": return "🇲🇾"
    case "ms+id": return "🇲🇾🇮🇩"
    case "nan": return "閩"  // also taiwan flag
    case "ta": return "தமிழ்"  // also india flag
    case "th": return "🇹🇭"
    case "tr": return "🇹🇷"
    case "vi": return "🇻🇳"
    case "zh": return "🇨🇳"
    default: return "🏳️"
    }
}
