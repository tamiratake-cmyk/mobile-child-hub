// Phase 2 content: the Gospels (Matthew, Mark, Luke, John).
// Kept in a separate file from story_data.dart purely for maintainability --
// StoryData.getAllStories() merges this list in.

import '../models/story.dart';

class StoryDataNt {
  static List<Story> getAll() {
    return [
      _birthOfJesus(),
      _wiseMenVisit(),
      _jesusBaptized(),
      _jesusCallsDisciples(),
      _feedingFiveThousand(),
      _jesusCalmsStorm(),
      _goodSamaritan(),
      _prodigalSon(),
      _jesusWalksWater(),
      _lazarusLives(),
      _palmSunday(),
      _lastSupper(),
      _resurrection(),
    ];
  }

  static Story _birthOfJesus() {
    return Story(
      id: 'birth_of_jesus',
      titleEn: 'The Birth of Jesus',
      titleAm: 'የኢየሱስ ልደት',
      bookEn: 'Matthew',
      bookAm: 'የማቴዎስ ወንጌል',
      character: 'Jesus',
      imagePath: 'assets/images/stories/birth_of_jesus.png',
      order: 1,
      verseReferences: ['Luke 2:1-20', 'Matthew 1:18-25'],
      summaryEn: 'God\'s promised Savior is born in a humble manger.',
      summaryAm: 'እግዚአብሔር የተስፋው መድኃኒት በትሑት በረት ውስጥ ተወለደ።',
      contentEn: '''An angel visited a young woman named Mary with astonishing news: "You will have a special baby. His name will be Jesus, and He will be the Son of God!" Mary was amazed but trusted God completely.

Mary and her husband Joseph had to travel to Bethlehem for a government census. The journey was long and Mary was very close to having her baby.

When they finally arrived in Bethlehem, every inn was full. The only place they could find to stay was a humble stable where animals were kept. That night, in that simple place, baby Jesus was born, and Mary wrapped him snugly and laid him in a manger -- a feeding trough for animals.

Out in the fields nearby, shepherds were watching their sheep at night when suddenly the sky filled with light. An angel appeared, saying, "Don't be afraid! I bring good news of great joy. Today a Savior has been born in Bethlehem!"

Suddenly, a whole choir of angels appeared, praising God and singing, "Glory to God in the highest, and peace on earth!" The shepherds hurried to Bethlehem and found everything just as the angel had said.

The shepherds told everyone what they had seen, and all who heard were amazed. This humble birth in a stable was the beginning of the greatest story ever told -- God coming to live among His people.''',
      contentAm: '''መልአክ ማርያም ለምትባል ወጣት ሴት አስደናቂ ዜና ይዞ ተገለጠ፡ "ልዩ ልጅ ትወልጃለሽ። ስሙም ኢየሱስ ይባላል፣ የእግዚአብሔርም ልጅ ይሆናል!" ማርያም ተገረመች ነገር ግን እግዚአብሔርን ሙሉ በሙሉ አመነች።

ማርያምና ባሏ ዮሴፍ ለመንግሥት ቆጠራ ወደ ቤተልሔም መጓዝ ነበረባቸው። ጉዞው ረጅም ነበር ማርያምም ልጅ ለመውለድ በጣም ቀርባ ነበር።

በመጨረሻ ቤተልሔም ሲደርሱ እያንዳንዱ ማደሪያ ተሞልቶ ነበር። ማደር የቻሉት ብቸኛ ቦታ እንስሳት የሚቀመጡበት ትሑት በረት ብቻ ነበር። በዚያ ሌሊት በዚያ ቀላል ቦታ ሕፃኑ ኢየሱስ ተወለደ፣ ማርያምም በጨርቅ ጠቅልላ በበረት ውስጥ - የእንስሳት መመገቢያ - አስተኛችው።

በአቅራቢያ ባሉ እርሻዎች ውስጥ እረኞች በሌሊት በጎቻቸውን ሲጠብቁ ድንገት ሰማዩ በብርሃን ተሞላ። መልአክ ተገልጦ "አትፍሩ! ታላቅ ደስታ የሆነ የምስራች ይዤ መጣሁ። ዛሬ በቤተልሔም መድኃኒት ተወልዷል!" አለ።

ወዲያውኑ ሙሉ የመላእክት ቡድን ተገልጦ እግዚአብሔርን እያመሰገኑ "ክብር ለእግዚአብሔር በአርያም፣ ሰላምም በምድር ላይ!" ብለው ዘመሩ። እረኞቹ ወደ ቤተልሔም ተጣደፉ መልአኩም እንዳለው ሁሉንም ነገር አገኙ።

እረኞቹ ያዩትን ለሁሉም ነገሩ የሰሙትም ሁሉ ተገረሙ። በበረት ውስጥ የነበረው ይህ ትሑት ልደት ከቶ ከተነገሩት ታሪኮች ሁሉ ታላቁ ታሪክ መጀመሪያ ነበር - እግዚአብሔር ከሕዝቡ ጋር ለመኖር መምጣት።''',
      sequenceEventsEn: const [
        'An angel tells Mary she will have a special baby.',
        'Mary and Joseph travel to Bethlehem.',
        'Jesus is born and laid in a manger.',
        'An angel announces the good news to shepherds.',
        'The shepherds visit baby Jesus and spread the news.',
      ],
      sequenceEventsAm: const [
        'መልአክ ማርያም ልዩ ልጅ እንደምትወልድ ነገራት።',
        'ማርያምና ዮሴፍ ወደ ቤተልሔም ተጓዙ።',
        'ኢየሱስ ተወለደ በበረትም ተኛ።',
        'መልአክ ለእረኞች የምስራች አወጀ።',
        'እረኞች ሕፃኑን ኢየሱስን ጎበኙ ዜናውንም አሰራጩ።',
      ],
    );
  }

  static Story _wiseMenVisit() {
    return Story(
      id: 'wise_men_visit',
      titleEn: 'The Wise Men Visit Jesus',
      titleAm: 'ጠቢባኑ ኢየሱስን ጎበኙ',
      bookEn: 'Matthew',
      bookAm: 'የማቴዎስ ወንጌል',
      character: 'The Wise Men',
      imagePath: 'assets/images/stories/wise_men_visit.png',
      order: 2,
      verseReferences: ['Matthew 2:1-12'],
      summaryEn: 'Wise men follow a star to bring Jesus royal gifts.',
      summaryAm: 'ጠቢባን ኮከብ ተከትለው ለኢየሱስ ንጉሣዊ ስጦታዎችን አመጡ።',
      contentEn: '''Far away in the East, wise men who studied the stars noticed something amazing -- a bright new star appearing in the sky. They understood it meant a new king had been born, and they set out on a long journey to find him.

The wise men traveled for many months, following the star, carrying with them precious gifts fit for a king: gold, frankincense, and myrrh.

They stopped first in Jerusalem, thinking a king would surely be born in the capital city. But King Herod, hearing about a new "king of the Jews," became worried and jealous. He asked his advisors where the Messiah was supposed to be born, and they told him: Bethlehem.

Herod secretly asked the wise men to report back to him once they found the child, pretending he wanted to worship him too -- but really, he wanted to harm the baby.

The star led the wise men onward until it stopped right over the place where Jesus was. Filled with joy, they entered the house, bowed down, and worshiped the young child, presenting their precious gifts to Him.

That night, God warned the wise men in a dream not to return to Herod, so they went home a different way, keeping baby Jesus safe.''',
      contentAm: '''በምሥራቅ ሩቅ አገር ኮከቦችን የሚያጠኑ ጠቢባን አስደናቂ ነገር አስተዋሉ - አዲስ ብሩህ ኮከብ በሰማይ ላይ ተገለጠ። አዲስ ንጉሥ እንደተወለደ ተረዱ ፍለጋውንም ወደ ረጅም ጉዞ ተነሱ።

ጠቢባኑ ኮከቡን እየተከተሉ ለብዙ ወራት ተጓዙ፣ ለንጉሥ የሚገቡ ውድ ስጦታዎችንም ይዘው ነበር፡ ወርቅ፣ ዕጣንና ከርቤ።

መጀመሪያ በኢየሩሳሌም ቆሙ፣ ንጉሥ በርግጥ በዋና ከተማዋ ይወለዳል ብለው አስበው ነበር። ንጉሥ ሄሮድስ ግን ስለ አዲሱ "የአይሁድ ንጉሥ" ሲሰማ ተጨነቀና ቀናተኛ ሆነ። አማካሪዎቹን መሲሑ የት ይወለዳል ብሎ ጠየቀ፣ እነርሱም ቤተልሔም አሉት።

ሄሮድስ በምስጢር ጠቢባኑ ልጁን ካገኙ በኋላ እርሱን ለማምለክ እንደሚፈልግ በማስመሰል ወደ እርሱ እንዲመለሱ ጠየቃቸው - በእውነቱ ግን ሕፃኑን ሊጎዳ ፈልጎ ነበር።

ኮከቡ ኢየሱስ ወዳለበት ቦታ ልክ ላይ እስኪቆም ጠቢባኑን ወደ ፊት መራ። በደስታ ተሞልተው ወደ ቤቱ ገብተው ሰግደው ወጣቱን ልጅ አመለኩ፣ ውድ ስጦታዎቻቸውንም አቀረቡለት።

በዚያ ሌሊት እግዚአብሔር ጠቢባኑን በሕልም ወደ ሄሮድስ እንዳይመለሱ አስጠነቀቃቸው፣ ስለዚህ በሌላ መንገድ ወደ አገራቸው ተመለሱ፣ ሕፃኑን ኢየሱስንም በደህንነት ጠበቁ።''',
      sequenceEventsEn: const [
        'Wise men in the East see a new star and set out.',
        'They stop in Jerusalem and ask King Herod about the new king.',
        'Herod secretly asks them to report back to him.',
        'The star leads them to Jesus, and they worship him with gifts.',
        'God warns them in a dream to go home a different way.',
      ],
      sequenceEventsAm: const [
        'በምሥራቅ ያሉ ጠቢባን አዲስ ኮከብ አይተው ተነሱ።',
        'በኢየሩሳሌም ቆመው ንጉሥ ሄሮድስን ስለ አዲሱ ንጉሥ ጠየቁ።',
        'ሄሮድስ በምስጢር ወደ እርሱ እንዲመለሱ ጠየቃቸው።',
        'ኮከቡ ወደ ኢየሱስ መራቸው በስጦታም አመለኩት።',
        'እግዚአብሔር በሕልም በሌላ መንገድ ወደ አገራቸው እንዲመለሱ አስጠነቀቃቸው።',
      ],
    );
  }

  static Story _jesusBaptized() {
    return Story(
      id: 'jesus_baptized',
      titleEn: 'Jesus is Baptized',
      titleAm: 'ኢየሱስ ተጠመቀ',
      bookEn: 'Matthew',
      bookAm: 'የማቴዎስ ወንጌል',
      character: 'Jesus & John the Baptist',
      imagePath: 'assets/images/stories/jesus_baptized.png',
      order: 3,
      verseReferences: ['Matthew 3:13-17'],
      summaryEn: 'God the Father speaks from heaven as Jesus begins His ministry.',
      summaryAm: 'ኢየሱስ አገልግሎቱን ሲጀምር እግዚአብሔር አብ ከሰማይ ተናገረ።',
      contentEn: '''John the Baptist was a prophet who lived in the wilderness, calling people to turn from their sins and be baptized in the Jordan River as a sign of a new, clean start.

One day, Jesus came to John, asking to be baptized too. John was surprised and tried to stop him. "I need to be baptized by you, and yet you come to me?"

But Jesus explained that this was part of God's plan, to fulfill all righteousness. So John agreed, and Jesus went down into the water.

As Jesus came up out of the water, something amazing happened -- the heavens opened, and the Spirit of God descended like a gentle dove and rested on Him.

Then a voice from heaven spoke clearly for everyone to hear: "This is my beloved Son, in whom I am well pleased."

This moment marked the beginning of Jesus' public ministry, and it showed everyone present that Jesus truly was God's own Son, sent to save the world.''',
      contentAm: '''መጥምቁ ዮሐንስ በምድረ በዳ ይኖር የነበረ ነቢይ ነበር፣ ሕዝቡ ከኃጢአታቸው እንዲመለሱና እንደ አዲስና ንጹሕ ጅምር ምልክት በዮርዳኖስ ወንዝ እንዲጠመቁ ይጠራ ነበር።

አንድ ቀን ኢየሱስ ወደ ዮሐንስ መጥቶ እርሱም እንዲጠመቅ ጠየቀ። ዮሐንስ ተገረመ ሊከለክለውም ሞከረ። "እኔ ልጠመቅ ከአንተ ያስፈልገኛል፣ አንተ ግን ወደ እኔ ትመጣለህ?"

ኢየሱስ ግን ይህ ጽድቅን ሁሉ ለመፈጸም የእግዚአብሔር እቅድ ክፍል እንደሆነ አብራራ። ስለዚህ ዮሐንስ ተስማማ፣ ኢየሱስም ወደ ውሃው ወረደ።

ኢየሱስ ከውሃው ሲወጣ አስደናቂ ነገር ሆነ - ሰማያት ተከፈቱ፣ የእግዚአብሔር መንፈስም እንደ ርግብ ወርዶ በእርሱ ላይ አረፈ።

ከዚያም ከሰማይ ድምፅ ሁሉም እንዲሰማ በግልጽ ተናገረ፡ "ይህ የምወደው ልጄ ነው፣ በእርሱም ደስ ብሎኛል።"

ይህ ቅጽበት የኢየሱስን የአደባባይ አገልግሎት መጀመሪያ ያመላከተ ነበር፣ በዚያ ለነበሩትም ኢየሱስ በእውነት ዓለምን ለማዳን የተላከው የእግዚአብሔር ልጅ መሆኑን አሳየ።''',
      sequenceEventsEn: const [
        'John the Baptist calls people to repent and be baptized.',
        'Jesus comes to John and asks to be baptized.',
        'John hesitates, but Jesus explains it fulfills God\'s plan.',
        'The Spirit of God descends like a dove on Jesus.',
        'A voice from heaven declares Jesus as God\'s beloved Son.',
      ],
      sequenceEventsAm: const [
        'መጥምቁ ዮሐንስ ሕዝቡ ንስሓ ገብተው እንዲጠመቁ ይጠራ ነበር።',
        'ኢየሱስ ወደ ዮሐንስ መጥቶ እንዲጠመቅ ጠየቀ።',
        'ዮሐንስ ተጠራጠረ፣ ኢየሱስ ግን የእግዚአብሔር እቅድ እንደሆነ አብራራ።',
        'የእግዚአብሔር መንፈስ እንደ ርግብ በኢየሱስ ላይ ወረደ።',
        'ከሰማይ ድምፅ ኢየሱስን የእግዚአብሔር የተወደደ ልጅ ብሎ አወጀ።',
      ],
    );
  }

  static Story _jesusCallsDisciples() {
    return Story(
      id: 'jesus_calls_disciples',
      titleEn: 'Jesus Calls His Disciples',
      titleAm: 'ኢየሱስ ደቀ መዛሙርቱን ጠራ',
      bookEn: 'Mark',
      bookAm: 'የማርቆስ ወንጌል',
      character: 'Jesus & Disciples',
      imagePath: 'assets/images/stories/jesus_calls_disciples.png',
      order: 1,
      verseReferences: ['Mark 1:16-20', 'Luke 5:1-11'],
      summaryEn: 'Fishermen drop their nets to follow Jesus.',
      summaryAm: 'ዓሣ አጥማጆች መረባቸውን ትተው ኢየሱስን ተከተሉ።',
      contentEn: '''Simon Peter and his brother Andrew were fishermen, casting their nets into the Sea of Galilee as they did every day. They had worked hard all night but caught nothing at all.

Jesus came walking along the shore and saw them washing their empty nets. He asked to use Simon's boat to teach the crowd gathered on the beach, and Simon agreed.

After Jesus finished speaking, He told Simon, "Go out into deep water and let down your nets for a catch." Simon was tired and doubtful -- they had already tried all night! But he said, "Because you say so, I will."

The moment they lowered the nets, they caught so many fish that the nets began to break! They called for their partners, James and John, to help, and both boats were filled so full they nearly sank.

Simon Peter fell to his knees, amazed. Jesus said gently, "Don't be afraid. From now on, you will fish for people."

Simon Peter, Andrew, James, and John pulled their boats onto the shore, left everything behind -- their nets, their boats, their livelihood -- and followed Jesus, becoming his very first disciples.''',
      contentAm: '''ስምዖን ጴጥሮስና ወንድሙ እንድርያስ ዓሣ አጥማጆች ነበሩ፣ በየቀኑ እንደሚያደርጉት መረባቸውን በገሊላ ባሕር ላይ ይጥሉ ነበር። ሌሊቱን ሙሉ ጠንክረው ሠርተው ነበር ነገር ግን ምንም አላገኙም።

ኢየሱስ በባሕሩ ዳር እየተራመደ መጥቶ ባዶ መረባቸውን ሲያጥቡ አየ። በባሕሩ ዳር የተሰበሰበውን ሕዝብ ለማስተማር የስምዖንን ጀልባ እንዲጠቀም ጠየቀ፣ ስምዖንም ተስማማ።

ኢየሱስ ንግግሩን ከጨረሰ በኋላ ስምዖንን "ወደ ጥልቅ ውሃ ውጣና ለማጥመድ መረብህን ጣል" አለው። ስምዖን ደክሞና ተጠራጥሮ ነበር - ሌሊቱን ሙሉ ቀድሞውኑ ሞክረው ነበርና! ነገር ግን "አንተ ስላልክ አደርገዋለሁ" አለ።

መረቡን ባወረዱበት ቅጽበት እጅግ ብዙ ዓሣ ያዙ መረቡም መቀደድ ጀመረ! ጓደኞቻቸውን ያዕቆብንና ዮሐንስን ለእርዳታ ጠሩ፣ ሁለቱም ጀልባዎች በጣም ተሞልተው ሊሰጥሙ ተቃርበው ነበር።

ስምዖን ጴጥሮስ ተገርሞ ተንበረከከ። ኢየሱስ በርኅራኄ "አትፍራ። ከአሁን ጀምሮ ሰዎችን ታጠምዳለህ" አለው።

ስምዖን ጴጥሮስ፣ እንድርያስ፣ ያዕቆብና ዮሐንስ ጀልባዎቻቸውን ወደ ባሕር ዳር ጎትተው ሁሉንም ነገር ትተው - መረባቸውን፣ ጀልባዎቻቸውን፣ ኑሯቸውን - ኢየሱስን ተከተሉ፣ የመጀመሪያዎቹ ደቀ መዛሙርቱም ሆኑ።''',
      sequenceEventsEn: const [
        'Peter and Andrew fish all night and catch nothing.',
        'Jesus teaches the crowd from Simon\'s boat.',
        'Jesus tells Simon to cast his nets in deep water.',
        'They catch so many fish the nets nearly break.',
        'The fishermen leave everything to follow Jesus.',
      ],
      sequenceEventsAm: const [
        'ጴጥሮስና እንድርያስ ሌሊቱን ሙሉ አጠመዱ ምንም ግን አላገኙም።',
        'ኢየሱስ ከስምዖን ጀልባ ሆኖ ሕዝቡን አስተማረ።',
        'ኢየሱስ ስምዖን በጥልቅ ውሃ መረቡን እንዲጥል ነገረው።',
        'መረቡ ሊቀደድ የሚያክል ብዙ ዓሣ ያዙ።',
        'ዓሣ አጥማጆቹ ሁሉንም ትተው ኢየሱስን ተከተሉ።',
      ],
    );
  }

  static Story _feedingFiveThousand() {
    return Story(
      id: 'feeding_five_thousand',
      titleEn: 'Feeding the Five Thousand',
      titleAm: 'አምስት ሺህ ሰዎችን መመገብ',
      bookEn: 'John',
      bookAm: 'የዮሐንስ ወንጌል',
      character: 'Jesus',
      imagePath: 'assets/images/stories/feeding_five_thousand.png',
      order: 1,
      verseReferences: ['John 6:1-14'],
      summaryEn: 'Jesus multiplies a boy\'s lunch to feed a huge crowd.',
      summaryAm: 'ኢየሱስ የአንድ ልጅ ምሳ አበዛ ታላቅ ሕዝብንም መገበ።',
      contentEn: '''A huge crowd of more than five thousand people had followed Jesus into the countryside to hear him teach and to be healed. As evening approached, everyone grew hungry, but they were far from any town or market.

Jesus asked his disciple Philip, "Where can we buy enough bread to feed all these people?" Philip was overwhelmed. "Even a whole year's wages wouldn't buy enough bread for everyone to have just a bite!"

Then Andrew spoke up. "There's a boy here with five small loaves of bread and two fish. But what good is that for so many people?"

Jesus told the disciples to have everyone sit down on the grass in groups. Then he took the boy's small lunch, looked up to heaven, gave thanks to God, and began breaking the bread and fish into pieces.

The disciples passed the food out to the crowd, and to everyone's amazement, it never ran out! Every single person ate until they were full -- and afterward, the disciples gathered twelve full baskets of leftovers.

The people were astonished at this incredible miracle, realizing that with Jesus, even the smallest gift, when given to Him, can become more than enough.''',
      contentAm: '''ከአምስት ሺህ በላይ የሆነ ታላቅ ሕዝብ ኢየሱስን ትምህርቱን ለመስማትና ለመፈወስ ወደ ገጠር ተከተለው። ማታ ሲቃረብ ሁሉም ተራበ፣ ነገር ግን ከከተማ ወይም ከገበያ ርቀው ነበር።

ኢየሱስ ደቀ መዝሙሩን ፊልጶስን "ይህን ሁሉ ሕዝብ ለመመገብ የሚበቃ እንጀራ ከየት እንገዛለን?" ብሎ ጠየቀ። ፊልጶስ ተደናገጠ። "የአንድ ዓመት ደሞዝ እንኳ ለሁሉም ሰው አንድ ንክሻ የሚበቃ እንጀራ አይገዛም!"

ከዚያም እንድርያስ ተናገረ። "እዚህ አምስት ትንሽ እንጀራና ሁለት ዓሣ ያለው ልጅ አለ። ነገር ግን ለብዙ ሰዎች ምን ይረባል?"

ኢየሱስ ደቀ መዛሙርቱን ሁሉም በሣር ላይ በቡድን እንዲቀመጡ አዘዘ። ከዚያም የልጁን ትንሽ ምሳ ወስዶ ወደ ሰማይ ተመልክቶ ለእግዚአብሔር አመሰገነ እንጀራውንና ዓሣውንም መቁረስ ጀመረ።

ደቀ መዛሙርቱ ምግቡን ለሕዝቡ አከፋፈሉ፣ ሁሉንም ባስገረመ ሁኔታ ከቶ አላለቀም! እያንዳንዱ ሰው እስኪጠግብ በላ - ከዚያም ደቀ መዛሙርቱ አሥራ ሁለት ሙሉ ቅርጫቶች የተረፈ ምግብ ሰበሰቡ።

ሕዝቡ በዚህ አስደናቂ ተአምር ተገረሙ፣ ከኢየሱስ ጋር ትንሹ ስጦታ እንኳ ለእርሱ ሲሰጥ ከበቂ በላይ ሊሆን እንደሚችል ተረዱ።''',
      sequenceEventsEn: const [
        'A huge, hungry crowd follows Jesus into the countryside.',
        'The disciples worry there isn\'t enough food to buy.',
        'A boy offers five loaves and two fish.',
        'Jesus gives thanks and breaks the bread and fish.',
        'Everyone eats until full, with twelve baskets left over.',
      ],
      sequenceEventsAm: const [
        'ታላቅ የተራበ ሕዝብ ኢየሱስን ወደ ገጠር ተከተለው።',
        'ደቀ መዛሙርቱ የሚገዙት ምግብ በቂ እንዳልሆነ ተጨነቁ።',
        'አንድ ልጅ አምስት እንጀራና ሁለት ዓሣ አቀረበ።',
        'ኢየሱስ አመሰገነ እንጀራውንና ዓሣውንም ቆረሰ።',
        'ሁሉም እስኪጠግቡ በሉ አሥራ ሁለት ቅርጫት ተረፍም ቀረ።',
      ],
    );
  }

  static Story _jesusCalmsStorm() {
    return Story(
      id: 'jesus_calms_storm',
      titleEn: 'Jesus Calms the Storm',
      titleAm: 'ኢየሱስ ማዕበሉን አረጋጋ',
      bookEn: 'Mark',
      bookAm: 'የማርቆስ ወንጌል',
      character: 'Jesus',
      imagePath: 'assets/images/stories/jesus_calms_storm.png',
      order: 2,
      verseReferences: ['Mark 4:35-41'],
      summaryEn: 'Jesus commands the wind and waves to be still.',
      summaryAm: 'ኢየሱስ ነፋሱንና ማዕበሉን ጸጥ በል አለ።',
      contentEn: '''After a long day of teaching, Jesus and his disciples got into a boat to cross the Sea of Galilee. Jesus was so tired that he fell asleep on a cushion in the back of the boat.

Suddenly, a fierce storm blew in. Waves crashed over the sides of the boat, and it began filling with water. The disciples, several of them experienced fishermen, were terrified -- this storm was worse than anything they had seen.

They rushed to wake Jesus. "Teacher, don't you care that we're going to drown?" they shouted over the howling wind.

Jesus stood up calmly, and spoke directly to the storm: "Peace! Be still!" Instantly, the wind stopped blowing and the sea became perfectly calm and smooth.

Jesus turned to his disciples and asked, "Why were you so afraid? Do you still have no faith?" The disciples were amazed and a little afraid in a different way now.

"Who is this," they whispered to each other, "that even the wind and the waves obey him?" They were beginning to understand that Jesus wasn't just a great teacher -- he had power over all of creation.''',
      contentAm: '''ረጅም ቀን ካስተማረ በኋላ ኢየሱስና ደቀ መዛሙርቱ የገሊላን ባሕር ለመሻገር ወደ ጀልባ ገቡ። ኢየሱስ በጣም ደክሞት ስለነበር በጀልባው ጀርባ ላይ ባለ ትራስ ላይ ተኛ።

ድንገት ኃይለኛ ማዕበል መጣ። ማዕበሉ በጀልባው ጎኖች ላይ ተገጨ፣ በውሃም መሞላት ጀመረ። ደቀ መዛሙርቱ፣ ብዙዎቹ ልምድ ያላቸው ዓሣ አጥማጆች ነበሩ፣ ፈሩ - ይህ ማዕበል ካዩት ሁሉ የከፋ ነበር።

ኢየሱስን ለማንቃት ተጣደፉ። "መምህር ሆይ፣ ልንሰጥም መሆናችን ግድ አይሰጥህም?" እያሉ በሚያንባርቀው ንፋስ ላይ ጮኹ።

ኢየሱስ በርጋታ ተነሳ፣ በቀጥታ ለማዕበሉ ተናገረ፡ "ጸጥ በል! ጸጥ!" ወዲያውኑ ንፋሱ መንፈሱን አቆመ ባሕሩም ፍጹም ጸጥና ለስላሳ ሆነ።

ኢየሱስ ወደ ደቀ መዛሙርቱ ዞሮ "ለምን ይህን ያህል ፈራችሁ? እስካሁን እምነት የላችሁም?" ብሎ ጠየቀ። ደቀ መዛሙርቱ ተገረሙ አሁን ደግሞ በተለየ መልኩ ትንሽ ፈሩ።

"ንፋሱና ማዕበሉ እንኳ የሚታዘዙለት ይህ ማን ነው?" ብለው እርስ በርስ ተንሾካሾኩ። ኢየሱስ ትልቅ መምህር ብቻ እንዳልሆነ በፍጥረት ሁሉ ላይ ሥልጣን እንዳለው መረዳት ጀመሩ።''',
      sequenceEventsEn: const [
        'Jesus falls asleep in the boat after a long day.',
        'A fierce storm rocks the boat with waves.',
        'The frightened disciples wake Jesus up.',
        'Jesus commands the storm to be still.',
        'The disciples marvel that even the wind obeys him.',
      ],
      sequenceEventsAm: const [
        'ኢየሱስ ረጅም ቀን በኋላ በጀልባው ውስጥ ተኛ።',
        'ኃይለኛ ማዕበል ጀልባውን በማዕበል አናወጠ።',
        'የፈሩት ደቀ መዛሙርት ኢየሱስን አነቁት።',
        'ኢየሱስ ማዕበሉ ጸጥ እንዲል አዘዘ።',
        'ደቀ መዛሙርቱ ንፋሱ እንኳ እንደሚታዘዘው ተገረሙ።',
      ],
    );
  }

  static Story _goodSamaritan() {
    return Story(
      id: 'good_samaritan',
      titleEn: 'The Good Samaritan',
      titleAm: 'ደጉ ሳምራዊ',
      bookEn: 'Luke',
      bookAm: 'የሉቃስ ወንጌል',
      character: 'The Good Samaritan',
      imagePath: 'assets/images/stories/good_samaritan.png',
      order: 1,
      verseReferences: ['Luke 10:25-37'],
      summaryEn: 'Jesus teaches that a true neighbor shows mercy to anyone in need.',
      summaryAm: 'ኢየሱስ እውነተኛ ጎረቤት ለተቸገረ ሁሉ ምሕረት እንደሚያሳይ አስተማረ።',
      contentEn: '''A man once asked Jesus, "Who is my neighbor?" To answer, Jesus told this story:

A traveler was walking along a dangerous, lonely road when robbers attacked him. They beat him badly, stole everything he had, and left him lying by the roadside, badly hurt.

Soon, a priest came walking down the same road. He saw the injured man lying there -- but he crossed to the other side and hurried past, not wanting to get involved.

Next, a Levite, a temple worker, came along. He too saw the man suffering, but he also walked past on the other side, choosing not to help.

Then a Samaritan came traveling down the road. Samaritans and Jews usually didn't get along, but when this man saw the injured traveler, his heart was filled with compassion.

The Samaritan knelt down, cleaned and bandaged the man's wounds, and gently lifted him onto his own donkey. He took him to an inn and cared for him through the night. The next day, he paid the innkeeper to continue caring for the injured man until he was well.

Jesus then asked, "Which of these three was a true neighbor to the injured man?" The answer was clear: the one who showed mercy. Jesus said, "Go and do the same."''',
      contentAm: '''አንድ ሰው ኢየሱስን "ጎረቤቴ ማን ነው?" ብሎ ጠየቀው። ኢየሱስ ለመመለስ ይህን ታሪክ ተናገረ፡

አንድ መንገደኛ በአደገኛና በብቸኝነት መንገድ ላይ ሲራመድ ወንበዴዎች ጠቁት። አሠቃዩትና ያለውን ሁሉ ወሰዱበት፣ በጣም ተጎድቶ በመንገድ ዳር ትተውት ሄዱ።

ብዙም ሳይቆይ አንድ ካህን በዚያው መንገድ ላይ መጣ። የተጎዳውን ሰው ተኝቶ አየው - ነገር ግን ወደ ሌላኛው ጎን ተሻግሮ ላለመግባት ተጣደፈ።

ቀጥሎ አንድ ሌዋዊ፣ የቤተ መቅደስ ሠራተኛ መጣ። እርሱም ሰውየው ሲሠቃይ ተመልክቷል፣ ነገር ግን ላለመርዳት መርጦ ወደ ሌላኛው ጎን ተሻገረ።

ከዚያም አንድ ሳምራዊ በመንገዱ ላይ ተጓዘ። ሳምራውያንና አይሁድ ብዙ ጊዜ አይግባቡም ነበር፣ ነገር ግን ይህ ሰው የተጎዳውን መንገደኛ ሲያይ ልቡ በርኅራኄ ተሞላ።

ሳምራዊው ተንበርክኮ የሰውየውን ቁስሎች አጠበ ጠገነም፣ በርኅራኄም በራሱ አህያ ላይ አነሳው። ወደ ማደሪያ ወስዶ ሌሊቱን ሙሉ ተንከባከበው። በማግስቱ የተጎዳውን ሰው እስኪያገግም ድረስ እንዲንከባከበው ለማደሪያው ባለቤት ከፈለ።

ኢየሱስም "ከእነዚህ ሦስት ለተጎዳው ሰው እውነተኛ ጎረቤት የነበረው ማን ነው?" ብሎ ጠየቀ። መልሱ ግልጽ ነበር፡ ምሕረት ያሳየው። ኢየሱስም "ሂድና እንዲሁ አድርግ" አለ።''',
      sequenceEventsEn: const [
        'A traveler is beaten and robbed on a dangerous road.',
        'A priest sees him but walks past.',
        'A Levite also passes by without helping.',
        'A Samaritan stops and cares for his wounds.',
        'The Samaritan pays for the man\'s care at an inn.',
      ],
      sequenceEventsAm: const [
        'መንገደኛ በአደገኛ መንገድ ላይ ተመታ ተዘረፈም።',
        'አንድ ካህን አየው ግን አልፎ ሄደ።',
        'አንድ ሌዋዊም ሳይረዳ አለፈ።',
        'ሳምራዊው ቆሞ ቁስሎቹን ተንከባከበ።',
        'ሳምራዊው በማደሪያ ቤት ውስጥ ለእንክብካቤው ከፈለ።',
      ],
    );
  }

  static Story _prodigalSon() {
    return Story(
      id: 'prodigal_son',
      titleEn: 'The Prodigal Son',
      titleAm: 'አባካኙ ልጅ',
      bookEn: 'Luke',
      bookAm: 'የሉቃስ ወንጌል',
      character: 'The Prodigal Son',
      imagePath: 'assets/images/stories/prodigal_son.png',
      order: 2,
      verseReferences: ['Luke 15:11-32'],
      summaryEn: 'A father\'s love welcomes his lost son back home.',
      summaryAm: 'የአባት ፍቅር የጠፋውን ልጁን ወደ ቤት ተመልሶ ተቀበለው።',
      contentEn: '''Jesus told a story about a father with two sons. The younger son said, "Father, give me my share of the inheritance now." This was hurtful and unusual, but the loving father agreed and divided his property between his two sons.

Soon after, the younger son packed up everything and traveled to a faraway country, where he spent all his money on wild, careless living, wasting everything he had.

When his money ran out, a terrible famine struck the land. The young man became so poor and hungry that he took a job feeding pigs, and he was so desperate he even wanted to eat the pigs' food.

Sitting there in his misery, he finally came to his senses. "My father's servants have plenty to eat, and here I am starving. I will go home and tell him I'm sorry. I'll ask to be treated as just a servant."

While the son was still far down the road, his father saw him coming. Filled with love and compassion, the father ran to meet him, threw his arms around him, and kissed him before the son could even finish his apology.

"Quick!" the father called to his servants. "Bring the best robe, put a ring on his finger, and prepare a great feast! My son was lost, and now he is found!" The father's joy shows us how much God celebrates when anyone returns to Him.''',
      contentAm: '''ኢየሱስ ስለ ሁለት ልጆች ስላለው አባት ታሪክ ተናገረ። ታናሹ ልጅ "አባቴ ሆይ፣ የውርስ ድርሻዬን አሁን ስጠኝ" አለ። ይህ አሳዛኝና ያልተለመደ ነበር፣ ነገር ግን ወዳጅ የሆነው አባት ተስማምቶ ንብረቱን በሁለቱ ልጆቹ መካከል ከፋፈለ።

ብዙም ሳይቆይ ታናሹ ልጅ ሁሉንም ነገር ጠቅልሎ ወደ ሩቅ አገር ተጓዘ፣ በዚያም ገንዘቡን ሁሉ በዱር ኑሮ አባከነው።

ገንዘቡ ሲያልቅ አስፈሪ ረሃብ በምድሪቱ ላይ ወደቀ። ወጣቱ ሰው በጣም ደሃና ተራበ አሳማዎችን የመመገብ ሥራ ወሰደም፣ በጣም ተስፋ ስለቆረጠ የአሳማዎችን ምግብ እንኳ ሊበላ ፈለገ።

በመከራው ውስጥ ተቀምጦ በመጨረሻ ወደ ልቡ ተመለሰ። "የአባቴ አገልጋዮች የሚበሉት በዝቶላቸዋል፣ እኔ ግን እዚህ እርባለሁ። ወደ ቤት ተመልሼ ይቅርታ እንደምጠይቀው እነግረዋለሁ። እንደ ተራ አገልጋይ እንዲይዘኝ እጠይቃለሁ።"

ልጁ ገና በመንገድ ላይ ሩቅ ሳለ አባቱ ሲመጣ አየው። በፍቅርና በርኅራኄ ተሞልቶ አባቱ ሊገናኘው ሮጠ፣ ልጁ ይቅርታውን ከመጨረሱ በፊት እቅፍ አድርጎ ሳመው።

"ፍጠኑ!" አባቱ ለአገልጋዮቹ ጠራ። "የተሻለውን ልብስ አምጡ፣ ቀለበት በጣቱ ላይ አድርጉ፣ ታላቅ ግብዣ አዘጋጁ! ልጄ ጠፍቶ ነበር፣ አሁን ግን ተገኝቷል!" የአባቱ ደስታ ማንም ወደ እርሱ ሲመለስ እግዚአብሔር ምን ያህል እንደሚያከብር ያሳየናል።''',
      sequenceEventsEn: const [
        'The younger son asks for his inheritance early.',
        'He wastes it all in a faraway country.',
        'A famine leaves him poor and feeding pigs.',
        'He decides to return home and ask forgiveness.',
        'His father runs to welcome him with joy and a feast.',
      ],
      sequenceEventsAm: const [
        'ታናሹ ልጅ ውርሱን ቀድሞ ጠየቀ።',
        'በሩቅ አገር ውስጥ ሁሉንም አባከነው።',
        'ረሃብ ደሃ አደረገው አሳማዎችንም እንዲመግብ ግድ አለው።',
        'ወደ ቤት ተመልሶ ይቅርታ ለመጠየቅ ወሰነ።',
        'አባቱ በደስታና በግብዣ ሊቀበለው ሮጠ።',
      ],
    );
  }

  static Story _jesusWalksWater() {
    return Story(
      id: 'jesus_walks_water',
      titleEn: 'Jesus Walks on Water',
      titleAm: 'ኢየሱስ በውሃ ላይ ተራመደ',
      bookEn: 'Matthew',
      bookAm: 'የማቴዎስ ወንጌል',
      character: 'Jesus & Peter',
      imagePath: 'assets/images/stories/jesus_walks_water.png',
      order: 4,
      verseReferences: ['Matthew 14:22-33'],
      summaryEn: 'Jesus walks on the sea and helps Peter trust him.',
      summaryAm: 'ኢየሱስ በባሕር ላይ ተራመደ ጴጥሮስንም እንዲያምነው ረዳው።',
      contentEn: '''After a long day feeding the crowd, Jesus sent his disciples ahead by boat while he went up a mountainside alone to pray. As night fell, a strong wind rose, and the disciples' boat was tossed around by the waves, far from shore.

In the early morning, the disciples saw something that terrified them -- a figure walking toward them, right on top of the water! "It's a ghost!" they cried out in fear.

But it was Jesus. "Take courage!" he called out. "It is I. Don't be afraid."

Peter, always bold, called back, "Lord, if it's really you, tell me to come to you on the water." Jesus simply said, "Come."

Peter climbed out of the boat and, amazingly, began walking on the water too! But when he noticed the strong wind and the waves around him, he grew afraid and started to sink. "Lord, save me!" he cried out.

Jesus immediately reached out his hand and caught him. "You of little faith," Jesus said gently, "why did you doubt?" As soon as they climbed into the boat together, the wind died down completely. The disciples worshiped Jesus, saying, "Truly you are the Son of God!"''',
      contentAm: '''ሕዝቡን ከመገበ ረጅም ቀን በኋላ ኢየሱስ ደቀ መዛሙርቱን በጀልባ ወደ ፊት ላካቸው ራሱም ብቻውን ለመጸለይ ወደ ተራራ ወጣ። ሌሊት ሲወርድ ኃይለኛ ንፋስ ተነሳ፣ የደቀ መዛሙርቱ ጀልባም ከባሕር ዳር ራቅ ብላ በማዕበል ተነቃነቀች።

በማለዳ ደቀ መዛሙርቱ ያስፈራቸውን ነገር አዩ - አንድ ሰው በውሃው ላይ ልክ ሆኖ ወደ እነርሱ ሲራመድ! "መንፈስ ነው!" ብለው በፍርሃት ጮኹ።

ነገር ግን እርሱ ኢየሱስ ነበር። "አይዟችሁ!" ብሎ ጮኸ። "እኔ ነኝ። አትፍሩ።"

ሁልጊዜ ደፋሩ ጴጥሮስ "ጌታ ሆይ፣ በእውነት አንተ ከሆንክ በውሃው ላይ ወደ አንተ እንድመጣ ንገረኝ" ብሎ መለሰ። ኢየሱስ በቀላሉ "ና" አለ።

ጴጥሮስ ከጀልባው ወርዶ አስደናቂ በሆነ ሁኔታ በውሃው ላይ መራመድ ጀመረ! ነገር ግን ኃይለኛውን ንፋስና በዙሪያው ያለውን ማዕበል ሲያስተውል ፈራ መስጠምም ጀመረ። "ጌታ ሆይ፣ አድነኝ!" ብሎ ጮኸ።

ኢየሱስ ወዲያውኑ እጁን ዘርግቶ ያዘው። "እምነት የጎደለህ ሆይ" ኢየሱስ በርኅራኄ አለ፣ "ለምን ተጠራጠርክ?" ሁለቱም ወደ ጀልባዋ ሲወጡ ንፋሱ ሙሉ በሙሉ ጸጥ አለ። ደቀ መዛሙርቱም ኢየሱስን አመለኩ "በእውነት አንተ የእግዚአብሔር ልጅ ነህ!" ብለው።''',
      sequenceEventsEn: const [
        'Jesus sends the disciples ahead and goes up to pray alone.',
        'A storm tosses the disciples\' boat at night.',
        'Jesus walks toward them on the water.',
        'Peter steps out and walks too, then begins to sink.',
        'Jesus catches Peter, and the wind dies down.',
      ],
      sequenceEventsAm: const [
        'ኢየሱስ ደቀ መዛሙርቱን ቀድሞ ላከ ራሱም ብቻውን ለመጸለይ ወጣ።',
        'ማዕበል ደቀ መዛሙርቱን ጀልባ በሌሊት አናወጠ።',
        'ኢየሱስ በውሃው ላይ ወደ እነርሱ ተራመደ።',
        'ጴጥሮስ ወርዶ ተራመደ ከዚያም መስጠም ጀመረ።',
        'ኢየሱስ ጴጥሮስን ያዘው ንፋሱም ጸጥ አለ።',
      ],
    );
  }

  static Story _lazarusLives() {
    return Story(
      id: 'lazarus_lives',
      titleEn: 'Lazarus Lives Again',
      titleAm: 'አልዓዛር እንደገና ኖረ',
      bookEn: 'John',
      bookAm: 'የዮሐንስ ወንጌል',
      character: 'Jesus & Lazarus',
      imagePath: 'assets/images/stories/lazarus_lives.png',
      order: 2,
      verseReferences: ['John 11:1-44'],
      summaryEn: 'Jesus raises his friend Lazarus from the dead.',
      summaryAm: 'ኢየሱስ ወዳጁን አልዓዛርን ከሙታን አስነሳው።',
      contentEn: '''Lazarus, a dear friend of Jesus, became very sick. His sisters, Mary and Martha, sent an urgent message to Jesus: "Lord, the one you love is sick."

Surprisingly, Jesus waited two more days before traveling to see them. By the time Jesus arrived, Lazarus had already died and been in the tomb for four days.

Martha ran out to meet Jesus, heartbroken. "Lord, if you had been here, my brother would not have died." Jesus told her, "Your brother will rise again. I am the resurrection and the life. Whoever believes in me will live, even after dying."

When Jesus saw Mary and the others weeping, he was deeply moved, and he wept too, sharing in their grief even though he knew what he was about to do.

Jesus went to the tomb, a cave with a large stone covering the entrance. "Take away the stone," he said. Martha hesitated -- it had been four days, after all. But they rolled the stone away.

Jesus prayed aloud, thanking God, then called out in a loud voice, "Lazarus, come out!" And to everyone's amazement, Lazarus walked out of the tomb, still wrapped in burial cloths, completely alive!

Many people who witnessed this incredible miracle believed in Jesus, seeing clearly that he had power even over death.''',
      contentAm: '''አልዓዛር፣ የኢየሱስ ውድ ወዳጅ በጣም ታመመ። እኅቶቹ ማርያምና ማርታ ለኢየሱስ አጣዳፊ መልእክት ላኩ፡ "ጌታ ሆይ፣ የምትወደው ታሟል።"

ባስገረመ ሁኔታ ኢየሱስ ሊጎበኛቸው ከመሄዱ በፊት ሁለት ተጨማሪ ቀናት ጠበቀ። ኢየሱስ ሲደርስ አልዓዛር ቀድሞውኑ ሞቶ ለአራት ቀናት በመቃብር ውስጥ ነበር።

ማርታ ልቧ ተሰብሮ ኢየሱስን ልትገናኝ ሮጠች። "ጌታ ሆይ፣ አንተ እዚህ ብትሆን ኖሮ ወንድሜ ባልሞተ ነበር።" ኢየሱስ "ወንድምሽ እንደገና ይነሳል። ትንሣኤና ሕይወት እኔ ነኝ። በእኔ የሚያምን ከሞተ በኋላ እንኳ በሕይወት ይኖራል" አላት።

ኢየሱስ ማርያምንና ሌሎችንም ሲያለቅሱ ባየ ጊዜ በጣም ተነካ፣ ሊያደርገው ስላለው ነገር ቢያውቅም እንኳ ከሐዘናቸው ጋር ተጋርቶ እርሱም አለቀሰ።

ኢየሱስ ወደ መቃብሩ ሄደ፣ በር ላይ ትልቅ ድንጋይ ያለው ዋሻ ነበር። "ድንጋዩን አንሱት" አለ። ማርታ ተጠራጠረች - ከሁሉም በላይ አራት ቀናት ሆኖ ነበርና። ነገር ግን ድንጋዩን አንከባለሉት።

ኢየሱስ ጮክ ብሎ ጸለየ፣ እግዚአብሔርንም አመሰገነ፣ ከዚያም በጮኸ ድምፅ "አልዓዛር ሆይ፣ ውጣ!" ብሎ ጠራ። ሁሉንም ባስገረመ ሁኔታ አልዓዛር ገና በመግነዝ ተጠቅልሎ ከመቃብሩ ወጣ፣ ፈጽሞ ሕያው ሆኖ!

ይህን አስደናቂ ተአምር የተመለከቱ ብዙ ሰዎች በኢየሱስ አመኑ፣ በሞት ላይ እንኳ ሥልጣን እንዳለው በግልጽ አይተዋልና።''',
      sequenceEventsEn: const [
        'Lazarus becomes sick and his sisters send for Jesus.',
        'Jesus arrives four days after Lazarus has died.',
        'Martha tells Jesus she believes he could have healed him.',
        'Jesus weeps with the family at the tomb.',
        'Jesus calls Lazarus, and he walks out alive.',
      ],
      sequenceEventsAm: const [
        'አልዓዛር ታመመ እኅቶቹም ኢየሱስን ጠሩ።',
        'ኢየሱስ አልዓዛር ከሞተ ከአራት ቀናት በኋላ ደረሰ።',
        'ማርታ ኢየሱስ ሊፈውሰው እንደሚችል ታምን እንደነበር ነገረችው።',
        'ኢየሱስ ከቤተሰቡ ጋር በመቃብሩ ላይ አለቀሰ።',
        'ኢየሱስ አልዓዛርን ጠራው እርሱም ሕያው ሆኖ ወጣ።',
      ],
    );
  }

  static Story _palmSunday() {
    return Story(
      id: 'palm_sunday',
      titleEn: 'Palm Sunday: Jesus Enters Jerusalem',
      titleAm: 'ኢየሱስ ወደ ኢየሩሳሌም ገባ',
      bookEn: 'Matthew',
      bookAm: 'የማቴዎስ ወንጌል',
      character: 'Jesus',
      imagePath: 'assets/images/stories/palm_sunday.png',
      order: 5,
      verseReferences: ['Matthew 21:1-11'],
      summaryEn: 'Crowds welcome Jesus into Jerusalem with joyful praise.',
      summaryAm: 'ሕዝቡ ኢየሱስን ወደ ኢየሩሳሌም በደስታ ምስጋና ተቀበለው።',
      contentEn: '''As Jesus and his disciples approached Jerusalem, he sent two disciples ahead with an unusual instruction: "Go into the village, and you will find a young donkey tied there. Untie it and bring it to me."

This wasn't random -- it fulfilled an old prophecy that said Israel's king would come humbly, riding on a donkey, rather than on a mighty warhorse.

As Jesus rode into Jerusalem on the young donkey, something wonderful began to happen. Large crowds of people, who had heard about his miracles, rushed out to greet him.

Many people spread their cloaks on the road in front of him, like rolling out a royal carpet. Others cut palm branches from the trees and waved them joyfully, laying them down on the path too.

The crowds shouted with joy, "Hosanna to the Son of David! Blessed is he who comes in the name of the Lord! Hosanna in the highest!" The whole city buzzed with excitement, wondering, "Who is this?"

Jesus was welcomed like a king that day, though he knew what lay ahead in the days to come. This joyful celebration, now called Palm Sunday, reminds us that Jesus came not with weapons and armies, but with humility, peace, and love.''',
      contentAm: '''ኢየሱስና ደቀ መዛሙርቱ ወደ ኢየሩሳሌም ሲቃረቡ ሁለት ደቀ መዛሙርት ያልተለመደ መመሪያ ይዘው ቀድሞ ላከ፡ "ወደ መንደሩ ግቡ፣ የታሰረች ወጣት አህያ ታገኛላችሁ። ፈቱዋትና ወደ እኔ አምጡልኝ።"

ይህ በዘፈቀደ አልነበረም - የእስራኤል ንጉሥ በኃያል የጦር ፈረስ ላይ ሳይሆን በአህያ ላይ በትሕትና እንደሚመጣ የተናገረውን የቀድሞ ትንቢት የፈጸመ ነበር።

ኢየሱስ በወጣቷ አህያ ላይ ተቀምጦ ወደ ኢየሩሳሌም ሲገባ ድንቅ ነገር መከሰት ጀመረ። ስለ ተአምራቱ የሰሙ ብዙ ሕዝብ ሊቀበሉት ተጣደፉ።

ብዙዎቹ እንደ ንጉሣዊ ምንጣፍ በፊቱ ላይ ልብሶቻቸውን በመንገዱ ላይ ዘረጉ። ሌሎችም ከዛፎች የዘንባባ ቅርንጫፎችን ቆርጠው በደስታ እያውለበለቡ በመንገዱ ላይ አኖሩ።

ሕዝቡ በደስታ "ሆሣዕና ለዳዊት ልጅ! በእግዚአብሔር ስም የሚመጣ የተባረከ ነው! ሆሣዕና በአርያም!" ብለው ጮኹ። መላው ከተማ "ይህ ማን ነው?" ብላ በጉጉት ተናወጠች።

ኢየሱስ ወደፊት የሚመጣውን ቢያውቅም እንኳ በዚያ ቀን እንደ ንጉሥ ተቀብለውታል። ይህ ዛሬ የዘንባባ እሑድ የሚባለው ደስተኛ በዓል ኢየሱስ በጦር መሣሪያና በሠራዊት ሳይሆን በትሕትና፣ በሰላምና በፍቅር እንደመጣ ያስታውሰናል።''',
      sequenceEventsEn: const [
        'Jesus sends disciples to bring a young donkey.',
        'Jesus rides the donkey toward Jerusalem, fulfilling prophecy.',
        'Crowds spread cloaks and palm branches on the road.',
        'The people shout "Hosanna!" in celebration.',
        'The whole city buzzes, asking, "Who is this?"',
      ],
      sequenceEventsAm: const [
        'ኢየሱስ ደቀ መዛሙርትን ወጣት አህያ እንዲያመጡ ላከ።',
        'ኢየሱስ በአህያ ላይ ተቀምጦ ወደ ኢየሩሳሌም ገባ ትንቢቱንም ፈጸመ።',
        'ሕዝቡ ልብሶችንና የዘንባባ ቅርንጫፎችን በመንገዱ ላይ ዘረጉ።',
        'ሕዝቡ "ሆሣዕና!" ብለው በደስታ ጮኹ።',
        'መላው ከተማ "ይህ ማን ነው?" ብላ ተናወጠች።',
      ],
    );
  }

  static Story _lastSupper() {
    return Story(
      id: 'last_supper',
      titleEn: 'The Last Supper',
      titleAm: 'የመጨረሻው እራት',
      bookEn: 'Luke',
      bookAm: 'የሉቃስ ወንጌል',
      character: 'Jesus & Disciples',
      imagePath: 'assets/images/stories/last_supper.png',
      order: 3,
      verseReferences: ['Luke 22:7-20'],
      summaryEn: 'Jesus shares a final, meaningful meal with his disciples.',
      summaryAm: 'ኢየሱስ ከደቀ መዛሙርቱ ጋር የመጨረሻውን ትርጉም ያለው እራት ተካፈለ።',
      contentEn: '''During the Passover feast, Jesus gathered with his twelve disciples for a special meal in an upstairs room, a meal that would carry a meaning far beyond anyone realized at the time.

Before they ate, Jesus surprised everyone by taking off his outer robe, wrapping a towel around his waist, and washing each disciple's dusty feet -- a humble task usually done by the lowest servant. "I have given you an example," Jesus said. "Love and serve one another as I have served you."

During the meal, Jesus took a loaf of bread, thanked God for it, broke it into pieces, and gave it to his disciples. "This is my body, given for you," he said. "Do this in remembrance of me."

Then he took a cup of wine, gave thanks, and passed it around. "This cup is the new covenant in my blood, poured out for you."

Jesus also told them something troubling: one of them at the table would betray him that very night. The disciples were shocked and saddened, each wondering who it could possibly be.

This meal, now remembered by Christians around the world as Communion or the Lord's Supper, showed the disciples how deeply Jesus loved them and how he was preparing to give his life for the whole world.''',
      contentAm: '''በፋሲካ በዓል ወቅት ኢየሱስ ከአሥራ ሁለቱ ደቀ መዛሙርቱ ጋር በላይኛው ክፍል ውስጥ ለልዩ እራት ተሰበሰበ፣ በዚያን ጊዜ ማንም ካልተረዳው በላይ ትርጉም የያዘ እራት ነበር።

ከመብላታቸው በፊት ኢየሱስ የውጭ ካባውን አውልቆ ፎጣ በወገቡ ላይ አስሮ የእያንዳንዱን ደቀ መዝሙር በአቧራ የተሸፈነ እግር በማጠብ ሁሉንም አስገረመ - ብዙ ጊዜ በዝቅተኛው አገልጋይ የሚፈጸም ትሑት ተግባር። "ምሳሌ ሰጥቻችኋለሁ" አለ ኢየሱስ። "እኔ እንዳገለገልኳችሁ እርስ በርሳችሁ ተዋደዱና ተገልገሉ።"

በእራቱ ወቅት ኢየሱስ አንድ እንጀራ ወስዶ ለእግዚአብሔር አመሰገነ፣ ቆራርሶም ለደቀ መዛሙርቱ ሰጣቸው። "ይህ ስለ እናንተ የሚሰጥ ሥጋዬ ነው" አለ። "ይህን ለመታሰቢያዬ አድርጉት።"

ከዚያም የወይን ጽዋ ወስዶ አመሰገነ በዙሪያውም አቀበላቸው። "ይህ ጽዋ ስለ እናንተ የሚፈስ በደሜ የሚሆነው አዲስ ኪዳን ነው።"

ኢየሱስ የሚያስጨንቅ ነገርም ነገራቸው፡ ከጠረጴዛው ላይ ካሉት አንዱ በዚያች ሌሊት አሳልፎ ይሰጠዋል። ደቀ መዛሙርቱ ደነገጡ አዘኑም፣ እያንዳንዳቸውም ማን ሊሆን እንደሚችል አሰቡ።

ይህ እራት፣ አሁን በዓለም ዙሪያ ባሉ ክርስቲያኖች ቁርባን ወይም የጌታ እራት ተብሎ የሚታወሰው፣ ኢየሱስ ደቀ መዛሙርቱን ምን ያህል ጥልቅ አድርጎ እንደሚወዳቸውና ሕይወቱን ለመላው ዓለም ለመስጠት እንዴት እንደተዘጋጀ አሳያቸው።''',
      sequenceEventsEn: const [
        'Jesus gathers his disciples for the Passover meal.',
        'Jesus washes the disciples\' feet as an act of humble love.',
        'Jesus shares bread, calling it his body.',
        'Jesus shares the cup, calling it the new covenant.',
        'Jesus tells them one of them will betray him.',
      ],
      sequenceEventsAm: const [
        'ኢየሱስ ደቀ መዛሙርቱን ለፋሲካ እራት ሰበሰበ።',
        'ኢየሱስ በትሑት ፍቅር ተግባር የደቀ መዛሙርቱን እግር አጠበ።',
        'ኢየሱስ እንጀራውን አካፈለ ሥጋዬ ብሎም ጠራው።',
        'ኢየሱስ ጽዋውን አካፈለ አዲስ ኪዳን ብሎም ጠራው።',
        'ኢየሱስ ከመካከላቸው አንዱ አሳልፎ እንደሚሰጠው ነገራቸው።',
      ],
    );
  }

  static Story _resurrection() {
    return Story(
      id: 'resurrection',
      titleEn: 'The Resurrection of Jesus',
      titleAm: 'የኢየሱስ ትንሣኤ',
      bookEn: 'John',
      bookAm: 'የዮሐንስ ወንጌል',
      character: 'Jesus',
      imagePath: 'assets/images/stories/resurrection.png',
      order: 3,
      verseReferences: ['Matthew 27:45-28:10', 'John 20:1-18'],
      summaryEn: 'Jesus is crucified and rises again, conquering death forever.',
      summaryAm: 'ኢየሱስ ተሰቀለ እንደገናም ተነሳ ሞትንም ለዘላለም አሸነፈ።',
      contentEn: '''Jesus was arrested, treated unfairly, and led to a hill outside Jerusalem called Golgotha, where he was crucified on a cross between two criminals. Even in his suffering, Jesus prayed, "Father, forgive them, for they do not know what they are doing."

Darkness covered the land in the middle of the day. Jesus gave his life, and his friends, heartbroken, took his body down and laid it gently in a tomb carved from rock. A huge stone was rolled in front of the entrance, and soldiers were even posted to guard it.

Early on the third day, a Sunday morning, Mary Magdalene and some other women went to the tomb to care for Jesus' body, as was the custom. But when they arrived, they found something astonishing -- the massive stone had been rolled away, and the tomb was empty!

An angel appeared, shining bright, and said, "Don't be afraid! I know you're looking for Jesus, who was crucified. He is not here -- he has risen, just as he said he would!"

Mary ran to tell the disciples the incredible news. Soon after, Jesus himself appeared, alive and well, to Mary, and later to his disciples and many others, proving that death could not hold him.

The resurrection of Jesus is the heart of the whole Bible story: Jesus defeated death itself, so that everyone who believes in him can have new life and hope forever.''',
      contentAm: '''ኢየሱስ ተያዘ፣ በግፍ ተያዘ፣ ጎልጎታ ወደሚባለው ከኢየሩሳሌም ውጭ ወዳለ ኮረብታ ተወስዶ በሁለት ወንጀለኞች መካከል በመስቀል ላይ ተሰቀለ። በመከራው ውስጥ እንኳ ኢየሱስ "አባት ሆይ ይቅር በላቸው፣ የሚያደርጉትን አያውቁምና" ብሎ ጸለየ።

ጨለማ በቀትር ላይ ምድሪቱን ሸፈነ። ኢየሱስ ሕይወቱን ሰጠ፣ ልቦቻቸው የተሰበሩ ወዳጆቹም ሥጋውን አውርደው ከድንጋይ በተጠረበ መቃብር ውስጥ በርኅራኄ አኖሩት። ትልቅ ድንጋይ በበሩ ፊት ተንከባለለ ወታደሮችም ለመጠበቅ ተመደቡ።

በሦስተኛው ቀን ማለዳ፣ የእሑድ ጠዋት፣ መግደላዊት ማርያምና ሌሎች ሴቶች እንደ ልማዳቸው የኢየሱስን ሥጋ ለመንከባከብ ወደ መቃብሩ ሄዱ። ነገር ግን ሲደርሱ የሚገርም ነገር አገኙ - ግዙፉ ድንጋይ ተንከባልሎ ነበር፣ መቃብሩም ባዶ ነበር!

መልአክ በብርሃን አንጸባርቆ ተገለጠና "አትፍሩ! የተሰቀለውን ኢየሱስን እየፈለጋችሁ እንደሆነ አውቃለሁ። እዚህ የለም - እንዳለው ተነስቷል!" አለ።

ማርያም ደቀ መዛሙርቱን ይህን አስደናቂ ዜና ልትነግራቸው ሮጠች። ብዙም ሳይቆይ ኢየሱስ ራሱ ሕያውና ጤናማ ሆኖ ለማርያም ተገለጠ፣ በኋላም ለደቀ መዛሙርቱና ለብዙ ሌሎችም ተገለጠ፣ ሞት ሊይዘው እንዳልቻለ አረጋገጠ።

የኢየሱስ ትንሣኤ የመላው መጽሐፍ ቅዱስ ታሪክ ልብ ነው፡ ኢየሱስ ሞትን ራሱ አሸነፈ፣ በእርሱ የሚያምን ሁሉ አዲስ ሕይወትና ተስፋ ለዘላለም እንዲኖረው።''',
      sequenceEventsEn: const [
        'Jesus is crucified on a cross outside Jerusalem.',
        'His friends lay his body in a tomb sealed with a stone.',
        'Women visit the tomb on Sunday morning and find it empty.',
        'An angel announces that Jesus has risen.',
        'Jesus appears alive to Mary and later to his disciples.',
      ],
      sequenceEventsAm: const [
        'ኢየሱስ ከኢየሩሳሌም ውጭ በመስቀል ላይ ተሰቀለ።',
        'ወዳጆቹ ሥጋውን በድንጋይ በታሸገ መቃብር ውስጥ አኖሩ።',
        'ሴቶች እሑድ ጠዋት መቃብሩን ጎበኙ ባዶም ሆኖ አገኙት።',
        'መልአክ ኢየሱስ እንደተነሳ አወጀ።',
        'ኢየሱስ ሕያው ሆኖ ለማርያምና በኋላም ለደቀ መዛሙርቱ ተገለጠ።',
      ],
    );
  }
}
