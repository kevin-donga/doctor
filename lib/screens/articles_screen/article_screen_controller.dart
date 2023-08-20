import 'package:get/get.dart';

import '../../utils/asset_res.dart';
import 'all_articles/all_article.dart';
import 'all_articles/allArticle_describe_screen/allArticle_describe_screen.dart';
import 'bookmark_article_screen/bookmark_articles.dart';

class ArticleController extends GetxController {
  List<Map> trendingArticles = [
    {
      'cover': AssetRes.spicesArticleCover,
      'description': 'Adding Salt to Your Food May increaseRisk of',
      'date': 'dec 22,2022',
      'headLine':
          'Clean your hands frequently with alcohol-based hand rub or soap and water. '
              'Cover your mouth and nose with a bent elbow or tissue when you cough or sneeze.',
      'label': 'Covid-19',
    },
    {
      'cover': AssetRes.covidArticleCover,
      'description':
          'Clean your hands frequently with alcohol-based hand rub or soap and water. '
              'Cover your mouth and nose with a bent elbow or tissue when you cough or sneeze.',
      'date': 'dec 22,2022',
      'headLine':
          'Clean your hands frequently with alcohol-based hand rub or soap and water. '
              'Cover your mouth and nose with a bent elbow or tissue when you cough or sneeze.',
      'label': 'Covid-19',
    },
    {
      'cover': AssetRes.alcoholArticleCover,
      'description': 'Study finds being \'hangry\' is a real thing',
      'date': 'dec 22,2022',
      'headLine':
          'Clean your hands frequently with alcohol-based hand rub or soap and water. '
              'Cover your mouth and nose with a bent elbow or tissue when you cough or sneeze.',
      'label': 'Covid-19',
    },
    {
      'cover': AssetRes.childhoodArticleCover,
      'description': 'Why childhood Obesity Rates are Rising and What you all '
          'thinkin about it also afraid of all about this',
      'date': 'dec 22,2022',
      'headLine':
          'Clean your hands frequently with alcohol-based hand rub or soap and water. '
              'Cover your mouth and nose with a bent elbow or tissue when you cough or sneeze.',
      'label': 'Covid-19',
    },
  ];
  List articlesTab = ['Newest', 'Health', 'Covid-19', 'LifeStyle'];
  bool articleTabIndex = false;

  List<Map> articleData = [
    {
      'cover': AssetRes.coronaVirusArticleCover,
      'date': 'dec 22,2022',
      'headLine':
          'Clean your hands frequently with alcohol-based hand rub or soap and water. '
              'Cover your mouth and nose with a bent elbow or tissue when you cough or sneeze.',
      'label': 'Covid-19',
      'description':
          'The COVID-19 pandemic has without a doubt exacerbated major economic and social challenges across the globe. In Africa, young people, especially the vulnerable youth, have not been spared the devastating effects of the pandemic. The disruption by the COVID-19 pandemic has amplified many of the challenges already facing the continent’s youth.'
              'African governments are having to deal with the critical issues of disrupted education systems, reduced access to essential goods and services, increased poverty, food insecurity, and exposure to violence, abuse, and exploitation. They are also having to deal with vaccine access, uptake, and distribution in the context of weaknesses in health systems exposed by the pandemic. But these governments are yet to address growing concerns about authoritarianism and the mismanagement of COVID-19 funds and the allocation of resources meant for interventions in health, education, and infrastructural development. Corruption, represented in the lack of transparency and accountability during the pandemic, is affecting inclusive and sustainable recovery for youth and other marginalised groups.'
              'Young people, who constitute about 65% of Africa’s population, have exhibited a high appetite for leading the way in continental pandemic recovery efforts. Many young people have exemplified themselves as active agents in the fight against COVID-19 by volunteering as frontliners in essential services, while others are constantly innovating to meet the emerging demands for essential products. The challenge for all is to embolden young people to escalate their contributions to the African recovery agenda by spearheading a network of local catalytic solutions, supported by regional advocacy and policy influencing. There should therefore be no recovery efforts on the continent without the youth.'
    },
    {
      'cover': AssetRes.alcohole2ArticleCover,
      'date': 'dec 22,2022',
      'headLine':
          'Clean your hands frequently with alcohol-based hand rub or soap and water. '
              'Cover your mouth and nose with a bent elbow or tissue when you cough or sneeze.',
      'label': 'Health',
      'description':
          'The COVID-19 pandemic has without a doubt exacerbated major economic and social challenges across the globe. In Africa, young people, especially the vulnerable youth, have not been spared the devastating effects of the pandemic. The disruption by the COVID-19 pandemic has amplified many of the challenges already facing the continent’s youth.'
              'African governments are having to deal with the critical issues of disrupted education systems, reduced access to essential goods and services, increased poverty, food insecurity, and exposure to violence, abuse, and exploitation. They are also having to deal with vaccine access, uptake, and distribution in the context of weaknesses in health systems exposed by the pandemic. But these governments are yet to address growing concerns about authoritarianism and the mismanagement of COVID-19 funds and the allocation of resources meant for interventions in health, education, and infrastructural development. Corruption, represented in the lack of transparency and accountability during the pandemic, is affecting inclusive and sustainable recovery for youth and other marginalised groups.'
              'Young people, who constitute about 65% of Africa’s population, have exhibited a high appetite for leading the way in continental pandemic recovery efforts. Many young people have exemplified themselves as active agents in the fight against COVID-19 by volunteering as frontliners in essential services, while others are constantly innovating to meet the emerging demands for essential products. The challenge for all is to embolden young people to escalate their contributions to the African recovery agenda by spearheading a network of local catalytic solutions, supported by regional advocacy and policy influencing. There should therefore be no recovery efforts on the continent without the youth.'
    },
    {
      'cover': AssetRes.depressedPersonArticleCover,
      'date': 'dec 21,2022',
      'headLine':
          'Clean your hands frequently with alcohol-based hand rub or soap and water. '
              'Cover your mouth and nose with a bent elbow or tissue when you cough or sneeze.',
      'label': 'LifeStyle',
      'description':
          'The COVID-19 pandemic has without a doubt exacerbated major economic and social challenges across the globe. In Africa, young people, especially the vulnerable youth, have not been spared the devastating effects of the pandemic. The disruption by the COVID-19 pandemic has amplified many of the challenges already facing the continent’s youth.'
              'African governments are having to deal with the critical issues of disrupted education systems, reduced access to essential goods and services, increased poverty, food insecurity, and exposure to violence, abuse, and exploitation. They are also having to deal with vaccine access, uptake, and distribution in the context of weaknesses in health systems exposed by the pandemic. But these governments are yet to address growing concerns about authoritarianism and the mismanagement of COVID-19 funds and the allocation of resources meant for interventions in health, education, and infrastructural development. Corruption, represented in the lack of transparency and accountability during the pandemic, is affecting inclusive and sustainable recovery for youth and other marginalised groups.'
              'Young people, who constitute about 65% of Africa’s population, have exhibited a high appetite for leading the way in continental pandemic recovery efforts. Many young people have exemplified themselves as active agents in the fight against COVID-19 by volunteering as frontliners in essential services, while others are constantly innovating to meet the emerging demands for essential products. The challenge for all is to embolden young people to escalate their contributions to the African recovery agenda by spearheading a network of local catalytic solutions, supported by regional advocacy and policy influencing. There should therefore be no recovery efforts on the continent without the youth.'
    },
    {
      'cover': AssetRes.childhoodArticleCover,
      'date': 'dec 21,2022',
      'headLine':
          'Clean your hands frequently with alcohol-based hand rub or soap and water. '
              'Cover your mouth and nose with a bent elbow or tissue when you cough or sneeze.',
      'label': 'Medical',
      'description':
          'The COVID-19 pandemic has without a doubt exacerbated major economic and social challenges across the globe. In Africa, young people, especially the vulnerable youth, have not been spared the devastating effects of the pandemic. The disruption by the COVID-19 pandemic has amplified many of the challenges already facing the continent’s youth.'
              'African governments are having to deal with the critical issues of disrupted education systems, reduced access to essential goods and services, increased poverty, food insecurity, and exposure to violence, abuse, and exploitation. They are also having to deal with vaccine access, uptake, and distribution in the context of weaknesses in health systems exposed by the pandemic. But these governments are yet to address growing concerns about authoritarianism and the mismanagement of COVID-19 funds and the allocation of resources meant for interventions in health, education, and infrastructural development. Corruption, represented in the lack of transparency and accountability during the pandemic, is affecting inclusive and sustainable recovery for youth and other marginalised groups.'
              'Young people, who constitute about 65% of Africa’s population, have exhibited a high appetite for leading the way in continental pandemic recovery efforts. Many young people have exemplified themselves as active agents in the fight against COVID-19 by volunteering as frontliners in essential services, while others are constantly innovating to meet the emerging demands for essential products. The challenge for all is to embolden young people to escalate their contributions to the African recovery agenda by spearheading a network of local catalytic solutions, supported by regional advocacy and policy influencing. There should therefore be no recovery efforts on the continent without the youth.'
    },
    {
      'cover': AssetRes.coronaVirusArticleCover,
      'date': 'dec 20,2022',
      'headLine':
          'Clean your hands frequently with alcohol-based hand rub or soap and water. '
              'Cover your mouth and nose with a bent elbow or tissue when you cough or sneeze.',
      'label': 'Covid-19',
      'description':
          'The COVID-19 pandemic has without a doubt exacerbated major economic and social challenges across the globe. In Africa, young people, especially the vulnerable youth, have not been spared the devastating effects of the pandemic. The disruption by the COVID-19 pandemic has amplified many of the challenges already facing the continent’s youth.'
              'African governments are having to deal with the critical issues of disrupted education systems, reduced access to essential goods and services, increased poverty, food insecurity, and exposure to violence, abuse, and exploitation. They are also having to deal with vaccine access, uptake, and distribution in the context of weaknesses in health systems exposed by the pandemic. But these governments are yet to address growing concerns about authoritarianism and the mismanagement of COVID-19 funds and the allocation of resources meant for interventions in health, education, and infrastructural development. Corruption, represented in the lack of transparency and accountability during the pandemic, is affecting inclusive and sustainable recovery for youth and other marginalised groups.'
              'Young people, who constitute about 65% of Africa’s population, have exhibited a high appetite for leading the way in continental pandemic recovery efforts. Many young people have exemplified themselves as active agents in the fight against COVID-19 by volunteering as frontliners in essential services, while others are constantly innovating to meet the emerging demands for essential products. The challenge for all is to embolden young people to escalate their contributions to the African recovery agenda by spearheading a network of local catalytic solutions, supported by regional advocacy and policy influencing. There should therefore be no recovery efforts on the continent without the youth.'
    },
    {
      'cover': AssetRes.alcohole2ArticleCover,
      'date': 'dec 22,2022',
      'headLine':
          'Clean your hands frequently with alcohol-based hand rub or soap and water. '
              'Cover your mouth and nose with a bent elbow or tissue when you cough or sneeze.',
      'label': 'Health',
      'description':
          'The COVID-19 pandemic has without a doubt exacerbated major economic and social challenges across the globe. In Africa, young people, especially the vulnerable youth, have not been spared the devastating effects of the pandemic. The disruption by the COVID-19 pandemic has amplified many of the challenges already facing the continent’s youth.'
              'African governments are having to deal with the critical issues of disrupted education systems, reduced access to essential goods and services, increased poverty, food insecurity, and exposure to violence, abuse, and exploitation. They are also having to deal with vaccine access, uptake, and distribution in the context of weaknesses in health systems exposed by the pandemic. But these governments are yet to address growing concerns about authoritarianism and the mismanagement of COVID-19 funds and the allocation of resources meant for interventions in health, education, and infrastructural development. Corruption, represented in the lack of transparency and accountability during the pandemic, is affecting inclusive and sustainable recovery for youth and other marginalised groups.'
              'Young people, who constitute about 65% of Africa’s population, have exhibited a high appetite for leading the way in continental pandemic recovery efforts. Many young people have exemplified themselves as active agents in the fight against COVID-19 by volunteering as frontliners in essential services, while others are constantly innovating to meet the emerging demands for essential products. The challenge for all is to embolden young people to escalate their contributions to the African recovery agenda by spearheading a network of local catalytic solutions, supported by regional advocacy and policy influencing. There should therefore be no recovery efforts on the continent without the youth.'
    },
    {
      'cover': AssetRes.depressedPersonArticleCover,
      'date': 'dec 21,2022',
      'headLine':
          'Clean your hands frequently with alcohol-based hand rub or soap and water. '
              'Cover your mouth and nose with a bent elbow or tissue when you cough or sneeze.',
      'label': 'LifeStyle',
      'description':
          'The COVID-19 pandemic has without a doubt exacerbated major economic and social challenges across the globe. In Africa, young people, especially the vulnerable youth, have not been spared the devastating effects of the pandemic. The disruption by the COVID-19 pandemic has amplified many of the challenges already facing the continent’s youth.'
              'African governments are having to deal with the critical issues of disrupted education systems, reduced access to essential goods and services, increased poverty, food insecurity, and exposure to violence, abuse, and exploitation. They are also having to deal with vaccine access, uptake, and distribution in the context of weaknesses in health systems exposed by the pandemic. But these governments are yet to address growing concerns about authoritarianism and the mismanagement of COVID-19 funds and the allocation of resources meant for interventions in health, education, and infrastructural development. Corruption, represented in the lack of transparency and accountability during the pandemic, is affecting inclusive and sustainable recovery for youth and other marginalised groups.'
              'Young people, who constitute about 65% of Africa’s population, have exhibited a high appetite for leading the way in continental pandemic recovery efforts. Many young people have exemplified themselves as active agents in the fight against COVID-19 by volunteering as frontliners in essential services, while others are constantly innovating to meet the emerging demands for essential products. The challenge for all is to embolden young people to escalate their contributions to the African recovery agenda by spearheading a network of local catalytic solutions, supported by regional advocacy and policy influencing. There should therefore be no recovery efforts on the continent without the youth.'
    },
    {
      'cover': AssetRes.childhoodArticleCover,
      'date': 'dec 21,2022',
      'headLine':
          'Clean your hands frequently with alcohol-based hand rub or soap and water. '
              'Cover your mouth and nose with a bent elbow or tissue when you cough or sneeze.',
      'label': 'Medical',
      'description':
          'The COVID-19 pandemic has without a doubt exacerbated major economic and social challenges across the globe. In Africa, young people, especially the vulnerable youth, have not been spared the devastating effects of the pandemic. The disruption by the COVID-19 pandemic has amplified many of the challenges already facing the continent’s youth.'
              'African governments are having to deal with the critical issues of disrupted education systems, reduced access to essential goods and services, increased poverty, food insecurity, and exposure to violence, abuse, and exploitation. They are also having to deal with vaccine access, uptake, and distribution in the context of weaknesses in health systems exposed by the pandemic. But these governments are yet to address growing concerns about authoritarianism and the mismanagement of COVID-19 funds and the allocation of resources meant for interventions in health, education, and infrastructural development. Corruption, represented in the lack of transparency and accountability during the pandemic, is affecting inclusive and sustainable recovery for youth and other marginalised groups.'
              'Young people, who constitute about 65% of Africa’s population, have exhibited a high appetite for leading the way in continental pandemic recovery efforts. Many young people have exemplified themselves as active agents in the fight against COVID-19 by volunteering as frontliners in essential services, while others are constantly innovating to meet the emerging demands for essential products. The challenge for all is to embolden young people to escalate their contributions to the African recovery agenda by spearheading a network of local catalytic solutions, supported by regional advocacy and policy influencing. There should therefore be no recovery efforts on the continent without the youth.'
    },
  ];
  int selectedIndex = 0;

  void articleTab() {
    articleTabIndex = !articleTabIndex;
    update(['ArticleController']);
  }

  void allArticles() {
    Get.to(const AllArticles());
    update();
  }

  void articleOnTap(int index) {
    selectedIndex = index;
    Get.to(() => DescribeAllArticles());
    update();
  }

  void topArticleOnTap(int index) {
    selectedIndex = index;
    // Get.to(() => DescribeAllArticles());
    update();
  }

  void bookmarkOntap() {
    // print(AllArticlesController.bookmarkArticle);
    Get.to(() => const BookMarkArticles());
  }

  List bookmarkArticle = [];

  void addToBookmark(String value) {
    bookmarkArticle.add(value);
  }

  void removeFromBookmark(String value) {
    bookmarkArticle.remove(value);
  }

  void bookmarkOnTap(index) {
    if (bookmarkArticle.contains(articleData[index].toString())) {
      removeFromBookmark(articleData[index].toString());
      print('remove to bookmark');
    } else {
      addToBookmark(articleData[index].toString());
      print('add to bookmark');
    }
    update();
    print('bookmark articles==============${bookmarkArticle}');
  }
}
