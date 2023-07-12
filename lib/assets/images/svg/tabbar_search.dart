import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

const String tabbarSearchIconSvg = '''
<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none">
  <circle cx="10" cy="10" r="8.1" stroke="black" stroke-width="1.8"/>
  <path d="M22 22L16 16" stroke="black" stroke-width="1.8" stroke-linecap="round"/>
</svg>
''';

const String tabbarSearchIconSvg_active = '''
<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none">
  <circle cx="10" cy="10" r="7.75" stroke="black" stroke-width="2.5"/>
  <path d="M22 22L16 16" stroke="black" stroke-width="2.5" stroke-linecap="round"/>
</svg>
''';

final Widget iconSearchInactiveTabbar = SvgPicture.string(tabbarSearchIconSvg);

final Widget iconSearchActiveTabbar = SvgPicture.string(tabbarSearchIconSvg_active);
