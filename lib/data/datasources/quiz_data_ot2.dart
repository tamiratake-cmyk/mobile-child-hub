// Quizzes for the Phase 2 Old Testament stories (Deuteronomy - Jonah).

import '../models/quiz.dart';

class QuizDataOt2 {
  static List<Quiz>? getQuizzesForStory(String storyId) {
    switch (storyId) {
      case 'moses_farewell':
        return _mosesFarewell();
      case 'crossing_jordan':
        return _crossingJordan();
      case 'walls_of_jericho':
        return _wallsOfJericho();
      case 'gideons_army':
        return _gideonsArmy();
      case 'samson_strength':
        return _samsonStrength();
      case 'ruth_loyalty':
        return _ruthLoyalty();
      case 'samuel_calls':
        return _samuelCalls();
      case 'david_goliath':
        return _davidGoliath();
      case 'david_jonathan':
        return _davidJonathan();
      case 'solomons_wisdom':
        return _solomonsWisdom();
      case 'elijah_carmel':
        return _elijahCarmel();
      case 'queen_esther':
        return _queenEsther();
      case 'daniel_lions_den':
        return _danielLionsDen();
      case 'fiery_furnace':
        return _fieryFurnace();
      case 'jonah_big_fish':
        return _jonahBigFish();
      default:
        return null;
    }
  }

  static List<Quiz> _mosesFarewell() => [
        Quiz(
          id: 'moses_farewell_1',
          storyId: 'moses_farewell',
          questionEn: 'Who did Moses choose as the next leader?',
          questionAm: 'ሙሴ እንደ ቀጣይ መሪ የመረጠው ማን ነው?',
          optionsEn: const ['Aaron', 'Joshua', 'Caleb', 'Samuel'],
          optionsAm: const ['አሮን', 'ኢያሱ', 'ካሌብ', 'ሳሙኤል'],
          correctIndex: 1,
        ),
        Quiz(
          id: 'moses_farewell_2',
          storyId: 'moses_farewell',
          questionEn: 'What mountain did God show Moses the Promised Land from?',
          questionAm: 'እግዚአብሔር ተስፋይቱን ምድር ለሙሴ ያሳየው ከየትኛው ተራራ ነው?',
          optionsEn: const ['Sinai', 'Nebo', 'Carmel', 'Ararat'],
          optionsAm: const ['ሲና', 'ናባው', 'ቀርሜሎስ', 'አራራት'],
          correctIndex: 1,
        ),
        Quiz(
          id: 'moses_farewell_3',
          storyId: 'moses_farewell',
          questionEn: 'How many days did the people mourn Moses?',
          questionAm: 'ሕዝቡ ለሙሴ ስንት ቀናት አለቀሱ?',
          optionsEn: const ['Ten', 'Twenty', 'Thirty', 'Forty'],
          optionsAm: const ['አሥር', 'ሃያ', 'ሠላሳ', 'አርባ'],
          correctIndex: 2,
        ),
      ];

  static List<Quiz> _crossingJordan() => [
        Quiz(
          id: 'crossing_jordan_1',
          storyId: 'crossing_jordan',
          questionEn: 'Who carried the Ark into the Jordan River?',
          questionAm: 'ታቦቱን ወደ ዮርዳኖስ ወንዝ የተሸከሙት እነማን ናቸው?',
          optionsEn: const ['Soldiers', 'The priests', 'Joshua alone', 'Children'],
          optionsAm: const ['ወታደሮች', 'ካህናት', 'ኢያሱ ብቻ', 'ልጆች'],
          correctIndex: 1,
        ),
        Quiz(
          id: 'crossing_jordan_2',
          storyId: 'crossing_jordan',
          questionEn: 'What happened when the priests\' feet touched the water?',
          questionAm: 'የካህናቱ እግር ውሃውን ሲነካ ምን ሆነ?',
          optionsEn: const ['Nothing', 'The river stopped flowing', 'It rained', 'A boat appeared'],
          optionsAm: const ['ምንም', 'ወንዙ መፍሰሱን አቆመ', 'ዝናብ ዘነበ', 'ጀልባ ታየ'],
          correctIndex: 1,
        ),
        Quiz(
          id: 'crossing_jordan_3',
          storyId: 'crossing_jordan',
          questionEn: 'Why did the twelve men gather twelve stones?',
          questionAm: 'አሥራ ሁለቱ ሰዎች አሥራ ሁለት ድንጋዮች የሰበሰቡት ለምንድን ነው?',
          optionsEn: const ['To build a house', 'As a memorial of the miracle', 'To throw at enemies', 'For decoration'],
          optionsAm: const ['ቤት ለመሥራት', 'ለተአምሩ መታሰቢያ', 'በጠላት ላይ ለመወርወር', 'ለጌጥ'],
          correctIndex: 1,
        ),
      ];

  static List<Quiz> _wallsOfJericho() => [
        Quiz(
          id: 'walls_of_jericho_1',
          storyId: 'walls_of_jericho',
          questionEn: 'How many days did Israel march around Jericho?',
          questionAm: 'እስራኤል በኢያሪኮ ዙሪያ ስንት ቀናት ዞሩ?',
          optionsEn: const ['Three', 'Five', 'Seven', 'Ten'],
          optionsAm: const ['ሦስት', 'አምስት', 'ሰባት', 'አሥር'],
          correctIndex: 2,
        ),
        Quiz(
          id: 'walls_of_jericho_2',
          storyId: 'walls_of_jericho',
          questionEn: 'What did the priests carry in front of the Ark?',
          questionAm: 'ካህናቱ ከታቦቱ ፊት ምን ተሸከሙ?',
          optionsEn: const ['Swords', 'Trumpets', 'Torches', 'Shields'],
          optionsAm: const ['ሰይፎች', 'መለከቶች', 'ችቦዎች', 'ጋሻዎች'],
          correctIndex: 1,
        ),
        Quiz(
          id: 'walls_of_jericho_3',
          storyId: 'walls_of_jericho',
          questionEn: 'What made the walls fall down?',
          questionAm: 'ቅጥሩ እንዲወድቅ ያደረገው ምንድን ነው?',
          optionsEn: const ['A battering ram', 'Marching and shouting as God commanded', 'An earthquake', 'Fire'],
          optionsAm: const ['የግንብ መስበሪያ', 'እንደ እግዚአብሔር ትእዛዝ መዞርና መጮህ', 'የመሬት መንቀጥቀጥ', 'እሳት'],
          correctIndex: 1,
        ),
      ];

  static List<Quiz> _gideonsArmy() => [
        Quiz(
          id: 'gideons_army_1',
          storyId: 'gideons_army',
          questionEn: 'How many men did God leave in Gideon\'s army?',
          questionAm: 'እግዚአብሔር በጌዴዎን ሠራዊት ውስጥ ስንት ሰዎችን ተወ?',
          optionsEn: const ['32,000', '10,000', '300', '3,000'],
          optionsAm: const ['32,000', '10,000', '300', '3,000'],
          correctIndex: 2,
        ),
        Quiz(
          id: 'gideons_army_2',
          storyId: 'gideons_army',
          questionEn: 'What did the soldiers carry instead of swords?',
          questionAm: 'ወታደሮቹ ከሰይፍ ይልቅ ምን ተሸከሙ?',
          optionsEn: const ['Shields and spears', 'Jars, torches, and trumpets', 'Bows and arrows', 'Nothing'],
          optionsAm: const ['ጋሻና ጦር', 'ማሰሮ፣ ችቦና መለከት', 'ቀስትና ፍላጻ', 'ምንም'],
          correctIndex: 1,
        ),
        Quiz(
          id: 'gideons_army_3',
          storyId: 'gideons_army',
          questionEn: 'Why did God want a smaller army?',
          questionAm: 'እግዚአብሔር ትንሽ ሠራዊት የፈለገው ለምንድን ነው?',
          optionsEn: const ['To save food', 'So Israel would know the victory came from God', 'The men were lazy', 'It was faster'],
          optionsAm: const ['ምግብ ለመቆጠብ', 'ድሉ ከእግዚአብሔር እንደመጣ እስራኤል እንዲያውቅ', 'ሰዎቹ ሰነፎች ስለነበሩ', 'ፈጣን ስለሆነ'],
          correctIndex: 1,
        ),
      ];

  static List<Quiz> _samsonStrength() => [
        Quiz(
          id: 'samson_strength_1',
          storyId: 'samson_strength',
          questionEn: 'What was the secret of Samson\'s strength?',
          questionAm: 'የሶምሶን ጥንካሬ ምስጢር ምን ነበር?',
          optionsEn: const ['A magic sword', 'His uncut hair, a promise to God', 'His shoes', 'A special ring'],
          optionsAm: const ['አስማት ሰይፍ', 'ላልተቆረጠው ጸጉሩ ለእግዚአብሔር የገባው ቃል', 'ጫማው', 'ልዩ ቀለበት'],
          correctIndex: 1,
        ),
        Quiz(
          id: 'samson_strength_2',
          storyId: 'samson_strength',
          questionEn: 'Who discovered Samson\'s secret and told his enemies?',
          questionAm: 'የሶምሶንን ምስጢር አግኝታ ለጠላቶቹ የነገረች ማን ናት?',
          optionsEn: const ['Delilah', 'Ruth', 'Esther', 'His mother'],
          optionsAm: const ['ደሊላ', 'ሩት', 'አስቴር', 'እናቱ'],
          correctIndex: 0,
        ),
        Quiz(
          id: 'samson_strength_3',
          storyId: 'samson_strength',
          questionEn: 'What did Samson do at the end of the story?',
          questionAm: 'ሶምሶን በታሪኩ መጨረሻ ላይ ምን አደረገ?',
          optionsEn: const ['Ran away', 'Prayed and pushed down the pillars', 'Hid in a cave', 'Called his army'],
          optionsAm: const ['ሸሸ', 'ጸልዮ ምሰሶዎቹን ገፋ', 'በዋሻ ውስጥ ተደበቀ', 'ሠራዊቱን ጠራ'],
          correctIndex: 1,
        ),
      ];

  static List<Quiz> _ruthLoyalty() => [
        Quiz(
          id: 'ruth_loyalty_1',
          storyId: 'ruth_loyalty',
          questionEn: 'What did Ruth promise Naomi?',
          questionAm: 'ሩት ለናኦሚ ምን ቃል ገባች?',
          optionsEn: const ['To leave her', 'To go wherever she goes', 'To become rich', 'To return to Moab alone'],
          optionsAm: const ['ልትተዋት', 'ወደምትሄድበት ሁሉ ልትሄድ', 'ሀብታም ልትሆን', 'ብቻዋን ወደ ሞዓብ ልትመለስ'],
          correctIndex: 1,
        ),
        Quiz(
          id: 'ruth_loyalty_2',
          storyId: 'ruth_loyalty',
          questionEn: 'How did Ruth provide food for herself and Naomi?',
          questionAm: 'ሩት ለራሷና ለናኦሚ ምግብ ያገኘችው እንዴት ነው?',
          optionsEn: const ['She hunted', 'She gathered leftover grain in the fields', 'She fished', 'She sold her jewelry'],
          optionsAm: const ['አደነች', 'በእርሻዎች ውስጥ የቀረውን እህል ሰበሰበች', 'አጠመደች', 'ጌጦቿን ሸጠች'],
          correctIndex: 1,
        ),
        Quiz(
          id: 'ruth_loyalty_3',
          storyId: 'ruth_loyalty',
          questionEn: 'Who married Ruth?',
          questionAm: 'ሩትን ያገባት ማን ነው?',
          optionsEn: const ['Boaz', 'Mordecai', 'Samuel', 'Gideon'],
          optionsAm: const ['ቦዔዝ', 'ሞርዶካይ', 'ሳሙኤል', 'ጌዴዎን'],
          correctIndex: 0,
        ),
      ];

  static List<Quiz> _samuelCalls() => [
        Quiz(
          id: 'samuel_calls_1',
          storyId: 'samuel_calls',
          questionEn: 'Who helped Samuel understand God was calling him?',
          questionAm: 'እግዚአብሔር እንደሚጠራው ሳሙኤል እንዲረዳ የረዳው ማን ነው?',
          optionsEn: const ['Eli', 'His mother', 'An angel', 'King Saul'],
          optionsAm: const ['ኤሊ', 'እናቱ', 'መልአክ', 'ንጉሥ ሳኦል'],
          correctIndex: 0,
        ),
        Quiz(
          id: 'samuel_calls_2',
          storyId: 'samuel_calls',
          questionEn: 'What did Samuel say when God called the fourth time?',
          questionAm: 'እግዚአብሔር ለአራተኛ ጊዜ ሲጠራ ሳሙኤል ምን አለ?',
          optionsEn: const ['"Who is it?"', '"Speak, Lord, your servant is listening"', '"I am busy"', 'Nothing, he ran away'],
          optionsAm: const ['"ማን ነው?"', '"ተናገር ጌታ ሆይ፣ ባሪያህ ያዳምጣል"', '"እኔ ሥራ በዝቶብኛል"', 'ምንም አላለም ሸሸ'],
          correctIndex: 1,
        ),
        Quiz(
          id: 'samuel_calls_3',
          storyId: 'samuel_calls',
          questionEn: 'What did Samuel become known as when he grew up?',
          questionAm: 'ሳሙኤል ሲያድግ ምን ተብሎ ታወቀ?',
          optionsEn: const ['A soldier', 'A trusted prophet', 'A farmer', 'A merchant'],
          optionsAm: const ['ወታደር', 'ታማኝ ነቢይ', 'ገበሬ', 'ነጋዴ'],
          correctIndex: 1,
        ),
      ];

  static List<Quiz> _davidGoliath() => [
        Quiz(
          id: 'david_goliath_1',
          storyId: 'david_goliath',
          questionEn: 'What did David use to defeat Goliath?',
          questionAm: 'ዳዊት ጎልያድን ለማሸነፍ የተጠቀመው ምንድን ነው?',
          optionsEn: const ['A sword', 'A sling and a stone', 'A spear', 'His bare hands'],
          optionsAm: const ['ሰይፍ', 'ወንጭፍና ድንጋይ', 'ጦር', 'ባዶ እጆቹ'],
          correctIndex: 1,
        ),
        Quiz(
          id: 'david_goliath_2',
          storyId: 'david_goliath',
          questionEn: 'What was David\'s job before he faced Goliath?',
          questionAm: 'ዳዊት ጎልያድን ከመግጠሙ በፊት ሥራው ምን ነበር?',
          optionsEn: const ['King', 'Shepherd', 'Priest', 'Soldier'],
          optionsAm: const ['ንጉሥ', 'እረኛ', 'ካህን', 'ወታደር'],
          correctIndex: 1,
        ),
        Quiz(
          id: 'david_goliath_3',
          storyId: 'david_goliath',
          questionEn: 'Why was David not afraid of Goliath?',
          questionAm: 'ዳዊት ጎልያድን ያልፈራው ለምንድን ነው?',
          optionsEn: const ['He was the strongest soldier', 'He trusted that God would save him', 'He had magic armor', 'He didn\'t understand the danger'],
          optionsAm: const ['በጣም ጠንካራ ወታደር ስለነበረ', 'እግዚአብሔር እንደሚያድነው ስላመነ', 'አስማት ጋሻ ስለነበረው', 'አደጋውን ስላልተረዳ'],
          correctIndex: 1,
        ),
      ];

  static List<Quiz> _davidJonathan() => [
        Quiz(
          id: 'david_jonathan_1',
          storyId: 'david_jonathan',
          questionEn: 'Who was Jonathan\'s father?',
          questionAm: 'የዮናታን አባት ማን ነበር?',
          optionsEn: const ['King Saul', 'King David', 'Samuel', 'Eli'],
          optionsAm: const ['ንጉሥ ሳኦል', 'ንጉሥ ዳዊት', 'ሳሙኤል', 'ኤሊ'],
          correctIndex: 0,
        ),
        Quiz(
          id: 'david_jonathan_2',
          storyId: 'david_jonathan',
          questionEn: 'What did Jonathan give David as a sign of friendship?',
          questionAm: 'ዮናታን ለዳዊት እንደ ወዳጅነት ምልክት ምን ሰጠው?',
          optionsEn: const ['His crown', 'His robe, sword, bow, and belt', 'His horse', 'His land'],
          optionsAm: const ['ዘውዱን', 'ካባውን፣ ሰይፉን፣ ቀስቱንና መታጠቂያውን', 'ፈረሱን', 'መሬቱን'],
          correctIndex: 1,
        ),
        Quiz(
          id: 'david_jonathan_3',
          storyId: 'david_jonathan',
          questionEn: 'Why did Jonathan warn David of danger?',
          questionAm: 'ዮናታን ዳዊትን ስለ አደጋው ያስጠነቀቀው ለምንድን ነው?',
          optionsEn: const ['He was jealous of his father', 'He was loyal to his true friend', 'The king ordered him to', 'He wanted David\'s throne'],
          optionsAm: const ['በአባቱ ላይ ቀናተኛ ስለነበረ', 'ለእውነተኛ ወዳጁ ታማኝ ስለነበረ', 'ንጉሡ ስላዘዘው', 'የዳዊትን ዙፋን ስለፈለገ'],
          correctIndex: 1,
        ),
      ];

  static List<Quiz> _solomonsWisdom() => [
        Quiz(
          id: 'solomons_wisdom_1',
          storyId: 'solomons_wisdom',
          questionEn: 'What did Solomon ask God for?',
          questionAm: 'ሰሎሞን ከእግዚአብሔር የጠየቀው ምንድን ነው?',
          optionsEn: const ['Gold and silver', 'A wise and understanding heart', 'A long life', 'A big army'],
          optionsAm: const ['ወርቅና ብር', 'ጥበበኛና አስተዋይ ልብ', 'ረጅም ዕድሜ', 'ትልቅ ሠራዊት'],
          correctIndex: 1,
        ),
        Quiz(
          id: 'solomons_wisdom_2',
          storyId: 'solomons_wisdom',
          questionEn: 'How did Solomon find the baby\'s true mother?',
          questionAm: 'ሰሎሞን የሕፃኑን እውነተኛ እናት ያገኘው እንዴት ነው?',
          optionsEn: const ['He asked witnesses', 'He suggested cutting the baby in half', 'He guessed', 'He asked the king'],
          optionsAm: const ['ምስክሮችን ጠየቀ', 'ሕፃኑን ለሁለት ለመቁረጥ ጠቆመ', 'ገመተ', 'ንጉሡን ጠየቀ'],
          correctIndex: 1,
        ),
        Quiz(
          id: 'solomons_wisdom_3',
          storyId: 'solomons_wisdom',
          questionEn: 'Besides wisdom, what else did God give Solomon?',
          questionAm: 'ከጥበብ በተጨማሪ እግዚአብሔር ለሰሎሞን ሌላ ምን ሰጠው?',
          optionsEn: const ['Nothing else', 'Riches and honor', 'A new kingdom', 'More children'],
          optionsAm: const ['ሌላ ምንም', 'ሀብትና ክብር', 'አዲስ መንግሥት', 'ተጨማሪ ልጆች'],
          correctIndex: 1,
        ),
      ];

  static List<Quiz> _elijahCarmel() => [
        Quiz(
          id: 'elijah_carmel_1',
          storyId: 'elijah_carmel',
          questionEn: 'Who did Elijah challenge to a contest?',
          questionAm: 'ኤልያስ ወደ ውድድር የጠራው ማንን ነው?',
          optionsEn: const ['King Saul', 'The prophets of Baal', 'David', 'The Egyptians'],
          optionsAm: const ['ንጉሥ ሳኦል', 'የባዓል ነቢያት', 'ዳዊት', 'ግብፃውያን'],
          correctIndex: 1,
        ),
        Quiz(
          id: 'elijah_carmel_2',
          storyId: 'elijah_carmel',
          questionEn: 'What did Elijah pour on his altar before praying?',
          questionAm: 'ኤልያስ ከመጸለዩ በፊት በመሠዊያው ላይ ያፈሰሰው ምንድን ነው?',
          optionsEn: const ['Oil', 'Water', 'Wine', 'Sand'],
          optionsAm: const ['ዘይት', 'ውሃ', 'ወይን', 'አሸዋ'],
          correctIndex: 1,
        ),
        Quiz(
          id: 'elijah_carmel_3',
          storyId: 'elijah_carmel',
          questionEn: 'What did the people shout after the fire fell?',
          questionAm: 'እሳት ከወረደ በኋላ ሕዝቡ ምን ብለው ጮኹ?',
          optionsEn: const ['"Long live the king!"', '"The Lord, He is God!"', '"Run away!"', 'Nothing'],
          optionsAm: const ['"ንጉሡ ለዘላለም ይኑር!"', '"እግዚአብሔር እርሱ አምላክ ነው!"', '"ሽሹ!"', 'ምንም'],
          correctIndex: 1,
        ),
      ];

  static List<Quiz> _queenEsther() => [
        Quiz(
          id: 'queen_esther_1',
          storyId: 'queen_esther',
          questionEn: 'Who tried to destroy the Jewish people?',
          questionAm: 'የአይሁድን ሕዝብ ለማጥፋት የሞከረው ማን ነው?',
          optionsEn: const ['Haman', 'Mordecai', 'The king', 'A soldier'],
          optionsAm: const ['ሃማን', 'ሞርዶካይ', 'ንጉሡ', 'ወታደር'],
          correctIndex: 0,
        ),
        Quiz(
          id: 'queen_esther_2',
          storyId: 'queen_esther',
          questionEn: 'What did Esther ask the Jewish people to do before she approached the king?',
          questionAm: 'አስቴር ወደ ንጉሡ ከመቅረቧ በፊት የአይሁድን ሕዝብ ምን እንዲያደርጉ ጠየቀች?',
          optionsEn: const ['Celebrate', 'Fast and pray for three days', 'Hide', 'Fight'],
          optionsAm: const ['ያክብሩ', 'ለሦስት ቀናት ይጹሙና ይጸልዩ', 'ይደበቁ', 'ይዋጉ'],
          correctIndex: 1,
        ),
        Quiz(
          id: 'queen_esther_3',
          storyId: 'queen_esther',
          questionEn: 'Why was it risky for Esther to approach the king?',
          questionAm: 'ለአስቴር ወደ ንጉሡ መቅረብ አደገኛ የነበረው ለምንድን ነው?',
          optionsEn: const ['She wasn\'t dressed properly', 'Approaching without being invited could mean death', 'She didn\'t like him', 'It was against her religion'],
          optionsAm: const ['በትክክል አልለበሰችም', 'ሳትጠራ መቅረብ ሞት ሊያስከትል ይችላል', 'አልወደደችውም', 'ከሃይማኖቷ ጋር ይቃረናል'],
          correctIndex: 1,
        ),
      ];

  static List<Quiz> _danielLionsDen() => [
        Quiz(
          id: 'daniel_lions_den_1',
          storyId: 'daniel_lions_den',
          questionEn: 'Why was Daniel thrown into the lions\' den?',
          questionAm: 'ዳንኤል ወደ አናብስት ጉድጓድ የተጣለው ለምንድን ነው?',
          optionsEn: const ['He stole something', 'He kept praying to God', 'He was a foreigner', 'He lost a battle'],
          optionsAm: const ['ነገር ሰርቆ ነበር', 'ወደ እግዚአብሔር መጸለዩን ስለቀጠለ', 'ባዕድ ስለነበረ', 'ጦርነት ስላጣ'],
          correctIndex: 1,
        ),
        Quiz(
          id: 'daniel_lions_den_2',
          storyId: 'daniel_lions_den',
          questionEn: 'How many times a day did Daniel pray?',
          questionAm: 'ዳንኤል በቀን ስንት ጊዜ ይጸልይ ነበር?',
          optionsEn: const ['Once', 'Twice', 'Three times', 'Five times'],
          optionsAm: const ['አንድ ጊዜ', 'ሁለት ጊዜ', 'ሦስት ጊዜ', 'አምስት ጊዜ'],
          correctIndex: 2,
        ),
        Quiz(
          id: 'daniel_lions_den_3',
          storyId: 'daniel_lions_den',
          questionEn: 'How did God protect Daniel?',
          questionAm: 'እግዚአብሔር ዳንኤልን የጠበቀው እንዴት ነው?',
          optionsEn: const ['He sent rain', 'He sent an angel to shut the lions\' mouths', 'He made Daniel invisible', 'He removed the lions'],
          optionsAm: const ['ዝናብ ላከ', 'የአናብስቱን አፍ ይዘጋ ዘንድ መልአክ ላከ', 'ዳንኤልን የማይታይ አደረገው', 'አናብስቱን አስወገደ'],
          correctIndex: 1,
        ),
      ];

  static List<Quiz> _fieryFurnace() => [
        Quiz(
          id: 'fiery_furnace_1',
          storyId: 'fiery_furnace',
          questionEn: 'What did the king command everyone to do?',
          questionAm: 'ንጉሡ ሁሉም ሰው ምን እንዲያደርግ አዘዘ?',
          optionsEn: const ['Sing songs', 'Bow down to a golden statue', 'Build a temple', 'Pay taxes'],
          optionsAm: const ['ዘፈን ይዘምሩ', 'ለወርቅ ምስል ይስገዱ', 'ቤተ መቅደስ ይሥሩ', 'ግብር ይክፈሉ'],
          correctIndex: 1,
        ),
        Quiz(
          id: 'fiery_furnace_2',
          storyId: 'fiery_furnace',
          questionEn: 'What did the three friends say would happen even if God didn\'t save them?',
          questionAm: 'ሦስቱ ወዳጆች እግዚአብሔር ባያድናቸውም ምን እንደሚሆን ተናገሩ?',
          optionsEn: const ['They would run away', 'They still wouldn\'t bow to the statue', 'They would give up', 'They would fight'],
          optionsAm: const ['ይሸሻሉ', 'ለምስሉ አሁንም አይሰግዱም', 'ተስፋ ይቆርጣሉ', 'ይዋጋሉ'],
          correctIndex: 1,
        ),
        Quiz(
          id: 'fiery_furnace_3',
          storyId: 'fiery_furnace',
          questionEn: 'What did the king see in the furnace?',
          questionAm: 'ንጉሡ በእቶኑ ውስጥ ያየው ምንድን ነው?',
          optionsEn: const ['Only smoke', 'Four men walking, unharmed', 'Nothing', 'The three men crying'],
          optionsAm: const ['ጭስ ብቻ', 'አራት ሰዎች ሳይጎዱ ሲራመዱ', 'ምንም', 'ሦስቱ ሰዎች ሲያለቅሱ'],
          correctIndex: 1,
        ),
      ];

  static List<Quiz> _jonahBigFish() => [
        Quiz(
          id: 'jonah_big_fish_1',
          storyId: 'jonah_big_fish',
          questionEn: 'Where did God tell Jonah to go?',
          questionAm: 'እግዚአብሔር ዮናስን የት እንዲሄድ ነገረው?',
          optionsEn: const ['Jerusalem', 'Nineveh', 'Egypt', 'Babylon'],
          optionsAm: const ['ኢየሩሳሌም', 'ነነዌ', 'ግብፅ', 'ባቢሎን'],
          correctIndex: 1,
        ),
        Quiz(
          id: 'jonah_big_fish_2',
          storyId: 'jonah_big_fish',
          questionEn: 'How many days was Jonah inside the fish?',
          questionAm: 'ዮናስ በዓሣው ውስጥ ስንት ቀናት ቆየ?',
          optionsEn: const ['One', 'Three', 'Seven', 'Forty'],
          optionsAm: const ['አንድ', 'ሦስት', 'ሰባት', 'አርባ'],
          correctIndex: 1,
        ),
        Quiz(
          id: 'jonah_big_fish_3',
          storyId: 'jonah_big_fish',
          questionEn: 'What happened when Jonah finally preached in Nineveh?',
          questionAm: 'ዮናስ በመጨረሻ በነነዌ ሲሰብክ ምን ሆነ?',
          optionsEn: const ['No one listened', 'The whole city turned from its wicked ways', 'He was arrested', 'Nothing changed'],
          optionsAm: const ['ማንም አላዳመጠም', 'መላው ከተማ ከክፉ መንገዷ ተመለሰች', 'ተያዘ', 'ምንም አልተለወጠም'],
          correctIndex: 1,
        ),
      ];
}
