// SPDX-License-Identifier: GPL-3.0-or-later
// Copyright (C) 2026 Vorssaint

import Foundation

struct MenuBarAppearanceStrings {
    let label: String
    let values: String
    let bars: String
    let caption: String
    let customize: String
    let normalColor: String
    let mediumColor: String
    let highColor: String
    let mediumFrom: String
    let highFrom: String
}

extension FeatureStrings {
    static func menuBarAppearance(_ language: AppLanguage) -> MenuBarAppearanceStrings {
        switch language {
        case .ar: return .ar
        case .enUS: return .enUS
        case .ptBR: return .ptBR
        case .tr: return .tr
        case .ru: return .ru
        case .es: return .es
        case .sk: return .sk
        case .de: return .de
        case .fr: return .fr
        case .it: return .it
        case .ja: return .ja
        case .ko: return .ko
        case .zhHans: return .zhHans
        case .zhTW: return .zhTW
        case .zhHK: return .zhHK
        case .uk: return .uk
        }
    }
}

extension MenuBarAppearanceStrings {
    static let enUS = MenuBarAppearanceStrings(
        label: "Usage display",
        values: "Values",
        bars: "Gauges",
        caption: "Gauges apply to CPU, GPU, memory and disk usage, and show fan speed as a spinner. Other readings stay numeric.",
        customize: "Gauge colors and limits",
        normalColor: "Normal color",
        mediumColor: "Medium color",
        highColor: "High color",
        mediumFrom: "Medium from",
        highFrom: "High from"
    )

    static let ptBR = MenuBarAppearanceStrings(
        label: "Exibição de uso",
        values: "Valores",
        bars: "Medidores",
        caption: "Os medidores mostram o uso de CPU, GPU, memória e disco, e exibem a velocidade da ventoinha como um ícone giratório. As outras leituras continuam numéricas.",
        customize: "Cores e limites dos medidores",
        normalColor: "Cor normal",
        mediumColor: "Cor média",
        highColor: "Cor alta",
        mediumFrom: "Médio a partir de",
        highFrom: "Alto a partir de"
    )

    static let tr = MenuBarAppearanceStrings(
        label: "Kullanım görünümü",
        values: "Değerler",
        bars: "Göstergeler",
        caption: "Göstergeler CPU, GPU, bellek ve disk kullanımını gösterir ve fan hızını dönen bir simge olarak sunar. Diğer ölçümler sayısal kalır.",
        customize: "Gösterge renkleri ve sınırları",
        normalColor: "Normal renk",
        mediumColor: "Orta renk",
        highColor: "Yüksek renk",
        mediumFrom: "Orta başlangıcı",
        highFrom: "Yüksek başlangıcı"
    )

    static let ru = MenuBarAppearanceStrings(
        label: "Отображение нагрузки",
        values: "Значения",
        bars: "Индикаторы",
        caption: "Индикаторы показывают загрузку CPU, GPU, памяти и диска, а скорость вентилятора отображают вращающимся значком. Остальные показатели остаются числовыми.",
        customize: "Цвета и пороги индикаторов",
        normalColor: "Обычный цвет",
        mediumColor: "Средний цвет",
        highColor: "Высокий цвет",
        mediumFrom: "Средний от",
        highFrom: "Высокий от"
    )

    static let es = MenuBarAppearanceStrings(
        label: "Vista de uso",
        values: "Valores",
        bars: "Indicadores",
        caption: "Los indicadores muestran el uso de CPU, GPU, memoria y disco, y la velocidad del ventilador como un icono giratorio. Las demás lecturas siguen siendo numéricas.",
        customize: "Colores y límites de los indicadores",
        normalColor: "Color normal",
        mediumColor: "Color medio",
        highColor: "Color alto",
        mediumFrom: "Medio desde",
        highFrom: "Alto desde"
    )

    static let sk = MenuBarAppearanceStrings(
        label: "Zobrazenie vyťaženia",
        values: "Hodnoty",
        bars: "Ukazovatele",
        caption: "Ukazovatele platia pre vyťaženie CPU, GPU, pamäte a disku a rýchlosť ventilátora zobrazujú ako otáčajúcu sa ikonu. Ostatné hodnoty zostávajú číselné.",
        customize: "Farby a limity ukazovateľov",
        normalColor: "Bežná farba",
        mediumColor: "Stredná farba",
        highColor: "Vysoká farba",
        mediumFrom: "Stredná od",
        highFrom: "Vysoká od"
    )

    static let de = MenuBarAppearanceStrings(
        label: "Auslastungsanzeige",
        values: "Werte",
        bars: "Anzeigen",
        caption: "Anzeigen stellen die Auslastung von CPU, GPU, Speicher und Festplatte dar und zeigen die Lüfterdrehzahl als rotierendes Symbol. Andere Messwerte bleiben numerisch.",
        customize: "Anzeigefarben und Grenzwerte",
        normalColor: "Normale Farbe",
        mediumColor: "Mittlere Farbe",
        highColor: "Hohe Farbe",
        mediumFrom: "Mittel ab",
        highFrom: "Hoch ab"
    )

    static let fr = MenuBarAppearanceStrings(
        label: "Affichage de l’utilisation",
        values: "Valeurs",
        bars: "Jauges",
        caption: "Les jauges indiquent l’utilisation du CPU, du GPU, de la mémoire et du disque, et affichent la vitesse du ventilateur sous forme d’icône rotative. Les autres mesures restent numériques.",
        customize: "Couleurs et seuils des jauges",
        normalColor: "Couleur normale",
        mediumColor: "Couleur moyenne",
        highColor: "Couleur élevée",
        mediumFrom: "Moyen à partir de",
        highFrom: "Élevé à partir de"
    )

    static let it = MenuBarAppearanceStrings(
        label: "Visualizzazione utilizzo",
        values: "Valori",
        bars: "Indicatori",
        caption: "Gli indicatori mostrano l’utilizzo di CPU, GPU, memoria e disco e indicano la velocità della ventola con un’icona rotante. Le altre letture restano numeriche.",
        customize: "Colori e soglie degli indicatori",
        normalColor: "Colore normale",
        mediumColor: "Colore medio",
        highColor: "Colore alto",
        mediumFrom: "Medio da",
        highFrom: "Alto da"
    )

    static let ja = MenuBarAppearanceStrings(
        label: "使用率の表示",
        values: "数値",
        bars: "ゲージ",
        caption: "CPU、GPU、メモリ、ディスクの使用率をゲージで表示し、ファン速度をスピナーで表示します。その他の測定値は数値のままです。",
        customize: "ゲージの色としきい値",
        normalColor: "通常の色",
        mediumColor: "中程度の色",
        highColor: "高負荷の色",
        mediumFrom: "中程度の開始",
        highFrom: "高負荷の開始"
    )

    static let ko = MenuBarAppearanceStrings(
        label: "사용량 표시",
        values: "값",
        bars: "게이지",
        caption: "CPU, GPU, 메모리 및 디스크 사용량을 게이지로 표시하고 팬 속도를 스피너로 표시합니다. 다른 측정값은 숫자로 유지됩니다.",
        customize: "게이지 색상 및 기준",
        normalColor: "보통 색상",
        mediumColor: "중간 색상",
        highColor: "높음 색상",
        mediumFrom: "중간 시작",
        highFrom: "높음 시작"
    )

    static let zhHans = MenuBarAppearanceStrings(
        label: "使用率显示",
        values: "数值",
        bars: "仪表",
        caption: "CPU、GPU、内存和磁盘使用率以仪表显示，风扇转速以旋转图标显示。其他读数保持数字显示。",
        customize: "仪表颜色和阈值",
        normalColor: "正常颜色",
        mediumColor: "中等颜色",
        highColor: "高负载颜色",
        mediumFrom: "中等起点",
        highFrom: "高负载起点"
    )

    static let zhTW = MenuBarAppearanceStrings(
        label: "使用率顯示",
        values: "數值",
        bars: "儀表",
        caption: "CPU、GPU、記憶體和磁碟使用率以儀表顯示，風扇轉速以旋轉圖示顯示。其他讀數維持數字顯示。",
        customize: "儀表顏色和門檻",
        normalColor: "正常顏色",
        mediumColor: "中等顏色",
        highColor: "高負載顏色",
        mediumFrom: "中等起點",
        highFrom: "高負載起點"
    )

    static let zhHK = MenuBarAppearanceStrings(
        label: "使用率顯示",
        values: "數值",
        bars: "儀錶",
        caption: "CPU、GPU、記憶體及磁碟使用率以儀錶顯示，風扇轉速以旋轉圖示顯示。其他讀數維持數字顯示。",
        customize: "儀錶顏色及門檻",
        normalColor: "正常顏色",
        mediumColor: "中等顏色",
        highColor: "高負載顏色",
        mediumFrom: "中等起點",
        highFrom: "高負載起點"
    )
    static let uk = MenuBarAppearanceStrings(
        label: "Відображення використання",
        values: "Значення",
        bars: "Індикатори",
        caption: "Індикатори застосовуються до використання CPU, GPU, пам’яті та диска, а швидкість вентилятора показують обертовою іконкою. Інші показники залишаються числовими.",
        customize: "Кольори та ліміти індикаторів",
        normalColor: "Звичайний колір",
        mediumColor: "Середній колір",
        highColor: "Високий колір",
        mediumFrom: "Середній від",
        highFrom: "Високий від"
    )
}

extension MenuBarAppearanceStrings {
    static let ar = MenuBarAppearanceStrings(
        label: "عرض الاستخدام",
        values: "قيم",
        bars: "مؤشرات",
        caption: "تنطبق المؤشرات على استخدام المعالج والرسوميات والذاكرة والقرص، وتعرض سرعة المروحة كرمز دوّار. تبقى القراءات الأخرى رقمية.",
        customize: "ألوان المؤشرات وحدودها",
        normalColor: "اللون العادي",
        mediumColor: "لون المستوى المتوسط",
        highColor: "لون المستوى المرتفع",
        mediumFrom: "المتوسط يبدأ من",
        highFrom: "المرتفع يبدأ من"
    )
}
