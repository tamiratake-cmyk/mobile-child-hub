// Quizzes for the Phase 2 New Testament (Gospel) stories.

import '../models/quiz.dart';

class QuizDataNt {
  static List<Quiz>? getQuizzesForStory(String storyId) {
    switch (storyId) {
      case 'birth_of_jesus':
        return _birthOfJesus();
      case 'wise_men_visit':
        return _wiseMenVisit();
      case 'jesus_baptized':
        return _jesusBaptized();
      case 'jesus_calls_disciples':
        return _jesusCallsDisciples();
      case 'feeding_five_thousand':
        return _feedingFiveThousand();
      case 'jesus_calms_storm':
        return _jesusCalmsStorm();
      case 'good_samaritan':
        return _goodSamaritan();
      case 'prodigal_son':
        return _prodigalSon();
      case 'jesus_walks_water':
        return _jesusWalksWater();
      case 'lazarus_lives':
        return _lazarusLives();
      case 'palm_sunday':
        return _palmSunday();
      case 'last_supper':
        return _lastSupper();
      case 'resurrection':
        return _resurrection();
      default:
        return null;
    }
  }

  static List<Quiz> _birthOfJesus() => [
        Quiz(
          id: 'birth_of_jesus_1',
          storyId: 'birth_of_jesus',
          questionEn: 'Where was baby Jesus laid after he was born?',
          questionAm: 'ሕፃኑ ኢየሱስ ከተወለደ በኋላ የት ተኛ?',
          optionsEn: const ['A palace', 'A manger', 'A boat', 'A temple'],
          optionsAm: const ['ቤተ መንግሥት', 'በረት', 'ጀልባ', 'ቤተ መቅደስ'],
          correctIndex: 1,
        ),
        Quiz(
          id: 'birth_of_jesus_2',
          storyId: 'birth_of_jesus',
          questionEn: 'Who did the angel first tell the good news to?',
          questionAm: 'መልአኩ የምስራቹን መጀመሪያ የነገረው ለማን ነው?',
          optionsEn: const ['Kings', 'Shepherds', 'Priests', 'Soldiers'],
          optionsAm: const ['ነገሥታት', 'እረኞች', 'ካህናት', 'ወታደሮች'],
          correctIndex: 1,
        ),
        Quiz(
          id: 'birth_of_jesus_3',
          storyId: 'birth_of_jesus',
          questionEn: 'Why did Mary and Joseph travel to Bethlehem?',
          questionAm: 'ማርያምና ዮሴፍ ወደ ቤተልሔም የተጓዙት ለምንድን ነው?',
          optionsEn: const ['A festival', 'A government census', 'A wedding', 'Visiting family'],
          optionsAm: const ['በዓል', 'የመንግሥት ቆጠራ', 'ሠርግ', 'ቤተሰብ ለመጎብኘት'],
          correctIndex: 1,
        ),
      ];

  static List<Quiz> _wiseMenVisit() => [
        Quiz(
          id: 'wise_men_visit_1',
          storyId: 'wise_men_visit',
          questionEn: 'What did the wise men follow to find Jesus?',
          questionAm: 'ጠቢባኑ ኢየሱስን ለማግኘት የተከተሉት ምንድን ነው?',
          optionsEn: const ['A map', 'A star', 'A messenger', 'A dream'],
          optionsAm: const ['ካርታ', 'ኮከብ', 'መልእክተኛ', 'ሕልም'],
          correctIndex: 1,
        ),
        Quiz(
          id: 'wise_men_visit_2',
          storyId: 'wise_men_visit',
          questionEn: 'What gifts did the wise men bring?',
          questionAm: 'ጠቢባኑ ያመጡት ስጦታዎች ምን ነበሩ?',
          optionsEn: const ['Bread and wine', 'Gold, frankincense, and myrrh', 'Clothes and food', 'Money only'],
          optionsAm: const ['እንጀራና ወይን', 'ወርቅ፣ ዕጣንና ከርቤ', 'ልብስና ምግብ', 'ገንዘብ ብቻ'],
          correctIndex: 1,
        ),
        Quiz(
          id: 'wise_men_visit_3',
          storyId: 'wise_men_visit',
          questionEn: 'Why did the wise men go home a different way?',
          questionAm: 'ጠቢባኑ በሌላ መንገድ ወደ አገራቸው የተመለሱት ለምንድን ነው?',
          optionsEn: const ['They got lost', 'God warned them not to return to Herod', 'The star broke', 'They were tired'],
          optionsAm: const ['ጠፍተው ነበር', 'እግዚአብሔር ወደ ሄሮድስ እንዳይመለሱ አስጠነቀቃቸው', 'ኮከቡ ጠፋ', 'ደክሟቸው ነበር'],
          correctIndex: 1,
        ),
      ];

  static List<Quiz> _jesusBaptized() => [
        Quiz(
          id: 'jesus_baptized_1',
          storyId: 'jesus_baptized',
          questionEn: 'Who baptized Jesus?',
          questionAm: 'ኢየሱስን ያጠመቀው ማን ነው?',
          optionsEn: const ['Peter', 'John the Baptist', 'Andrew', 'Moses'],
          optionsAm: const ['ጴጥሮስ', 'መጥምቁ ዮሐንስ', 'እንድርያስ', 'ሙሴ'],
          correctIndex: 1,
        ),
        Quiz(
          id: 'jesus_baptized_2',
          storyId: 'jesus_baptized',
          questionEn: 'What appeared like a dove after Jesus was baptized?',
          questionAm: 'ኢየሱስ ከተጠመቀ በኋላ እንደ ርግብ የተገለጠው ምንድን ነው?',
          optionsEn: const ['An angel', 'The Spirit of God', 'A cloud', 'A star'],
          optionsAm: const ['መልአክ', 'የእግዚአብሔር መንፈስ', 'ደመና', 'ኮከብ'],
          correctIndex: 1,
        ),
        Quiz(
          id: 'jesus_baptized_3',
          storyId: 'jesus_baptized',
          questionEn: 'What did the voice from heaven say?',
          questionAm: 'ከሰማይ የመጣው ድምፅ ምን አለ?',
          optionsEn: const ['"Go and preach"', '"This is my beloved Son"', '"Follow the star"', '"Build a temple"'],
          optionsAm: const ['"ሂድና ስበክ"', '"ይህ የምወደው ልጄ ነው"', '"ኮከቡን ተከተል"', '"ቤተ መቅደስ ሥራ"'],
          correctIndex: 1,
        ),
      ];

  static List<Quiz> _jesusCallsDisciples() => [
        Quiz(
          id: 'jesus_calls_disciples_1',
          storyId: 'jesus_calls_disciples',
          questionEn: 'What was Peter\'s job before following Jesus?',
          questionAm: 'ጴጥሮስ ኢየሱስን ከመከተሉ በፊት ሥራው ምን ነበር?',
          optionsEn: const ['Farmer', 'Fisherman', 'Priest', 'Soldier'],
          optionsAm: const ['ገበሬ', 'ዓሣ አጥማጅ', 'ካህን', 'ወታደር'],
          correctIndex: 1,
        ),
        Quiz(
          id: 'jesus_calls_disciples_2',
          storyId: 'jesus_calls_disciples',
          questionEn: 'What happened when they cast their nets as Jesus said?',
          questionAm: 'ኢየሱስ እንዳለው መረባቸውን ሲጥሉ ምን ሆነ?',
          optionsEn: const ['Nothing', 'They caught so many fish the nets nearly broke', 'The boat sank', 'A storm came'],
          optionsAm: const ['ምንም', 'መረቡ ሊቀደድ የሚያክል ብዙ ዓሣ ያዙ', 'ጀልባዋ ሰጠመች', 'ማዕበል መጣ'],
          correctIndex: 1,
        ),
        Quiz(
          id: 'jesus_calls_disciples_3',
          storyId: 'jesus_calls_disciples',
          questionEn: 'What did Jesus say they would fish for now?',
          questionAm: 'ኢየሱስ ከአሁን ጀምሮ ምን እንደሚያጠምዱ ተናገረ?',
          optionsEn: const ['Bigger fish', 'People', 'Treasure', 'Boats'],
          optionsAm: const ['ትልቅ ዓሣ', 'ሰዎችን', 'ሀብት', 'ጀልባዎችን'],
          correctIndex: 1,
        ),
      ];

  static List<Quiz> _feedingFiveThousand() => [
        Quiz(
          id: 'feeding_five_thousand_1',
          storyId: 'feeding_five_thousand',
          questionEn: 'What did the boy offer to share?',
          questionAm: 'ልጁ ሊያካፍል ያቀረበው ምንድን ነው?',
          optionsEn: const ['Two loaves and five fish', 'Five loaves and two fish', 'Ten fish', 'A basket of fruit'],
          optionsAm: const ['ሁለት እንጀራና አምስት ዓሣ', 'አምስት እንጀራና ሁለት ዓሣ', 'አሥር ዓሣ', 'የፍራፍሬ ቅርጫት'],
          correctIndex: 1,
        ),
        Quiz(
          id: 'feeding_five_thousand_2',
          storyId: 'feeding_five_thousand',
          questionEn: 'How many baskets of leftovers were gathered?',
          questionAm: 'ስንት ቅርጫት ተረፍ ተሰበሰበ?',
          optionsEn: const ['Five', 'Seven', 'Twelve', 'None'],
          optionsAm: const ['አምስት', 'ሰባት', 'አሥራ ሁለት', 'ምንም'],
          correctIndex: 2,
        ),
        Quiz(
          id: 'feeding_five_thousand_3',
          storyId: 'feeding_five_thousand',
          questionEn: 'What did Jesus do before breaking the bread?',
          questionAm: 'ኢየሱስ እንጀራውን ከመቁረሱ በፊት ምን አደረገ?',
          optionsEn: const ['He sold it', 'He gave thanks to God', 'He hid it', 'He ate it alone'],
          optionsAm: const ['ሸጠው', 'ለእግዚአብሔር አመሰገነ', 'ደበቀው', 'ብቻውን በላው'],
          correctIndex: 1,
        ),
      ];

  static List<Quiz> _jesusCalmsStorm() => [
        Quiz(
          id: 'jesus_calms_storm_1',
          storyId: 'jesus_calms_storm',
          questionEn: 'What was Jesus doing when the storm hit?',
          questionAm: 'ማዕበሉ ሲመታ ኢየሱስ ምን እያደረገ ነበር?',
          optionsEn: const ['Fishing', 'Sleeping', 'Praying on the shore', 'Teaching'],
          optionsAm: const ['ያጠምድ ነበር', 'ተኝቶ ነበር', 'በባሕር ዳር ይጸልይ ነበር', 'ያስተምር ነበር'],
          correctIndex: 1,
        ),
        Quiz(
          id: 'jesus_calms_storm_2',
          storyId: 'jesus_calms_storm',
          questionEn: 'What did Jesus say to the storm?',
          questionAm: 'ኢየሱስ ለማዕበሉ ምን አለ?',
          optionsEn: const ['"Go away"', '"Peace! Be still!"', '"Come closer"', 'Nothing'],
          optionsAm: const ['"ራቅ"', '"ጸጥ በል! ጸጥ!"', '"ተጠጋ"', 'ምንም'],
          correctIndex: 1,
        ),
        Quiz(
          id: 'jesus_calms_storm_3',
          storyId: 'jesus_calms_storm',
          questionEn: 'What did the disciples realize about Jesus?',
          questionAm: 'ደቀ መዛሙርቱ ስለ ኢየሱስ የተረዱት ምንድን ነው?',
          optionsEn: const ['He was just tired', 'Even the wind and waves obey him', 'He was a fisherman', 'He was angry'],
          optionsAm: const ['ደክሞት ብቻ ነበር', 'ንፋሱና ማዕበሉ እንኳ ይታዘዙለታል', 'ዓሣ አጥማጅ ነበር', 'ተቆጥቶ ነበር'],
          correctIndex: 1,
        ),
      ];

  static List<Quiz> _goodSamaritan() => [
        Quiz(
          id: 'good_samaritan_1',
          storyId: 'good_samaritan',
          questionEn: 'Who stopped to help the injured traveler?',
          questionAm: 'የተጎዳውን መንገደኛ ለመርዳት ቆሞ ያገዘው ማን ነው?',
          optionsEn: const ['A priest', 'A Levite', 'A Samaritan', 'A king'],
          optionsAm: const ['ካህን', 'ሌዋዊ', 'ሳምራዊ', 'ንጉሥ'],
          correctIndex: 2,
        ),
        Quiz(
          id: 'good_samaritan_2',
          storyId: 'good_samaritan',
          questionEn: 'What did the priest and the Levite do?',
          questionAm: 'ካህኑና ሌዋዊው ምን አደረጉ?',
          optionsEn: const ['They helped right away', 'They walked past on the other side', 'They called for help', 'They robbed him too'],
          optionsAm: const ['ወዲያውኑ ረዱ', 'ወደ ሌላኛው ጎን አልፈው ሄዱ', 'እርዳታ ጠሩ', 'እነርሱም ዘረፉት'],
          correctIndex: 1,
        ),
        Quiz(
          id: 'good_samaritan_3',
          storyId: 'good_samaritan',
          questionEn: 'What lesson does this story teach?',
          questionAm: 'ይህ ታሪክ የሚያስተምረው ትምህርት ምንድን ነው?',
          optionsEn: const ['Travel is dangerous', 'A true neighbor shows mercy to anyone in need', 'Priests are bad', 'Always travel alone'],
          optionsAm: const ['መጓዝ አደገኛ ነው', 'እውነተኛ ጎረቤት ለተቸገረ ሁሉ ምሕረት ያሳያል', 'ካህናት መጥፎ ናቸው', 'ሁልጊዜ ብቻ ተጓዙ'],
          correctIndex: 1,
        ),
      ];

  static List<Quiz> _prodigalSon() => [
        Quiz(
          id: 'prodigal_son_1',
          storyId: 'prodigal_son',
          questionEn: 'What did the younger son ask his father for?',
          questionAm: 'ታናሹ ልጅ ከአባቱ የጠየቀው ምንድን ነው?',
          optionsEn: const ['A blessing', 'His share of the inheritance', 'A wife', 'A new home'],
          optionsAm: const ['በረከት', 'የውርስ ድርሻውን', 'ሚስት', 'አዲስ ቤት'],
          correctIndex: 1,
        ),
        Quiz(
          id: 'prodigal_son_2',
          storyId: 'prodigal_son',
          questionEn: 'What job did the son take when he became poor?',
          questionAm: 'ልጁ ድሃ ሲሆን የያዘው ሥራ ምንድን ነው?',
          optionsEn: const ['Farming grain', 'Feeding pigs', 'Fishing', 'Building houses'],
          optionsAm: const ['እህል ማልማት', 'አሳማዎችን መመገብ', 'ማጥመድ', 'ቤት መሥራት'],
          correctIndex: 1,
        ),
        Quiz(
          id: 'prodigal_son_3',
          storyId: 'prodigal_son',
          questionEn: 'How did the father react when his son returned?',
          questionAm: 'ልጁ ሲመለስ አባቱ ምላሽ የሰጠው እንዴት ነው?',
          optionsEn: const ['He was angry and sent him away', 'He ran to welcome him with joy', 'He ignored him', 'He made him a servant'],
          optionsAm: const ['ተቆጥቶ አባረረው', 'በደስታ ሊቀበለው ሮጠ', 'ችላ አለው', 'አገልጋይ አደረገው'],
          correctIndex: 1,
        ),
      ];

  static List<Quiz> _jesusWalksWater() => [
        Quiz(
          id: 'jesus_walks_water_1',
          storyId: 'jesus_walks_water',
          questionEn: 'Why were the disciples afraid at first?',
          questionAm: 'ደቀ መዛሙርቱ በመጀመሪያ የፈሩት ለምንድን ነው?',
          optionsEn: const ['A storm was coming', 'They thought Jesus was a ghost', 'The boat was sinking', 'They saw a lion'],
          optionsAm: const ['ማዕበል ይመጣ ነበር', 'ኢየሱስን መንፈስ መስሏቸው', 'ጀልባዋ ትሰጥም ነበር', 'አንበሳ አዩ'],
          correctIndex: 1,
        ),
        Quiz(
          id: 'jesus_walks_water_2',
          storyId: 'jesus_walks_water',
          questionEn: 'What happened when Peter looked at the wind and waves?',
          questionAm: 'ጴጥሮስ ንፋሱንና ማዕበሉን ሲመለከት ምን ሆነ?',
          optionsEn: const ['He kept walking easily', 'He grew afraid and started to sink', 'He swam to shore', 'He laughed'],
          optionsAm: const ['በቀላሉ መራመዱን ቀጠለ', 'ፈርቶ መስጠም ጀመረ', 'ወደ ባሕር ዳር ዋኘ', 'ሳቀ'],
          correctIndex: 1,
        ),
        Quiz(
          id: 'jesus_walks_water_3',
          storyId: 'jesus_walks_water',
          questionEn: 'What did Jesus do when Peter began to sink?',
          questionAm: 'ጴጥሮስ መስጠም ሲጀምር ኢየሱስ ምን አደረገ?',
          optionsEn: const ['Let him sink', 'Reached out and caught him', 'Swam away', 'Called for a boat'],
          optionsAm: const ['እንዲሰጥም ተወው', 'እጁን ዘርግቶ ያዘው', 'ዋኝቶ ራቀ', 'ጀልባ ጠራ'],
          correctIndex: 1,
        ),
      ];

  static List<Quiz> _lazarusLives() => [
        Quiz(
          id: 'lazarus_lives_1',
          storyId: 'lazarus_lives',
          questionEn: 'How many days had Lazarus been in the tomb?',
          questionAm: 'አልዓዛር በመቃብር ውስጥ ስንት ቀናት ቆይቶ ነበር?',
          optionsEn: const ['One', 'Two', 'Four', 'Ten'],
          optionsAm: const ['አንድ', 'ሁለት', 'አራት', 'አሥር'],
          correctIndex: 2,
        ),
        Quiz(
          id: 'lazarus_lives_2',
          storyId: 'lazarus_lives',
          questionEn: 'What did Jesus do when he saw everyone weeping?',
          questionAm: 'ኢየሱስ ሁሉም ሲያለቅሱ ባየ ጊዜ ምን አደረገ?',
          optionsEn: const ['He left', 'He wept too', 'He laughed', 'He scolded them'],
          optionsAm: const ['ወጣ', 'እርሱም አለቀሰ', 'ሳቀ', 'ገሠጻቸው'],
          correctIndex: 1,
        ),
        Quiz(
          id: 'lazarus_lives_3',
          storyId: 'lazarus_lives',
          questionEn: 'What did Jesus say to call Lazarus out?',
          questionAm: 'ኢየሱስ አልዓዛርን ለመጥራት ምን አለ?',
          optionsEn: const ['"Lazarus, wake up!"', '"Lazarus, come out!"', '"Lazarus, stand!"', '"Lazarus, walk!"'],
          optionsAm: const ['"አልዓዛር ሆይ ንቃ!"', '"አልዓዛር ሆይ ውጣ!"', '"አልዓዛር ሆይ ቁም!"', '"አልዓዛር ሆይ ራመድ!"'],
          correctIndex: 1,
        ),
      ];

  static List<Quiz> _palmSunday() => [
        Quiz(
          id: 'palm_sunday_1',
          storyId: 'palm_sunday',
          questionEn: 'What animal did Jesus ride into Jerusalem?',
          questionAm: 'ኢየሱስ ወደ ኢየሩሳሌም የገባው በምን እንስሳ ላይ ተቀምጦ ነው?',
          optionsEn: const ['A horse', 'A young donkey', 'A camel', 'An ox'],
          optionsAm: const ['ፈረስ', 'ወጣት አህያ', 'ግመል', 'በሬ'],
          correctIndex: 1,
        ),
        Quiz(
          id: 'palm_sunday_2',
          storyId: 'palm_sunday',
          questionEn: 'What did the crowds spread on the road?',
          questionAm: 'ሕዝቡ በመንገዱ ላይ የዘረጉት ምንድን ነው?',
          optionsEn: const ['Flowers', 'Cloaks and palm branches', 'Gold coins', 'Blankets'],
          optionsAm: const ['አበቦች', 'ልብሶችና የዘንባባ ቅርንጫፎች', 'የወርቅ ገንዘቦች', 'ብርድ ልብሶች'],
          correctIndex: 1,
        ),
        Quiz(
          id: 'palm_sunday_3',
          storyId: 'palm_sunday',
          questionEn: 'What did the crowds shout?',
          questionAm: 'ሕዝቡ ምን ብለው ጮኹ?',
          optionsEn: const ['"Crucify him!"', '"Hosanna!"', '"Go away!"', '"Silence!"'],
          optionsAm: const ['"ስቀለው!"', '"ሆሣዕና!"', '"ራቅ!"', '"ጸጥ በል!"'],
          correctIndex: 1,
        ),
      ];

  static List<Quiz> _lastSupper() => [
        Quiz(
          id: 'last_supper_1',
          storyId: 'last_supper',
          questionEn: 'What humble task did Jesus do for his disciples?',
          questionAm: 'ኢየሱስ ለደቀ መዛሙርቱ ያደረገው ትሑት ተግባር ምንድን ነው?',
          optionsEn: const ['He cooked for them', 'He washed their feet', 'He built them a house', 'He sang for them'],
          optionsAm: const ['ምግብ አበሰለላቸው', 'እግራቸውን አጠበ', 'ቤት ሠራላቸው', 'ዘፈነላቸው'],
          correctIndex: 1,
        ),
        Quiz(
          id: 'last_supper_2',
          storyId: 'last_supper',
          questionEn: 'What did Jesus call the bread he broke?',
          questionAm: 'ኢየሱስ የቆረሰውን እንጀራ ምን ብሎ ጠራው?',
          optionsEn: const ['A gift', 'His body', 'A blessing', 'A sign'],
          optionsAm: const ['ስጦታ', 'ሥጋዬ', 'በረከት', 'ምልክት'],
          correctIndex: 1,
        ),
        Quiz(
          id: 'last_supper_3',
          storyId: 'last_supper',
          questionEn: 'What troubling news did Jesus share at the meal?',
          questionAm: 'ኢየሱስ በእራቱ ላይ ያካፈለው የሚያስጨንቅ ዜና ምንድን ነው?',
          optionsEn: const ['He was leaving forever', 'One of them would betray him', 'They would all be arrested', 'The meal was over'],
          optionsAm: const ['ለዘላለም እንደሚሄድ', 'ከመካከላቸው አንዱ አሳልፎ እንደሚሰጠው', 'ሁሉም እንደሚያዙ', 'እራቱ እንዳለቀ'],
          correctIndex: 1,
        ),
      ];

  static List<Quiz> _resurrection() => [
        Quiz(
          id: 'resurrection_1',
          storyId: 'resurrection',
          questionEn: 'What did the women find when they reached the tomb?',
          questionAm: 'ሴቶቹ መቃብሩ ሲደርሱ ያገኙት ምንድን ነው?',
          optionsEn: const ['Soldiers guarding it', 'The stone rolled away and the tomb empty', 'Jesus still there', 'Nothing had changed'],
          optionsAm: const ['የሚጠብቁ ወታደሮች', 'ድንጋዩ ተንከባልሎ መቃብሩም ባዶ ሆኖ', 'ኢየሱስ ገና እዚያ ሆኖ', 'ምንም ያልተለወጠ'],
          correctIndex: 1,
        ),
        Quiz(
          id: 'resurrection_2',
          storyId: 'resurrection',
          questionEn: 'Who first told the disciples that Jesus had risen?',
          questionAm: 'ኢየሱስ እንደተነሳ ለደቀ መዛሙርቱ መጀመሪያ የነገረቻቸው ማን ናት?',
          optionsEn: const ['Martha', 'Mary Magdalene', 'Esther', 'Ruth'],
          optionsAm: const ['ማርታ', 'መግደላዊት ማርያም', 'አስቴር', 'ሩት'],
          correctIndex: 1,
        ),
        Quiz(
          id: 'resurrection_3',
          storyId: 'resurrection',
          questionEn: 'What does the resurrection show us about Jesus?',
          questionAm: 'ትንሣኤው ስለ ኢየሱስ የሚያሳየን ምንድን ነው?',
          optionsEn: const ['He was just a good teacher', 'He defeated death and offers new life', 'He was afraid', 'He left forever'],
          optionsAm: const ['ጥሩ መምህር ብቻ እንደነበረ', 'ሞትን አሸንፎ አዲስ ሕይወት እንደሚሰጥ', 'ፈርቶ እንደነበረ', 'ለዘላለም እንደሄደ'],
          correctIndex: 1,
        ),
      ];
}
