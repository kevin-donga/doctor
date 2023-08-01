import 'package:get/get.dart';

import '../../../utils/asset_res.dart';

class AllArticlesController extends GetxController {
  List<Map> allArticleData = [
    {
      'cover': AssetRes.coronaVirusArticleCover,
      'date': 'dec 22,2022',
      'description':
          'Clean your hands frequently with alcohol-based hand rub or soap and water. '
              'Cover your mouth and nose with a bent elbow or tissue when you cough or sneeze.',
      'label': 'Covid-19',
    },
    {
      'cover': AssetRes.alcohole2ArticleCover,
      'date': 'dec 22,2022',
      'description':
          'Clean your hands frequently with alcohol-based hand rub or soap and water. '
              'Cover your mouth and nose with a bent elbow or tissue when you cough or sneeze.',
      'label': 'Health',
    },
    {
      'cover': AssetRes.depressedPersonArticleCover,
      'date': 'dec 21,2022',
      'description':
          'Clean your hands frequently with alcohol-based hand rub or soap and water. '
              'Cover your mouth and nose with a bent elbow or tissue when you cough or sneeze.',
      'label': 'LifeStyle',
    },
    {
      'cover': AssetRes.childhoodArticleCover,
      'date': 'dec 21,2022',
      'description':
          'Clean your hands frequently with alcohol-based hand rub or soap and water. '
              'Cover your mouth and nose with a bent elbow or tissue when you cough or sneeze.',
      'label': 'Medical',
    },
    {
      'cover': AssetRes.coronaVirusArticleCover,
      'date': 'dec 20,2022',
      'description':
          'Clean your hands frequently with alcohol-based hand rub or soap and water. '
              'Cover your mouth and nose with a bent elbow or tissue when you cough or sneeze.',
      'label': 'Covid-19',
    },
    {
      'cover': AssetRes.alcohole2ArticleCover,
      'date': 'dec 17,2022',
      'description':
          'Clean your hands frequently with alcohol-based hand rub or soap and water. '
              'Cover your mouth and nose with a bent elbow or tissue when you cough or sneeze.',
      'label': 'Covid-19',
    },
    {
      'cover': AssetRes.depressedPersonArticleCover,
      'date': 'dec 22,2022',
      'description':
          'Clean your hands frequently with alcohol-based hand rub or soap and water. '
              'Cover your mouth and nose with a bent elbow or tissue when you cough or sneeze.',
      'label': 'Neuro',
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
  List allArticlesTab = ['Newest', 'Health', 'Covid-19', 'LifeStyle'];
  bool allArticleTabIndex = false;

  void allArticleTab() {
    allArticleTabIndex = !allArticleTabIndex;
    update(['AllArticlesController']);
  }
}
