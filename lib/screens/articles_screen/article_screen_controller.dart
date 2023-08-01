import 'package:doctor/screens/articles_screen/top_doctors/all_article.dart';
import 'package:get/get.dart';

import '../../utils/asset_res.dart';

class ArticleController extends GetxController {
  List<Map> trendingArticles = [
    {
      'cover': AssetRes.spicesArticleCover,
      'description': 'Adding Salt to Your Food May increaseRisk of',
    },
    {
      'cover': AssetRes.covidArticleCover,
      'description':
          'Clean your hands frequently with alcohol-based hand rub or soap and water. '
              'Cover your mouth and nose with a bent elbow or tissue when you cough or sneeze.',
    },
    {
      'cover': AssetRes.alcoholArticleCover,
      'description': 'Study finds being \'hangry\' is a real thing',
    },
    {
      'cover': AssetRes.childhoodArticleCover,
      'description': 'Why childhood Obesity Rates are Rising and What you all '
          'thinkin about it also afraid of all about this',
    },
  ];
  List articlesTab = ['Newest', 'Health', 'Covid-19', 'LifeStyle'];
  bool articleTabIndex = false;

  void articleTab() {
    articleTabIndex = !articleTabIndex;
    update(['ArticleController']);
  }
  void allArticles(){
    Get.to(const AllArticles());
    update();
  }

  List<Map> articleData = [
    {
      'cover': AssetRes.coronaVirusArticleCover,
      'date': 'dec 22,2022',
      'description':
          'Clean your hands frequently with alcohol-based hand rub or soap and water. '
              'Cover your mouth and nose with a bent elbow or tissue when you cough or sneeze.',
      'label': 'Covid-19',
    }, {
      'cover': AssetRes.alcohole2ArticleCover,
      'date': 'dec 22,2022',
      'description':
          'Clean your hands frequently with alcohol-based hand rub or soap and water. '
              'Cover your mouth and nose with a bent elbow or tissue when you cough or sneeze.',
      'label': 'Covid-19',
    }, {
      'cover': AssetRes.depressedPersonArticleCover,
      'date': 'dec 22,2022',
      'description':
          'Clean your hands frequently with alcohol-based hand rub or soap and water. '
              'Cover your mouth and nose with a bent elbow or tissue when you cough or sneeze.',
      'label': 'Covid-19',
    },
    {
      'cover': AssetRes.childhoodArticleCover,
      'date': 'dec 22,2022',
      'description':
          'Clean your hands frequently with alcohol-based hand rub or soap and water. '
              'Cover your mouth and nose with a bent elbow or tissue when you cough or sneeze.',
      'label': 'Covid-19',
    },
  ];
}