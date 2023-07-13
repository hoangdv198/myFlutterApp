import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

const String tabbarPostIconSvg = '''
<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none">
  <rect x="2" y="2" width="20" height="20" rx="5" stroke="black" stroke-width="1.8"/>
  <line x1="12.1" y1="6.9" x2="12.1" y2="17.1" stroke="black" stroke-width="1.8" stroke-linecap="round"/>
  <line x1="6.9" y1="11.8" x2="17.1" y2="11.8" stroke="black" stroke-width="1.8" stroke-linecap="round"/>
</svg>
''';


final Widget iconPostInactiveTabbar = SvgPicture.string(tabbarPostIconSvg);

final Widget iconPostActiveTabbar = SvgPicture.string(tabbarPostIconSvg);