// Phase 2 content: Deuteronomy through Jonah.
// Kept in a separate file from story_data.dart purely for maintainability --
// StoryData.getAllStories() merges this list in.

import '../models/story.dart';

class StoryDataOt2 {
  static List<Story> getAll() {
    return [
      _mosesFarewell(),
      _crossingJordan(),
      _wallsOfJericho(),
      _gideonsArmy(),
      _samsonStrength(),
      _ruthLoyalty(),
      _samuelCalls(),
      _davidGoliath(),
      _davidJonathan(),
      _solomonsWisdom(),
      _elijahCarmel(),
      _queenEsther(),
      _danielLionsDen(),
      _fieryFurnace(),
      _jonahBigFish(),
    ];
  }

  static Story _mosesFarewell() {
    return Story(
      id: 'moses_farewell',
      titleEn: 'Joshua Takes the Lead',
      titleAm: 'ኢያሱ መሪ ሆነ',
      bookEn: 'Deuteronomy',
      bookAm: 'ዘዳግም',
      character: 'Moses & Joshua',
      imagePath: 'assets/images/stories/moses_farewell.png',
      order: 1,
      verseReferences: ['Deuteronomy 31:1-8', 'Deuteronomy 34:1-12'],
      summaryEn: 'Moses blesses Joshua as the new leader before he dies.',
      summaryAm: 'ሙሴ ከመሞቱ በፊት ኢያሱን እንደ አዲሱ መሪ ባረከው።',
      contentEn: '''After forty long years in the wilderness, Moses was very old. He knew he would not enter the Promised Land with his people, but he was not afraid.

Moses called the people together. "Be strong and brave," he told them. "God will go with you into the new land."

Then Moses turned to Joshua, his faithful helper. "Be strong and brave, Joshua! God will never leave you. You will lead this people into the land I could only see from far away."

God took Moses up a high mountain called Nebo and showed him the whole Promised Land stretching out before him. Moses looked at it with joy, even though he would not walk on it himself.

Moses died on that mountain, and the people cried for him for thirty days. He had led them faithfully for forty years.

Then Joshua stood up, filled with God's wisdom and courage, ready to lead God's people the rest of the way home.''',
      contentAm: '''ከአርባ ረጅም ዓመታት በምድረ በዳ በኋላ ሙሴ በጣም አረጀ። ከሕዝቡ ጋር ወደ ተስፋይቱ ምድር እንደማይገባ ያውቅ ነበር፣ ነገር ግን አልፈራም።

ሙሴ ሕዝቡን ሰበሰበ። "ጠንክሩና ደፋሮች ሁኑ" አላቸው። "እግዚአብሔር ወደ አዲሲቱ ምድር ከእናንተ ጋር ይሄዳል።"

ከዚያም ሙሴ ወደ ታማኙ ረዳቱ ኢያሱ ዞረ። "ኢያሱ ሆይ፣ ጠንክርና ደፋር ሁን! እግዚአብሔር ከቶ አይተውህም። ከሩቅ ብቻ ያየሁትን ይህችን ምድር ትመራቸዋለህ።"

እግዚአብሔር ሙሴን ናባው ወደሚባል ከፍተኛ ተራራ አውጥቶ ተስፋይቱን ምድር ሁሉ አሳየው። ሙሴ ራሱ ባይራመድባትም በደስታ ተመለከታት።

ሙሴ በዚያ ተራራ ላይ ሞተ፣ ሕዝቡም ለሠላሳ ቀናት አለቀሱለት። ለአርባ ዓመታት በታማኝነት መርቷቸው ነበር።

ከዚያም ኢያሱ በእግዚአብሔር ጥበብና ድፍረት ተሞልቶ፣ የእግዚአብሔርን ሕዝብ የቀረውን መንገድ ወደ ቤት ለመምራት ተነሳ።''',
      sequenceEventsEn: const [
        'Moses tells the people to be strong and brave.',
        'Moses blesses Joshua as the next leader.',
        'God shows Moses the Promised Land from Mount Nebo.',
        'Moses dies and the people mourn for thirty days.',
        'Joshua rises up, ready to lead.',
      ],
      sequenceEventsAm: const [
        'ሙሴ ሕዝቡ ጠንካራና ደፋር እንዲሆኑ ነገራቸው።',
        'ሙሴ ኢያሱን እንደ ቀጣዩ መሪ ባረከው።',
        'እግዚአብሔር ተስፋይቱን ምድር ከናባው ተራራ ላይ ለሙሴ አሳየው።',
        'ሙሴ ሞተ፣ ሕዝቡም ለሠላሳ ቀናት አለቀሱ።',
        'ኢያሱ ለመምራት ተዘጋጅቶ ተነሳ።',
      ],
    );
  }

  static Story _crossingJordan() {
    return Story(
      id: 'crossing_jordan',
      titleEn: 'Crossing the Jordan River',
      titleAm: 'ዮርዳኖስን መሻገር',
      bookEn: 'Joshua',
      bookAm: 'መጽሐፈ ኢያሱ',
      character: 'Joshua',
      imagePath: 'assets/images/stories/crossing_jordan.png',
      order: 1,
      verseReferences: ['Joshua 3:1-17'],
      summaryEn: 'God stops the Jordan River so Israel can cross into Canaan.',
      summaryAm: 'እግዚአብሔር እስራኤል ወደ ከነዓን እንዲገባ ዮርዳኖስን አስቆመ።',
      contentEn: '''After Moses died, it was Joshua's turn to lead the people into the Promised Land. But there was a big river in the way -- the Jordan, flooded and rushing fast.

God told Joshua, "Have the priests carry the Ark of the Covenant and step into the river first. I will do something amazing."

The priests obeyed. The moment their feet touched the water, the river stopped flowing! The water piled up far upstream, and dry ground appeared right in the middle of the riverbed.

The priests stood still in the middle of the dry riverbed, holding the Ark, while the whole nation of Israel -- men, women, children, and animals -- walked across on dry ground.

Once everyone had crossed safely, Joshua chose twelve men, one from each tribe, to pick up twelve stones from the riverbed. They stacked the stones as a monument so that children in the future would ask, "What do these stones mean?" and be told the story of God's mighty power.

The people finally stood in the Promised Land, and they knew God was with Joshua just as He had been with Moses.''',
      contentAm: '''ሙሴ ከሞተ በኋላ ሕዝቡን ወደ ተስፋይቱ ምድር የመምራት ተራ የኢያሱ ሆነ። ነገር ግን በመንገድ ላይ ትልቅ ወንዝ ነበር - ዮርዳኖስ፣ ሞልቶ በፍጥነት ይፈስ ነበር።

እግዚአብሔር ኢያሱን፣ "ካህናቱ የቃል ኪዳኑን ታቦት ተሸክመው መጀመሪያ ወደ ወንዙ እንዲገቡ አድርግ። አስደናቂ ነገር አደርጋለሁ" አለው።

ካህናቱ ታዘዙ። እግራቸው ውሃውን በነካበት ቅጽበት ወንዙ መፍሰሱን አቆመ! ውሃው ከላይ ራቅ ብሎ ተከመረ፣ በወንዙ መካከል ደረቅ መሬት ታየ።

ካህናቱ ታቦቱን ይዘው በደረቁ የወንዙ መካከል ቆሙ፣ የእስራኤል ሕዝብ ሁሉ - ወንዶች፣ ሴቶች፣ ልጆችና እንስሳት - በደረቅ መሬት ላይ ተሻገሩ።

ሁሉም ደህና ከተሻገሩ በኋላ ኢያሱ ከእያንዳንዱ ነገድ አንድ አንድ አሥራ ሁለት ሰዎችን መርጦ ከወንዙ ውስጥ አሥራ ሁለት ድንጋዮችን እንዲያነሱ አደረገ። የወደፊት ልጆች "እነዚህ ድንጋዮች ምን ማለት ናቸው?" ብለው እንዲጠይቁ ድንጋዮቹን እንደ መታሰቢያ ደረደሩ።

ሕዝቡ በመጨረሻ በተስፋይቱ ምድር ላይ ቆሙ፣ እግዚአብሔርም ከኢያሱ ጋር እንደ ሙሴ ጋር እንደነበረ ዐወቁ።''',
      sequenceEventsEn: const [
        'Joshua tells the priests to carry the Ark into the Jordan.',
        'The priests step in and the river stops flowing.',
        'All of Israel crosses on dry ground.',
        'Twelve men gather twelve stones as a memorial.',
        'Israel stands safely in the Promised Land.',
      ],
      sequenceEventsAm: const [
        'ኢያሱ ካህናቱ ታቦቱን ወደ ዮርዳኖስ እንዲወስዱ ነገራቸው።',
        'ካህናቱ ገቡ፣ ወንዙም መፍሰሱን አቆመ።',
        'እስራኤል ሁሉ በደረቅ መሬት ተሻገሩ።',
        'አሥራ ሁለት ሰዎች እንደ መታሰቢያ አሥራ ሁለት ድንጋዮችን ሰበሰቡ።',
        'እስራኤል በተስፋይቱ ምድር ላይ በደህና ቆሙ።',
      ],
    );
  }

  static Story _wallsOfJericho() {
    return Story(
      id: 'walls_of_jericho',
      titleEn: 'The Walls of Jericho',
      titleAm: 'የኢያሪኮ ቅጥር',
      bookEn: 'Joshua',
      bookAm: 'መጽሐፈ ኢያሱ',
      character: 'Joshua',
      imagePath: 'assets/images/stories/walls_of_jericho.png',
      order: 2,
      verseReferences: ['Joshua 6:1-27'],
      summaryEn: 'Jericho\'s walls fall down after Israel obeys God\'s strange plan.',
      summaryAm: 'እስራኤል የእግዚአብሔርን እንግዳ እቅድ ከታዘዘ በኋላ የኢያሪኮ ቅጥር ወደቀ።',
      contentEn: '''The city of Jericho had huge, thick walls, and its gates were shut tight against Israel. It looked impossible to capture.

God gave Joshua a very strange battle plan. "March around the city once a day for six days. Have seven priests carry trumpets in front of the Ark. On the seventh day, march around seven times, then blow the trumpets and have everyone shout!"

Joshua obeyed exactly, even though it made no sense as a military plan. Every day, the soldiers marched silently around Jericho while the people inside watched, confused and afraid.

On the seventh day, they marched around the city seven times. Then the priests blew their trumpets with a long blast, and Joshua shouted, "Shout! For the Lord has given you the city!"

Every single person shouted as loud as they could -- and the massive walls of Jericho came crashing down flat! The Israelites walked straight in and took the city.

It wasn't Israel's army that won the battle -- it was their obedience and trust in God's power.''',
      contentAm: '''የኢያሪኮ ከተማ ግዙፍና ወፍራም ቅጥር ነበራት፣ በሮቿም በጥብቅ ተዘግተው ነበር። ልትያዝ የማትችል ትመስል ነበር።

እግዚአብሔር ለኢያሱ በጣም እንግዳ የሆነ የጦርነት እቅድ ሰጠው። "ለስድስት ቀናት በቀን አንድ ጊዜ ከተማዋን ዙሪያ ዙር። ሰባት ካህናት መለከቶችን ይዘው ከታቦቱ ፊት ይሂዱ። በሰባተኛው ቀን ሰባት ጊዜ ዙር፣ ከዚያ መለከቶቹን ንፉ ሁሉም ይጩኹ!"

ኢያሱ እንደ ወታደራዊ እቅድ ትርጉም ባይኖረውም በትክክል ታዘዘ። በየቀኑ ወታደሮቹ በኢያሪኮ ዙሪያ በጸጥታ ይዞሩ ነበር፣ በውስጥ ያሉት ሰዎችም ግራ ተጋብተውና ፈርተው ይመለከቱ ነበር።

በሰባተኛው ቀን ከተማዋን ሰባት ጊዜ ዞሩ። ከዚያም ካህናቱ መለከቶቻቸውን በረጅሙ ነፉ፣ ኢያሱም "ጩኹ! እግዚአብሔር ከተማዋን ሰጥቷችኋልና!" ብሎ ጮኸ።

እያንዳንዱ ሰው በሚችለው ልክ ጮኸ - ግዙፉ የኢያሪኮ ቅጥር ጠፍጣፋ ሆኖ ወደቀ! እስራኤላውያንም በቀጥታ ገብተው ከተማዋን ያዙ።

ጦርነቱን ያሸነፈው የእስራኤል ሠራዊት አልነበረም - ታዛዥነታቸውና በእግዚአብሔር ኃይል ላይ ያላቸው እምነት ነበር።''',
      sequenceEventsEn: const [
        'God tells Joshua to march around Jericho.',
        'Israel marches around the city once a day for six days.',
        'On day seven, they march around seven times.',
        'The trumpets blow and everyone shouts.',
        'The walls fall down and Israel takes the city.',
      ],
      sequenceEventsAm: const [
        'እግዚአብሔር ኢያሱን በኢያሪኮ ዙሪያ እንዲዞር ነገረው።',
        'እስራኤል ለስድስት ቀናት በቀን አንድ ጊዜ ከተማዋን ዞሩ።',
        'በሰባተኛው ቀን ሰባት ጊዜ ዞሩ።',
        'መለከቶቹ ተነፉ ሁሉም ጮኹ።',
        'ቅጥሩ ወደቀ እስራኤልም ከተማዋን ያዙ።',
      ],
    );
  }

  static Story _gideonsArmy() {
    return Story(
      id: 'gideons_army',
      titleEn: "Gideon's Brave Army",
      titleAm: 'የጌዴዎን ደፋር ሠራዊት',
      bookEn: 'Judges',
      bookAm: 'መጽሐፈ መሳፍንት',
      character: 'Gideon',
      imagePath: 'assets/images/stories/gideons_army.png',
      order: 1,
      verseReferences: ['Judges 6:11-40', 'Judges 7:1-25'],
      summaryEn: 'God uses just 300 men to win a huge battle for Gideon.',
      summaryAm: 'እግዚአብሔር ለጌዴዎን ትልቅ ጦርነት ለማሸነፍ 300 ሰዎችን ብቻ ተጠቀመ።',
      contentEn: '''Gideon was hiding in a winepress, secretly threshing wheat so enemies wouldn't steal it. He didn't feel brave at all. But an angel appeared and said, "The Lord is with you, mighty warrior!"

Gideon could hardly believe it. "Me? My family is the weakest in our tribe!" But God said, "I will be with you, and you will save Israel."

Gideon gathered an army of 32,000 men to fight the Midianites. But God said, "That's too many! If you win, you'll think you did it yourselves. Send home anyone who is afraid."

22,000 men went home. Only 10,000 remained. God said it was still too many! After a special test at the river, God narrowed the army down to just 300 men.

With only torches, empty jars, and trumpets -- no swords in hand -- Gideon's 300 men surrounded the enemy camp at night. On Gideon's signal, they smashed their jars, held up their torches, and blew their trumpets, shouting, "A sword for the Lord and for Gideon!"

The enemy army panicked in the darkness and confusion, and fled. God had won a great victory with a tiny army, so everyone would know the strength came from Him.''',
      contentAm: '''ጌዴዎን ጠላቶች እንዳይሰርቁት ስንዴውን በምስጢር ሲወቃ በወይን መጭመቂያ ውስጥ ተደብቆ ነበር። ደፋር ሆኖ አልተሰማውም። ነገር ግን መልአክ ተገልጦ "እግዚአብሔር ከአንተ ጋር ነው፣ ኃያል ጀግና ሆይ!" አለው።

ጌዴዎን ሊያምን አልቻለም። "እኔ? ቤተሰቤ በነገዳችን ውስጥ በጣም ደካማ ነው!" አለ። ነገር ግን እግዚአብሔር "ከአንተ ጋር እሆናለሁ፣ እስራኤልንም ታድናለህ" አለው።

ጌዴዎን ከምድያማውያን ጋር ለመዋጋት 32,000 ሰዎችን ሠራዊት ሰበሰበ። ነገር ግን እግዚአብሔር "ይህ በጣም ብዙ ነው! ካሸነፋችሁ ራሳችሁ እንዳደረጋችሁት ታስባላችሁ። የፈራውን ሁሉ ወደ ቤቱ ላክ" አለ።

22,000 ሰዎች ወደ ቤታቸው ሄዱ። 10,000 ብቻ ቀሩ። እግዚአብሔር አሁንም ብዙ ነው አለ! በወንዙ ላይ ልዩ ፈተና ከተደረገ በኋላ እግዚአብሔር ሠራዊቱን ወደ 300 ሰዎች ብቻ አጠበበ።

ጌዴዎን በእጃቸው ሰይፍ ሳይኖራቸው በችቦዎች፣ ባዶ ማሰሮዎችና መለከቶች ብቻ 300 ሰዎቹን በሌሊት የጠላትን ሰፈር ከበቡ። በጌዴዎን ምልክት ማሰሮዎቻቸውን ሰብረው፣ ችቦዎቻቸውን አንስተው፣ መለከቶቻቸውን ነፍተው "ለእግዚአብሔርና ለጌዴዎን ሰይፍ!" ብለው ጮኹ።

የጠላት ሠራዊት በጨለማና በድንጋጤ ሸሸ። እግዚአብሔር ኃይሉ ከእርሱ እንደሆነ ሁሉም እንዲያውቁ በትንሽ ሠራዊት ታላቅ ድል አሸነፈ።''',
      sequenceEventsEn: const [
        'An angel calls Gideon a mighty warrior.',
        'Gideon gathers 32,000 soldiers.',
        'God trims the army down to 300 men.',
        'The 300 surround the enemy camp at night with jars and torches.',
        'The enemy panics and flees in the dark.',
      ],
      sequenceEventsAm: const [
        'መልአክ ጌዴዎንን ኃያል ጀግና ብሎ ጠራው።',
        'ጌዴዎን 32,000 ወታደሮችን ሰበሰበ።',
        'እግዚአብሔር ሠራዊቱን ወደ 300 ሰዎች አጠበበ።',
        '300ዎቹ በሌሊት ማሰሮዎችና ችቦዎች ይዘው የጠላትን ሰፈር ከበቡ።',
        'ጠላት በጨለማ ውስጥ ደንግጦ ሸሸ።',
      ],
    );
  }

  static Story _samsonStrength() {
    return Story(
      id: 'samson_strength',
      titleEn: 'Samson the Strong',
      titleAm: 'ኃያሉ ሶምሶን',
      bookEn: 'Judges',
      bookAm: 'መጽሐፈ መሳፍንት',
      character: 'Samson',
      imagePath: 'assets/images/stories/samson_strength.png',
      order: 2,
      verseReferences: ['Judges 13:1-25', 'Judges 16:4-31'],
      summaryEn: 'Samson\'s God-given strength is tied to a promise he must keep.',
      summaryAm: 'የሶምሶን ከእግዚአብሔር የተሰጠው ጥንካሬ ሊጠብቀው ከሚገባው ቃል ጋር የተያያዘ ነበር።',
      contentEn: '''Before Samson was even born, an angel told his parents he would be special -- set apart to serve God and never cut his hair.

Samson grew up with incredible strength from God. He could tear apart a roaring lion with his bare hands and defeat entire armies of enemy soldiers by himself!

But Samson made a poor choice. He fell in love with a woman named Delilah, who was paid by his enemies to discover the secret of his strength. Samson lied to her three times, but finally, worn down, he told her the truth: his strength came from his promise to God, shown through his uncut hair.

While Samson slept, Delilah had his hair cut off. His strength left him, and his enemies captured him.

But over time, in prison, Samson's hair began to grow back. At a great feast, his enemies brought him out to mock him, standing him between two huge support pillars.

Samson prayed one more time, "Lord, please give me strength, just once more." He pushed against the pillars with all his might, and the whole building collapsed, showing that God's power and forgiveness were still with him even after his mistakes.''',
      contentAm: '''ሶምሶን ከመወለዱ በፊት እንኳን መልአክ ወላጆቹን ልዩ እንደሚሆን - ለእግዚአብሔር አገልግሎት የተለየና ጸጉሩን ፈጽሞ የማይቆርጥ እንደሚሆን ነገራቸው።

ሶምሶን ከእግዚአብሔር በተሰጠው አስደናቂ ጥንካሬ አደገ። በእጆቹ የሚያገሳ አንበሳን ይቀደድ ነበር፣ ሙሉ የጠላት ሠራዊቶችንም ብቻውን ያሸንፍ ነበር!

ነገር ግን ሶምሶን መጥፎ ምርጫ አደረገ። ደሊላ በምትባል ሴት ፍቅር ወደቀ፣ እሷም በጠላቶቹ ተከፍላ የጥንካሬውን ምስጢር ለማወቅ ትሞክር ነበር። ሶምሶን ሦስት ጊዜ ዋሸላት፣ በመጨረሻ ግን ደክሞ እውነቱን ነገራት፡ ጥንካሬው ካልተቆረጠው ጸጉሩ ጋር ከተያያዘው ለእግዚአብሔር ካለው ቃል ኪዳን ነው።

ሶምሶን ተኝቶ ሳለ ደሊላ ጸጉሩን አስቆረጠችው። ጥንካሬውም ተወው፣ ጠላቶቹም ያዙት።

ነገር ግን በእስር ላይ ሳለ ጊዜ እያለፈ ሶምሶን ጸጉሩ እንደገና ማደግ ጀመረ። በታላቅ ግብዣ ጠላቶቹ ሊያፌዙበት ወደ ውጭ አወጡት፣ በሁለት ግዙፍ ደጋፊ ምሰሶዎች መካከልም አቆሙት።

ሶምሶን አንድ ጊዜ ተጨማሪ ጸለየ፣ "ጌታ ሆይ፣ እባክህ ገና አንድ ጊዜ ጥንካሬ ስጠኝ።" በኃይሉ ሁሉ ምሰሶዎቹን ገፋ፣ ሕንፃው ሁሉ ፈረሰ፣ ከስህተቱ በኋላም እንኳ የእግዚአብሔር ኃይልና ይቅርታ ከእርሱ ጋር እንደነበሩ አሳየ።''',
      sequenceEventsEn: const [
        'An angel announces Samson will be set apart for God.',
        'Samson grows up with God-given strength.',
        'Delilah discovers his hair holds the secret to his strength.',
        'Samson\'s hair is cut and his enemies capture him.',
        'His strength returns and he prays one last prayer of faith.',
      ],
      sequenceEventsAm: const [
        'መልአክ ሶምሶን ለእግዚአብሔር የተለየ እንደሚሆን አወጀ።',
        'ሶምሶን ከእግዚአብሔር በተሰጠው ጥንካሬ አደገ።',
        'ደሊላ የጥንካሬው ምስጢር ጸጉሩ እንደሆነ አወቀች።',
        'ጸጉሩ ተቆረጠ፣ ጠላቶቹም ያዙት።',
        'ጥንካሬው ተመለሰ የመጨረሻውንም የእምነት ጸሎት ጸለየ።',
      ],
    );
  }

  static Story _ruthLoyalty() {
    return Story(
      id: 'ruth_loyalty',
      titleEn: "Ruth's Faithful Love",
      titleAm: 'የሩት ታማኝ ፍቅር',
      bookEn: 'Ruth',
      bookAm: 'መጽሐፈ ሩት',
      character: 'Ruth & Naomi',
      imagePath: 'assets/images/stories/ruth_loyalty.png',
      order: 1,
      verseReferences: ['Ruth 1:1-22', 'Ruth 4:13-17'],
      summaryEn: 'Ruth chooses to stay with Naomi and is blessed by God.',
      summaryAm: 'ሩት ከናኦሚ ጋር ለመቆየት መረጠች እግዚአብሔርም ባረካት።',
      contentEn: '''Naomi had lost her husband and both her sons. Heartbroken, she decided to leave the land of Moab and return to her home in Bethlehem.

Naomi told her two daughters-in-law, "Go back to your own families. I have nothing left to give you." One daughter-in-law sadly said goodbye. But Ruth held on tight.

"Don't ask me to leave you," Ruth said. "Wherever you go, I will go. Your people will be my people, and your God will be my God." Ruth's love for Naomi was stronger than her love for her old home.

Together they traveled to Bethlehem, poor and with no husband to provide for them. Ruth worked hard, gathering leftover grain in the fields to feed them both, just like the law allowed for the poor.

A kind and wealthy man named Boaz noticed Ruth's hard work and her loyalty to Naomi. He made sure she was protected and had plenty of grain to gather.

In time, Boaz married Ruth, and they had a son. Naomi held her grandson with joy. And that little boy would one day become the grandfather of King David -- because Ruth chose faithful love.''',
      contentAm: '''ናኦሚ ባሏንና ሁለቱን ልጆቿን አጥታ ነበር። ልቧ ተሰብሮ ከሞዓብ ምድር ወጥታ ወደ ትውልድ አገሯ ወደ ቤተልሔም ለመመለስ ወሰነች።

ናኦሚ ለሁለቱ ምራቶቿ "ወደ ገዛ ቤተሰቦቻችሁ ተመለሱ። የምሰጣችሁ ምንም የለኝም" አለቻቸው። አንዷ ምራት በሐዘን ተሰናበተቻት። ሩት ግን ጠበቀቻት።

"እንድተውሽ አትጠይቂኝ" አለች ሩት። "የምትሄጂበት እኔም እሄዳለሁ። ሕዝብሽ ሕዝቤ፣ አምላክሽም አምላኬ ይሆናል።" የሩት ለናኦሚ ያላት ፍቅር ለቀድሞ ቤቷ ካላት ፍቅር የበለጠ ጠንካራ ነበር።

አብረው ወደ ቤተልሔም ተጓዙ፣ ደሃዎችም ነበሩ የሚያስተዳድራቸው ባልም አልነበራቸውም። ሩት ሁለቱንም ለመመገብ ሕጉ ለድሆች እንደፈቀደው በእርሻዎች ውስጥ የቀረውን እህል እየሰበሰበች ጠንክራ ሠራች።

ቦዔዝ የተባለ ደግና ባለጠጋ ሰው የሩትን ትጋትና ለናኦሚ ያላትን ታማኝነት አስተዋለ። እርሷ የተጠበቀችና ብዙ እህል የምትሰበስብ እንድትሆን አደረገ።

በጊዜ ሂደት ቦዔዝ ሩትን አገባ፣ ወንድ ልጅም ወለዱ። ናኦሚ የልጅ ልጇን በደስታ አቀፈች። ያ ትንሽ ልጅ ደግሞ አንድ ቀን የንጉሥ ዳዊት አያት ይሆናል - ሩት ታማኝ ፍቅርን ስለመረጠች።''',
      sequenceEventsEn: const [
        'Naomi decides to return home after losing her family.',
        'Ruth refuses to leave Naomi and promises loyalty.',
        'Ruth gathers leftover grain to feed them in Bethlehem.',
        'Boaz notices Ruth\'s hard work and kindness.',
        'Boaz marries Ruth, and their family leads to King David.',
      ],
      sequenceEventsAm: const [
        'ናኦሚ ቤተሰቧን ካጣች በኋላ ወደ አገሯ ለመመለስ ወሰነች።',
        'ሩት ናኦሚን ላለመተው እምቢ አለች ታማኝነቷንም ቃል ገባች።',
        'ሩት በቤተልሔም ውስጥ ለምግብነት የቀረውን እህል ሰበሰበች።',
        'ቦዔዝ የሩትን ትጋትና ደግነት አስተዋለ።',
        'ቦዔዝ ሩትን አገባ፣ ቤተሰባቸውም ወደ ንጉሥ ዳዊት አመራ።',
      ],
    );
  }

  static Story _samuelCalls() {
    return Story(
      id: 'samuel_calls',
      titleEn: 'Samuel Listens to God',
      titleAm: 'ሳሙኤል እግዚአብሔርን አዳመጠ',
      bookEn: '1 Samuel',
      bookAm: '1ኛ ሳሙኤል',
      character: 'Samuel',
      imagePath: 'assets/images/stories/samuel_calls.png',
      order: 1,
      verseReferences: ['1 Samuel 3:1-21'],
      summaryEn: 'Young Samuel learns to recognize God\'s voice.',
      summaryAm: 'ወጣቱ ሳሙኤል የእግዚአብሔርን ድምፅ ማወቅ ተማረ።',
      contentEn: '''Samuel was just a boy, living and serving at the temple with old Eli the priest. One night, while Samuel was sleeping, he heard a voice calling his name.

"Samuel!" He jumped up and ran to Eli. "Here I am, you called me!" But Eli said, "I didn't call you, go back to sleep." This happened again -- and again!

The third time, wise old Eli realized what was happening. "It is the Lord calling you," Eli told Samuel. "Next time, say, 'Speak, Lord, your servant is listening.'"

So when the voice called a fourth time, Samuel answered just as Eli said. God spoke to Samuel that night, sharing an important message for him to carry.

From that day on, Samuel grew up learning to listen carefully for God's voice. As he became a man, everyone in Israel came to know that Samuel was a true prophet -- because when Samuel spoke, his words always came true.

Samuel's story teaches us that God can speak to anyone who is willing to listen, even a child.''',
      contentAm: '''ሳሙኤል ገና ልጅ ነበር፣ ከአረጋዊው ካህን ኤሊ ጋር በቤተ መቅደሱ ውስጥ ይኖርና ያገለግል ነበር። አንድ ሌሊት ሳሙኤል ተኝቶ ሳለ ስሙን የሚጠራ ድምፅ ሰማ።

"ሳሙኤል!" ብድግ ብሎ ወደ ኤሊ ሮጠ። "እኔ አለሁ፣ ጠራኸኝ!" ኤሊ ግን "አልጠራሁህም፣ ተመልሰህ ተኛ" አለው። ይህ እንደገና ሆነ - እንደገናም!

ለሦስተኛ ጊዜ ጠቢቡ ኤሊ የሆነውን ተረዳ። "የሚጠራህ እግዚአብሔር ነው" አለው ኤሊ ሳሙኤልን። "በሚቀጥለው ጊዜ፣ 'ተናገር ጌታ ሆይ፣ ባሪያህ ያዳምጣል' በል።"

ድምፁም ለአራተኛ ጊዜ ሲጠራ ሳሙኤል ኤሊ እንዳለው መለሰ። እግዚአብሔርም በዚያ ሌሊት ለሳሙኤል ተናገረ፣ ሊሸከመው የሚገባ አስፈላጊ መልእክት አካፈለው።

ከዚያ ቀን ጀምሮ ሳሙኤል የእግዚአብሔርን ድምፅ በጥንቃቄ ማዳመጥ እየተማረ አደገ። ወደ ወንድነት ሲደርስ በእስራኤል ውስጥ ያለ ሁሉ ሳሙኤል እውነተኛ ነቢይ እንደሆነ ዐወቀ - ሳሙኤል ሲናገር ቃላቱ ሁልጊዜ እውነት ይሆኑ ነበርና።

የሳሙኤል ታሪክ እግዚአብሔር ለማዳመጥ ፈቃደኛ ለሆነ ማንኛውም ሰው፣ ለልጅ እንኳ መናገር እንደሚችል ያስተምረናል።''',
      sequenceEventsEn: const [
        'Samuel hears a voice calling his name at night.',
        'He runs to Eli, but Eli did not call him.',
        'This happens two more times.',
        'Eli realizes it is God and teaches Samuel how to answer.',
        'God speaks to Samuel, and he grows up to be a trusted prophet.',
      ],
      sequenceEventsAm: const [
        'ሳሙኤል በሌሊት ስሙን የሚጠራ ድምፅ ሰማ።',
        'ወደ ኤሊ ሮጠ፣ ነገር ግን ኤሊ አልጠራውም ነበር።',
        'ይህ ሁለት ጊዜ ተጨማሪ ሆነ።',
        'ኤሊ እግዚአብሔር እንደሆነ ተረድቶ እንዴት እንደሚመልስ አስተማረው።',
        'እግዚአብሔር ለሳሙኤል ተናገረ፣ ታማኝ ነቢይም ሆኖ አደገ።',
      ],
    );
  }

  static Story _davidGoliath() {
    return Story(
      id: 'david_goliath',
      titleEn: 'David and Goliath',
      titleAm: 'ዳዊትና ጎልያድ',
      bookEn: '1 Samuel',
      bookAm: '1ኛ ሳሙኤል',
      character: 'David',
      imagePath: 'assets/images/stories/david_goliath.png',
      order: 2,
      verseReferences: ['1 Samuel 17:1-58'],
      summaryEn: 'Young David defeats a giant with faith and a slingshot.',
      summaryAm: 'ወጣቱ ዳዊት በእምነትና በወንጭፍ ግዙፉን አሸነፈ።',
      contentEn: '''The Israelite army faced a terrifying enemy: Goliath, a giant Philistine soldier over nine feet tall. Every day he shouted, "Send someone to fight me!" But every Israelite soldier was too afraid.

David was just a shepherd boy, visiting his brothers at the army camp with food from home. When he heard Goliath's mocking shouts, he was shocked that no one would fight for God's honor.

"I'll fight him!" David told King Saul. Saul looked at young David doubtfully -- he was just a boy with no armor and no sword. But David said, "God saved me from a lion and a bear while guarding my sheep. He will save me from this giant too."

David refused heavy armor and instead picked up five smooth stones from a stream and his simple shepherd's sling. Goliath laughed when he saw the boy coming. "Am I a dog, that you come at me with a stick?"

David answered boldly, "You come with a sword, but I come in the name of the Lord!" He swung his sling, and the stone flew straight and true, striking Goliath right in the forehead. The giant fell down, defeated!

The whole Philistine army fled in fear, and Israel won a great victory that day -- not because David was strong, but because his faith in God was strong.''',
      contentAm: '''የእስራኤል ሠራዊት አስፈሪ ጠላት ገጠመው፡ ጎልያድ፣ ከዘጠኝ ጫማ በላይ ቁመት ያለው ግዙፍ የፍልስጤም ወታደር። በየቀኑ "ከእኔ ጋር የሚዋጋ ላኩ!" ብሎ ይጮህ ነበር። ነገር ግን እያንዳንዱ የእስራኤል ወታደር በጣም ፈርቶ ነበር።

ዳዊት ገና እረኛ ልጅ ነበር፣ ከቤት ምግብ ይዞ ወንድሞቹን በሠራዊቱ ካምፕ ውስጥ ሊጠይቅ መጣ። የጎልያድን የማላገጫ ጩኸት ሲሰማ ማንም ለእግዚአብሔር ክብር ሲል የማይዋጋ መሆኑ አስደነገጠው።

"እኔ እዋጋዋለሁ!" አለ ዳዊት ለንጉሥ ሳኦል። ሳኦል ወጣቱን ዳዊትን በጥርጣሬ ተመለከተው - ጋሻ ወይም ሰይፍ የሌለው ልጅ ብቻ ነበር። ዳዊት ግን "እግዚአብሔር በጎቼን ስጠብቅ ከአንበሳና ከድብ አዳነኝ። ከዚህ ግዙፍም ደግሞ ያድነኛል" አለ።

ዳዊት ከባድ ጋሻ ንቆ ከወንዝ አምስት ለስላሳ ድንጋዮችንና ቀላል የእረኛ ወንጭፉን ብቻ ወሰደ። ጎልያድ ልጁ ሲመጣ አየና ሳቀ። "ውሻ ነኝ በዱላ የምትመጣብኝ?"

ዳዊት በድፍረት መለሰ፣ "አንተ በሰይፍ ትመጣለህ፣ እኔ ግን በእግዚአብሔር ስም እመጣለሁ!" ወንጭፉን አዞረ፣ ድንጋዩም በቀጥታ በርሮ የጎልያድን ግንባር መታው። ግዙፉ ተሸንፎ ወደቀ!

የፍልስጤም ሠራዊት ሁሉ ፈርተው ሸሹ፣ እስራኤልም በዚያ ቀን ታላቅ ድል አሸነፈ - ዳዊት ጠንካራ ስለነበረ ሳይሆን በእግዚአብሔር ላይ ያለው እምነት ጠንካራ ስለነበረ ነው።''',
      sequenceEventsEn: const [
        'Goliath challenges Israel\'s army every day.',
        'David arrives at the camp and hears the challenge.',
        'David tells King Saul he will fight, trusting God.',
        'David picks five stones and his sling.',
        'David strikes Goliath down and Israel wins.',
      ],
      sequenceEventsAm: const [
        'ጎልያድ በየቀኑ የእስራኤልን ሠራዊት ይገዳደር ነበር።',
        'ዳዊት ወደ ካምፑ ደረሰ ፈተናውንም ሰማ።',
        'ዳዊት ንጉሥ ሳኦልን በእግዚአብሔር ታምኖ እንደሚዋጋ ነገረው።',
        'ዳዊት አምስት ድንጋዮችንና ወንጭፉን መረጠ።',
        'ዳዊት ጎልያድን መታው እስራኤልም አሸነፈ።',
      ],
    );
  }

  static Story _davidJonathan() {
    return Story(
      id: 'david_jonathan',
      titleEn: 'David and Jonathan',
      titleAm: 'ዳዊትና ዮናታን',
      bookEn: '1 Samuel',
      bookAm: '1ኛ ሳሙኤል',
      character: 'David & Jonathan',
      imagePath: 'assets/images/stories/david_jonathan.png',
      order: 3,
      verseReferences: ['1 Samuel 18:1-4', '1 Samuel 20:1-42'],
      summaryEn: 'A prince and a shepherd become the truest of friends.',
      summaryAm: 'ልዑልና እረኛ እውነተኛ ወዳጆች ሆኑ።',
      contentEn: '''After David defeated Goliath, he met Jonathan, the son of King Saul. Even though Jonathan was a prince and could have been jealous of David's fame, something wonderful happened instead -- their hearts became knit together in friendship.

Jonathan loved David like his own soul. He took off his own royal robe and gave it to David, along with his sword, bow, and belt -- treasures a prince rarely gave away.

But as time passed, King Saul grew jealous and afraid of David, and he wanted to hurt him. Jonathan faced a hard choice: his father the king, or his best friend.

Jonathan chose loyalty and truth. He warned David secretly about his father's anger, helping him escape to safety, even though it meant going against his own father's wishes.

The two friends met one last time in a field. They wept together, knowing they might not see each other for a long time. Jonathan said, "Go in peace, for we have sworn friendship to each other in the Lord's name forever."

Their friendship reminds us that true friends stand by each other, tell the truth, and love loyally -- even when it's difficult.''',
      contentAm: '''ዳዊት ጎልያድን ካሸነፈ በኋላ የንጉሥ ሳኦል ልጅ ዮናታንን አገኘ። ዮናታን ልዑል ቢሆንም በዳዊት ዝና ቀናተኛ ሊሆን ቢችልም ይልቁን ድንቅ ነገር ሆነ - ልቦቻቸው በወዳጅነት ተያያዙ።

ዮናታን ዳዊትን እንደ ራሱ ነፍስ ወደደው። የራሱን ንጉሣዊ ካባ አውልቆ ለዳዊት ሰጠው፣ ከሰይፉ፣ ከቀስቱና ከመታጠቂያውም ጋር - ልዑል ብዙ ጊዜ የማይሰጣቸው ውድ ነገሮች።

ነገር ግን ጊዜ እያለፈ ንጉሥ ሳኦል በዳዊት ላይ ቀናኢና ፈሪ ሆነ፣ ሊጎዳውም ፈለገ። ዮናታን ከባድ ምርጫ ገጠመው፡ አባቱ ንጉሡ ወይስ የቅርብ ወዳጁ።

ዮናታን ታማኝነትንና እውነትን መረጠ። የአባቱን ቁጣ በምስጢር ለዳዊት ነገረው፣ ምንም እንኳ የአባቱን ፍላጎት የሚቃረን ቢሆንም ወደ ደህንነት እንዲያመልጥ ረዳው።

ሁለቱ ወዳጆች ለመጨረሻ ጊዜ በእርሻ ውስጥ ተገናኙ። ለረጅም ጊዜ ላይተያዩ እንደሚችሉ እያወቁ አብረው አለቀሱ። ዮናታን "በሰላም ሂድ፣ በእግዚአብሔር ስም ለዘላለም የወዳጅነት ቃል ተማምለናልና" አለ።

ወዳጅነታቸው እውነተኛ ወዳጆች እርስ በርስ እንደሚቆሙ፣ እውነትን እንደሚናገሩ፣ ከባድ ቢሆንም እንኳ በታማኝነት እንደሚዋደዱ ያስታውሰናል።''',
      sequenceEventsEn: const [
        'David meets Jonathan after defeating Goliath.',
        'Jonathan gives David his robe, sword, and bow.',
        'King Saul grows jealous and wants to harm David.',
        'Jonathan warns David in secret to keep him safe.',
        'The friends say a tearful goodbye, promising loyalty forever.',
      ],
      sequenceEventsAm: const [
        'ዳዊት ጎልያድን ካሸነፈ በኋላ ዮናታንን አገኘ።',
        'ዮናታን ካባውን፣ ሰይፉንና ቀስቱን ለዳዊት ሰጠው።',
        'ንጉሥ ሳኦል ቀናተኛ ሆኖ ዳዊትን ሊጎዳ ፈለገ።',
        'ዮናታን ዳዊትን ደህንነት ለመጠበቅ በምስጢር አስጠነቀቀው።',
        'ወዳጆቹ በእንባ ተሰናበቱ፣ ለዘላለምም ታማኝነት ተማማሉ።',
      ],
    );
  }

  static Story _solomonsWisdom() {
    return Story(
      id: 'solomons_wisdom',
      titleEn: "Solomon's Wise Choice",
      titleAm: 'የሰሎሞን ጥበባዊ ምርጫ',
      bookEn: '1 Kings',
      bookAm: '1ኛ ነገሥት',
      character: 'Solomon',
      imagePath: 'assets/images/stories/solomons_wisdom.png',
      order: 1,
      verseReferences: ['1 Kings 3:5-28'],
      summaryEn: 'Solomon asks God for wisdom instead of riches.',
      summaryAm: 'ሰሎሞን ከሀብት ይልቅ ጥበብን ከእግዚአብሔር ጠየቀ።',
      contentEn: '''When Solomon became king after his father David, he felt young and unsure how to lead such a huge nation. One night, God appeared to him in a dream and said, "Ask for anything you want, and I will give it to you."

Solomon could have asked for gold, a long life, or victory over his enemies. Instead, he said, "I am young and don't know how to lead. Please give me a wise and understanding heart, so I can tell right from wrong and rule your people well."

God was very pleased with Solomon's request. "Because you didn't ask for riches or long life, but for wisdom to help others, I will give you the wisest heart anyone has ever had. And because you asked so well, I'll give you riches and honor too!"

Soon after, Solomon's wisdom was put to the test. Two women came to him, each claiming to be the mother of the same baby. Solomon thought carefully, then said, "Cut the baby in half, and give each woman a piece."

One woman agreed, but the real mother cried out, "No! Give the baby to her, just don't hurt him!" Solomon immediately knew: only the true mother would rather give up her child than see him harmed. He gave the baby to her.

Word of Solomon's wisdom spread across the whole land, and people everywhere respected him as the wisest king who ever lived.''',
      contentAm: '''ሰሎሞን ከአባቱ ዳዊት በኋላ ንጉሥ ሲሆን ወጣትና ይህችን ግዙፍ ሕዝብ እንዴት እንደሚመራ እርግጠኛ ያልነበረ ተሰማው። አንድ ሌሊት እግዚአብሔር በሕልም ተገልጦለት "የፈለግከውን ጠይቅ፣ እሰጥሃለሁ" አለው።

ሰሎሞን ወርቅ፣ ረጅም ዕድሜ ወይም በጠላቶቹ ላይ ድል ሊጠይቅ ይችል ነበር። ይልቁን "ወጣት ነኝ እንዴት እንደምመራ አላውቅም። እባክህ ትክክልንና ስህተትን የምለይበት፣ ሕዝብህንም በጥሩ ሁኔታ የምገዛበት ጥበበኛና አስተዋይ ልብ ስጠኝ" አለ።

እግዚአብሔር በሰሎሞን ጥያቄ በጣም ተደሰተ። "ሀብትን ወይም ረጅም ዕድሜን ሳይሆን ሌሎችን ለመርዳት ጥበብን ስለጠየቅህ ማንም ካላገኘው የበለጠ ጥበበኛ ልብ እሰጥሃለሁ። እንዲህ ጠይቀህ ስለሆነ ሀብትንና ክብርንም እሰጥሃለሁ!"

ብዙም ሳይቆይ የሰሎሞን ጥበብ ተፈተነ። ሁለት ሴቶች እያንዳንዳቸው የአንድ ሕፃን እናት እንደሆኑ እየተከራከሩ ወደ እርሱ መጡ። ሰሎሞን በጥንቃቄ አስቦ "ሕፃኑን ለሁለት ቁረጡት፣ ለእያንዳንዷ ሴት ግማሽ ስጡ" አለ።

አንዷ ሴት ተስማማች፣ እውነተኛዋ እናት ግን "አይ! ለእሷ ስጧት፣ ብቻ አትጉዱት!" ብላ ጮኸች። ሰሎሞን ወዲያውኑ ተረዳ፡ እውነተኛዋ እናት ብቻ ልጇ ተጎድቶ ከምታይ ልትተወው ትመርጣለች። ሕፃኑን ለእርሷ ሰጣት።

የሰሎሞን ጥበብ ዜና በምድር ሁሉ ተሰራጨ፣ በየቦታውም ያሉ ሰዎች እርሱን ከቶ እንደኖረ ጥበበኛ ንጉሥ አክብረውታል።''',
      sequenceEventsEn: const [
        'God appears to Solomon in a dream, offering anything he asks.',
        'Solomon asks for a wise and understanding heart.',
        'God grants wisdom, plus riches and honor.',
        'Two women bring a baby dispute to Solomon.',
        'Solomon\'s clever test reveals the true mother.',
      ],
      sequenceEventsAm: const [
        'እግዚአብሔር ለሰሎሞን በሕልም ተገልጦ የፈለገውን እንዲጠይቅ ነገረው።',
        'ሰሎሞን ጥበበኛና አስተዋይ ልብ ጠየቀ።',
        'እግዚአብሔር ጥበብን፣ ሀብትንና ክብርንም ሰጠው።',
        'ሁለት ሴቶች የሕፃን ክርክር ወደ ሰሎሞን አመጡ።',
        'የሰሎሞን ብልህ ፈተና እውነተኛዋን እናት ገለጠ።',
      ],
    );
  }

  static Story _elijahCarmel() {
    return Story(
      id: 'elijah_carmel',
      titleEn: 'Elijah on Mount Carmel',
      titleAm: 'ኤልያስ በቀርሜሎስ ተራራ',
      bookEn: '1 Kings',
      bookAm: '1ኛ ነገሥት',
      character: 'Elijah',
      imagePath: 'assets/images/stories/elijah_carmel.png',
      order: 2,
      verseReferences: ['1 Kings 18:16-40'],
      summaryEn: 'Elijah proves the Lord is the one true God.',
      summaryAm: 'ኤልያስ እግዚአብሔር እውነተኛው አምላክ መሆኑን አረጋገጠ።',
      contentEn: '''Many Israelites had stopped worshiping God and were bowing down to a false god named Baal instead. Elijah, a bold prophet, decided to settle the matter once and for all.

Elijah challenged 450 prophets of Baal to a contest on Mount Carmel, in front of a huge crowd. "Let's each build an altar and place a sacrifice on it," Elijah said. "Whichever god answers by sending fire is the true God!"

The prophets of Baal went first. They shouted and danced around their altar all morning, but nothing happened. Elijah even teased them, "Shout louder! Maybe your god is sleeping!" Still, no fire came.

When it was Elijah's turn, he did something surprising -- he had the people pour water over his altar three times, soaking everything completely, so no one could say it was a trick.

Then Elijah prayed a simple, humble prayer: "Lord, let it be known today that You are God in Israel, and that I am your servant." Instantly, fire fell from heaven and burned up the sacrifice, the wood, the stones, and even the water!

The people fell to the ground, shouting, "The Lord, He is God! The Lord, He is God!" That day, Elijah showed everyone that there is only one true God worth worshiping.''',
      contentAm: '''ብዙ እስራኤላውያን እግዚአብሔርን ማምለክ ትተው በምትኩ ባዓል ለሚባል ሐሰተኛ አምላክ ይሰግዱ ነበር። ደፋሩ ነቢይ ኤልያስ ጉዳዩን አንዴና ለመጨረሻ ጊዜ ለመፍታት ወሰነ።

ኤልያስ በታላቅ ሕዝብ ፊት 450 የባዓል ነቢያትን በቀርሜሎስ ተራራ ላይ ወደ ውድድር ጠራቸው። "እያንዳንዳችን መሠዊያ እንሥራ መሥዋዕትም እናቅርብበት" አለ ኤልያስ። "እሳት ልኮ የሚመልስ አምላክ እውነተኛው አምላክ ነው!"

የባዓል ነቢያት መጀመሪያ ጀመሩ። ጠዋቱን ሙሉ በመሠዊያቸው ዙሪያ ጮኹና ጨፈሩ፣ ነገር ግን ምንም ነገር አልሆነም። ኤልያስ እንኳ አላገጠባቸው፣ "ጮክ ብላችሁ ጩኹ! ምናልባት አምላካችሁ ተኝቶ ይሆናል!" አሁንም ግን እሳት አልመጣም።

የኤልያስ ተራ ሲደርስ አስገራሚ ነገር አደረገ - ማንም ተንኮል ነው እንዳይል ሕዝቡ በመሠዊያው ላይ ሦስት ጊዜ ውሃ እንዲያፈሱ አደረገ፣ ሁሉንም ነገር ሙሉ በሙሉ አራሰ።

ከዚያም ኤልያስ ቀላልና ትሑት ጸሎት ጸለየ፣ "ጌታ ሆይ፣ አንተ በእስራኤል ውስጥ አምላክ እንደሆንክ፣ እኔም ባሪያህ እንደሆንኩ ዛሬ ይታወቅ።" ወዲያውኑ እሳት ከሰማይ ወረደ መሥዋዕቱን፣ እንጨቱን፣ ድንጋዮቹንና ውሃውንም አቃጠለ!

ሕዝቡ በምድር ላይ ወድቀው "እግዚአብሔር እርሱ አምላክ ነው! እግዚአብሔር እርሱ አምላክ ነው!" ብለው ጮኹ። በዚያ ቀን ኤልያስ ለማምለክ የሚገባ አንድ እውነተኛ አምላክ ብቻ እንዳለ ለሁሉም አሳየ።''',
      sequenceEventsEn: const [
        'Elijah challenges the prophets of Baal to a contest.',
        'The prophets of Baal cry out all morning with no answer.',
        'Elijah drenches his altar with water three times.',
        'Elijah prays a simple, humble prayer.',
        'Fire falls from heaven and the people declare the Lord is God.',
      ],
      sequenceEventsAm: const [
        'ኤልያስ የባዓል ነቢያትን ወደ ውድድር ጠራ።',
        'የባዓል ነቢያት ጠዋቱን ሙሉ ጮኹ ምንም መልስ ግን አላገኙም።',
        'ኤልያስ መሠዊያውን ሦስት ጊዜ በውሃ አረሰበት።',
        'ኤልያስ ቀላልና ትሑት ጸሎት ጸለየ።',
        'እሳት ከሰማይ ወረደ ሕዝቡም እግዚአብሔር አምላክ እንደሆነ አወጁ።',
      ],
    );
  }

  static Story _queenEsther() {
    return Story(
      id: 'queen_esther',
      titleEn: 'Brave Queen Esther',
      titleAm: 'ደፋሪቱ ንግሥት አስቴር',
      bookEn: 'Esther',
      bookAm: 'መጽሐፈ አስቴር',
      character: 'Esther',
      imagePath: 'assets/images/stories/queen_esther.png',
      order: 1,
      verseReferences: ['Esther 4:1-17', 'Esther 7:1-10'],
      summaryEn: 'Esther risks her life to save her people.',
      summaryAm: 'አስቴር ሕዝቧን ለማዳን ሕይወቷን አደጋ ላይ ጣለች።',
      contentEn: '''Esther was a young Jewish woman who, through a series of surprising events, became queen of the whole Persian Empire. But she kept her Jewish identity a secret, as her cousin Mordecai had advised.

A powerful official named Haman hated the Jewish people and tricked the king into signing a terrible order: on a certain day, all Jews in the empire would be destroyed. Mordecai was heartbroken and asked Esther to help.

Esther was terrified. Anyone who approached the king without being invited could be put to death -- even the queen! But Mordecai reminded her, "Perhaps you were made queen for such a time as this."

Esther made a brave decision. "I will go to the king, even though it is against the law. And if I perish, I perish." She asked all the Jewish people to fast and pray for her for three days first.

Esther approached the king, who welcomed her and held out his golden scepter, sparing her life. She cleverly invited the king and Haman to a special banquet, and there she finally revealed the truth -- she was Jewish, and Haman's evil plan would destroy her and her people too.

The king was furious at Haman's wickedness, and the Jewish people were saved because one brave young woman was willing to risk everything for others.''',
      contentAm: '''አስቴር በተከታታይ አስገራሚ ክስተቶች የመላው የፋርስ ግዛት ንግሥት የሆነች ወጣት አይሁዳዊት ነበረች። ነገር ግን የአጎቷ ልጅ ሞርዶካይ እንደመከራት የአይሁድነቷን ማንነት በምስጢር ጠበቀች።

ሃማን የተባለ ኃያል ባለሥልጣን አይሁድን ይጠላ ነበርና ንጉሡ አስፈሪ ትዕዛዝ እንዲፈርም አታለለው፡ በተወሰነ ቀን በግዛቱ ውስጥ ያሉ አይሁድ ሁሉ ይጠፉ። ሞርዶካይ ልቡ ተሰበረ አስቴርንም እርዳታ ጠየቀ።

አስቴር ፈራች። ሳይጠራ ወደ ንጉሡ የቀረበ ማንም ሊገደል ይችላል - ንግሥቲቱ እንኳ! ሞርዶካይ ግን አስታወሳት፣ "ምናልባት ለዚህ ጊዜ ንግሥት ሆነሽ ይሆናል።"

አስቴር ደፋር ውሳኔ አደረገች። "ሕጉን ቢቃረንም ወደ ንጉሡ እሄዳለሁ። ብጠፋም እጠፋለሁ።" መጀመሪያ ሁሉም አይሁድ ለሦስት ቀናት እንዲጾሙላትና እንዲጸልዩላት ጠየቀች።

አስቴር ወደ ንጉሡ ቀረበች፣ እርሱም ተቀብሎ የወርቅ በትሩን ዘርግቶ ሕይወቷን ተወላት። በብልሃት ንጉሡንና ሃማንን ወደ ልዩ ግብዣ ጋበዘች፣ በዚያም በመጨረሻ እውነቱን ገለጠች - አይሁዳዊት እንደሆነችና የሃማን ክፉ እቅድ እርሷንና ሕዝቧንም እንደሚያጠፋ።

ንጉሡ በሃማን ክፋት ተቆጣ፣ አይሁድም ድነዋል - አንዲት ደፋር ወጣት ሴት ለሌሎች ሁሉንም ነገር ለማደጋገት ፈቃደኛ ስለነበረች።''',
      sequenceEventsEn: const [
        'Esther becomes queen, keeping her Jewish heritage secret.',
        'Haman tricks the king into a plan to destroy the Jews.',
        'Mordecai asks Esther to help her people.',
        'Esther approaches the king, risking her life.',
        'Esther exposes Haman\'s plan and saves her people.',
      ],
      sequenceEventsAm: const [
        'አስቴር ንግሥት ሆነች የአይሁድነቷንም ማንነት በምስጢር ጠበቀች።',
        'ሃማን ንጉሡን አይሁድን ለማጥፋት አታለለው።',
        'ሞርዶካይ አስቴር ሕዝቧን እንድትረዳ ጠየቃት።',
        'አስቴር ሕይወቷን አደጋ ላይ ጥላ ወደ ንጉሡ ቀረበች።',
        'አስቴር የሃማንን እቅድ ገለጠች ሕዝቧንም አዳነች።',
      ],
    );
  }

  static Story _danielLionsDen() {
    return Story(
      id: 'daniel_lions_den',
      titleEn: "Daniel in the Lions' Den",
      titleAm: 'ዳንኤል በአናብስት ጉድጓድ',
      bookEn: 'Daniel',
      bookAm: 'መጽሐፈ ዳንኤል',
      character: 'Daniel',
      imagePath: 'assets/images/stories/daniel_lions_den.png',
      order: 1,
      verseReferences: ['Daniel 6:1-28'],
      summaryEn: 'God protects faithful Daniel from hungry lions.',
      summaryAm: 'እግዚአብሔር ታማኙን ዳንኤልን ከተራቡ አናብስት ጠበቀው።',
      contentEn: '''Daniel served as a wise, trusted official in a foreign kingdom, and he was so honest and skilled that the king planned to put him in charge of everyone else. This made the other officials jealous.

Since they couldn't find anything wrong with Daniel's work, they decided to attack his faith instead. They tricked the king into signing a law: for thirty days, no one could pray to anyone except the king, or they'd be thrown into a den of lions.

Daniel found out about the law, but he didn't stop praying. Three times a day, just as he always had, he opened his window and prayed to God, unafraid of the consequences.

The jealous officials caught Daniel praying and reported him. Even though the king liked Daniel and tried to find a way to save him, the law could not be changed. Daniel was thrown into the den of lions.

The king could barely sleep that night, worried about Daniel. At dawn, he rushed to the den and called out, "Daniel, has your God been able to save you?"

"My God sent his angel to shut the lions' mouths," Daniel answered. "I have not been hurt at all!" The king was overjoyed and had Daniel lifted out, completely unharmed, and he declared that everyone in his kingdom should honor Daniel's God.''',
      contentAm: '''ዳንኤል በባዕድ መንግሥት ውስጥ እንደ ጥበበኛና ታማኝ ባለሥልጣን ያገለግል ነበር፣ በጣም ታማኝና ብቁ ስለነበረም ንጉሡ በሌሎች ላይ ኃላፊ ሊያደርገው አቅዶ ነበር። ይህ ሌሎቹን ባለሥልጣናት ቀናኢ አደረጋቸው።

በዳንኤል ሥራ ውስጥ ምንም ስህተት ማግኘት ስላልቻሉ በምትኩ እምነቱን ለማጥቃት ወሰኑ። ንጉሡን ሕግ እንዲፈርም አታለሉት፡ ለሠላሳ ቀናት ማንም ከንጉሡ በቀር ማንንም መጸለይ አይችልም፣ ካልሆነ ወደ አናብስት ጉድጓድ ይጣላል።

ዳንኤል ስለ ሕጉ ዐወቀ፣ ነገር ግን መጸለዩን አላቆመም። ልክ እንደ ልማዱ በቀን ሦስት ጊዜ መስኮቱን ከፍቶ ውጤቱን ሳይፈራ ወደ እግዚአብሔር ጸለየ።

ቀናተኞቹ ባለሥልጣናት ዳንኤልን ሲጸልይ ይዘው ሪፖርት አደረጉ። ንጉሡ ዳንኤልን ቢወደውና ሊያድነው ቢሞክርም ሕጉ ሊለወጥ አልቻለም። ዳንኤልም ወደ አናብስት ጉድጓድ ተጣለ።

ንጉሡ ስለ ዳንኤል ተጨንቆ በዚያ ሌሊት እንቅልፍ ማግኘት አልቻለም። በንጋት ወደ ጉድጓዱ ሮጦ "ዳንኤል ሆይ፣ አምላክህ ሊያድንህ ቻለ?" ብሎ ጠራ።

"አምላኬ የአናብስቱን አፍ ይዘጋ ዘንድ መልአኩን ላከ" ሲል ዳንኤል መለሰ። "ምንም አልተጎዳሁም!" ንጉሡ በጣም ደስ አለው ዳንኤልንም ፈጽሞ ሳይጎዳ አወጣው፣ በመንግሥቱ ውስጥ ያለ ሁሉ የዳንኤልን አምላክ እንዲያከብር አዋጅ አወጣ።''',
      sequenceEventsEn: const [
        'Jealous officials plot against faithful Daniel.',
        'They trick the king into a law against praying to God.',
        'Daniel keeps praying to God despite the danger.',
        'Daniel is thrown into the den of lions.',
        'God shuts the lions\' mouths and Daniel is saved unharmed.',
      ],
      sequenceEventsAm: const [
        'ቀናተኞች ባለሥልጣናት በታማኙ ዳንኤል ላይ ሤራ ጎነጎኑ።',
        'ንጉሡን ወደ እግዚአብሔር መጸለይን የሚከለክል ሕግ እንዲፈርም አታለሉት።',
        'ዳንኤል ምንም አደጋ ቢኖርም ወደ እግዚአብሔር መጸለዩን ቀጠለ።',
        'ዳንኤል ወደ አናብስት ጉድጓድ ተጣለ።',
        'እግዚአብሔር የአናብስቱን አፍ ዘጋ ዳንኤልም ሳይጎዳ ዳነ።',
      ],
    );
  }

  static Story _fieryFurnace() {
    return Story(
      id: 'fiery_furnace',
      titleEn: 'The Fiery Furnace',
      titleAm: 'የእሳት እቶን',
      bookEn: 'Daniel',
      bookAm: 'መጽሐፈ ዳንኤል',
      character: 'Shadrach, Meshach & Abednego',
      imagePath: 'assets/images/stories/fiery_furnace.png',
      order: 2,
      verseReferences: ['Daniel 3:1-30'],
      summaryEn: 'Three friends refuse to bow to an idol and are saved from fire.',
      summaryAm: 'ሦስት ወዳጆች ለጣዖት አልሰግድም ብለው ከእሳት ዳኑ።',
      contentEn: '''King Nebuchadnezzar built an enormous golden statue and commanded everyone in his kingdom to bow down and worship it whenever the music played. Anyone who refused would be thrown into a blazing furnace.

Shadrach, Meshach, and Abednego were three friends who worshiped only the one true God. When the music played and everyone else bowed down, the three friends stood tall, refusing to worship the statue.

Furious, the king gave them one more chance. "Bow down, or I'll throw you into the fire! What god can save you from my hands?"

The three friends answered boldly, "Our God can save us from the fire. But even if He doesn't, we still won't bow down to your statue." Their faith wasn't based on being rescued -- it was simply about being faithful.

The king was so angry he had the furnace heated seven times hotter than usual, and the friends were tied up and thrown in. The fire was so hot it killed the soldiers who threw them in!

But when the king looked into the furnace, he was amazed. "Didn't we throw in three men? I see four walking around in the fire, unharmed -- and the fourth looks like a son of the gods!" The three friends walked out of the furnace without even the smell of smoke on them, and the king praised their God before the whole kingdom.''',
      contentAm: '''ንጉሥ ናቡከደነፆር ግዙፍ የወርቅ ምስል ሠራና ሙዚቃው በተጫወተ ቁጥር በመንግሥቱ ውስጥ ያለ ሁሉ ሰግዶ እንዲያመልከው አዘዘ። እምቢ የሚል ማንኛውም ሰው ወደሚነደው እቶን ይጣላል።

ሲድራቅ፣ ሚሳቅና አብደናጎ አንዱን እውነተኛ አምላክ ብቻ የሚያመልኩ ሦስት ወዳጆች ነበሩ። ሙዚቃው ሲጫወት ሌሎቹ ሁሉ ሲሰግዱ ሦስቱ ወዳጆች ቀጥ ብለው ቆሙ፣ ለምስሉ ከመስገድ ተቆጠቡ።

ንጉሡ ተቆጥቶ ሌላ አንድ ዕድል ሰጣቸው። "ስገዱ፣ ካልሆነ ወደ እሳት እጥላችኋለሁ! ከእጄ ሊያድናችሁ የሚችል አምላክ ማን ነው?"

ሦስቱ ወዳጆች በድፍረት መለሱ፣ "አምላካችን ከእሳት ሊያድነን ይችላል። ግን ባያድነንም እንኳ ለምስልህ አንሰግድም።" እምነታቸው በመዳን ላይ የተመሠረተ አልነበረም - ታማኝ በመሆን ላይ ብቻ ነበር።

ንጉሡ በጣም ስለተቆጣ እቶኑ ከወትሮው ሰባት እጥፍ እንዲያቃጥል አደረገ፣ ወዳጆቹም ታስረው ተጣሉ። እሳቱ በጣም ስለሞቀ የጣሏቸውን ወታደሮች ገደለ!

ንጉሡ ግን ወደ እቶኑ ውስጥ ሲመለከት ተገረመ። "ሦስት ሰዎች አልጣልንም ነበር? አራት ሰዎች በእሳቱ ውስጥ ሳይጎዱ ሲራመዱ አያለሁ - አራተኛውም እንደ አማልክት ልጅ ይመስላል!" ሦስቱ ወዳጆች ከእቶኑ የጭስ ሽታ እንኳ ሳይኖርባቸው ወጡ፣ ንጉሡም በመላው መንግሥት ፊት አምላካቸውን አመሰገነ።''',
      sequenceEventsEn: const [
        'The king builds a golden statue and demands worship.',
        'Shadrach, Meshach, and Abednego refuse to bow.',
        'The furious king threatens them with the furnace.',
        'The three friends declare their faith regardless of outcome.',
        'They walk out of the fire completely unharmed.',
      ],
      sequenceEventsAm: const [
        'ንጉሡ የወርቅ ምስል ሠራ አምልኮንም አዘዘ።',
        'ሲድራቅ፣ ሚሳቅና አብደናጎ ለመስገድ እምቢ አሉ።',
        'የተቆጣው ንጉሥ በእቶኑ አስፈራራቸው።',
        'ሦስቱ ወዳጆች ውጤቱ ምንም ይሁን እምነታቸውን አወጁ።',
        'ከእሳቱ ውስጥ ፈጽሞ ሳይጎዱ ወጡ።',
      ],
    );
  }

  static Story _jonahBigFish() {
    return Story(
      id: 'jonah_big_fish',
      titleEn: 'Jonah and the Big Fish',
      titleAm: 'ዮናስና ታላቁ ዓሣ',
      bookEn: 'Jonah',
      bookAm: 'መጽሐፈ ዮናስ',
      character: 'Jonah',
      imagePath: 'assets/images/stories/jonah_big_fish.png',
      order: 1,
      verseReferences: ['Jonah 1:1-17', 'Jonah 2:1-10', 'Jonah 3:1-10'],
      summaryEn: 'Jonah runs from God but learns obedience inside a great fish.',
      summaryAm: 'ዮናስ ከእግዚአብሔር ሸሸ ነገር ግን በታላቁ ዓሣ ውስጥ ታዛዥነትን ተማረ።',
      contentEn: '''God told Jonah, "Go to the city of Nineveh and warn the people to turn from their wickedness." But Jonah didn't want to go -- he didn't think the people of Nineveh deserved a second chance. So instead, he ran the opposite way and got on a ship heading far away.

While Jonah was sailing away, God sent a fierce storm that threatened to sink the ship. The frightened sailors realized Jonah was running from God, and reluctantly, at Jonah's own suggestion, they threw him into the raging sea. Instantly, the storm calmed down.

Jonah sank into the deep water, but God had prepared a great fish to swallow him up. Jonah spent three days and three nights inside the fish, and there, in the dark and quiet, he finally prayed to God with a humble heart, thanking Him and promising to obey.

God spoke to the fish, and it spit Jonah out safely onto dry land. God gave Jonah the same instruction again: "Go to Nineveh." This time, Jonah obeyed.

Jonah walked through the huge city, warning the people that God's judgment was coming unless they changed their ways. To Jonah's surprise, the entire city -- from the king to the poorest citizen -- turned from their wicked ways and asked God for mercy.

God saw their hearts had changed and did not destroy the city. Even though Jonah struggled to understand God's mercy for people he didn't like, the story shows that God's love and second chances are for everyone.''',
      contentAm: '''እግዚአብሔር ዮናስን "ወደ ነነዌ ከተማ ሂድ ሕዝቡም ከክፋታቸው እንዲመለሱ አስጠንቅቅ" አለው። ዮናስ ግን መሄድ አልፈለገም - የነነዌ ሕዝብ ሁለተኛ ዕድል ይገባቸዋል ብሎ አላሰበም። ስለዚህ በምትኩ ወደ ተቃራኒው ሸሸ ወደ ሩቅ አገር በሚሄድ መርከብም ተሳፈረ።

ዮናስ እየተጓዘ ሳለ እግዚአብሔር መርከቧን ሊያሰጥም ያስፈራራ ኃይለኛ ማዕበል ላከ። የፈሩት መርከበኞች ዮናስ ከእግዚአብሔር እንደሚሸሽ ተረዱ፣ ራሱ ዮናስ ራሱ በጠቆመው ምክር ባይፈልጉትም ወደ አውሎ ነፋሱ ባሕር ጣሉት። ወዲያውኑ ማዕበሉ ጸጥ አለ።

ዮናስ ወደ ጥልቁ ውሃ ሰጠመ፣ ነገር ግን እግዚአብሔር ሊውጠው ታላቅ ዓሣ አዘጋጅቶ ነበር። ዮናስ ለሦስት ቀናትና ለሦስት ሌሊቶች በዓሣው ውስጥ ቆየ፣ በዚያም በጨለማና በጸጥታ ውስጥ በመጨረሻ በትሑት ልብ ወደ እግዚአብሔር ጸለየ፣ አመሰገነውም ለመታዘዝም ቃል ገባ።

እግዚአብሔር ለዓሣው ተናገረ፣ እርሱም ዮናስን በደረቅ መሬት ላይ በደህና ተፋው። እግዚአብሔር ለዮናስ ተመሳሳዩን መመሪያ እንደገና ሰጠው፡ "ወደ ነነዌ ሂድ።" በዚህ ጊዜ ዮናስ ታዘዘ።

ዮናስ በታላቂቱ ከተማ ውስጥ እየተዘዋወረ መንገዳቸውን ካልቀየሩ በቀር የእግዚአብሔር ፍርድ እንደሚመጣ ሕዝቡን አስጠነቀቀ። ዮናስን ባስደነገጠ ሁኔታ መላው ከተማ - ከንጉሡ እስከ ደሃው ዜጋ - ከክፉ መንገዳቸው ተመልሰው ከእግዚአብሔር ምሕረትን ጠየቁ።

እግዚአብሔር ልባቸው እንደተለወጠ አይቶ ከተማዋን አላጠፋም። ዮናስ ላልወደዳቸው ሰዎች የእግዚአብሔርን ምሕረት ለመረዳት ቢቸገርም ታሪኩ የእግዚአብሔር ፍቅርና ሁለተኛ ዕድል ለሁሉም እንደሆነ ያሳያል።''',
      sequenceEventsEn: const [
        'God tells Jonah to warn Nineveh, but Jonah runs away by ship.',
        'A great storm hits, and the sailors throw Jonah into the sea.',
        'A great fish swallows Jonah for three days.',
        'Jonah prays and God has the fish release him.',
        'Jonah preaches in Nineveh, and the whole city repents.',
      ],
      sequenceEventsAm: const [
        'እግዚአብሔር ዮናስን ነነዌን እንዲያስጠነቅቅ ነገረው፣ ዮናስ ግን በመርከብ ሸሸ።',
        'ታላቅ ማዕበል መጣ፣ መርከበኞቹም ዮናስን ወደ ባሕር ጣሉት።',
        'ታላቅ ዓሣ ለሦስት ቀናት ዮናስን ዋጠው።',
        'ዮናስ ጸለየ እግዚአብሔርም ዓሣው እንዲተወው አደረገ።',
        'ዮናስ በነነዌ ሰበከ መላው ከተማም ንስሓ ገባ።',
      ],
    );
  }
}
