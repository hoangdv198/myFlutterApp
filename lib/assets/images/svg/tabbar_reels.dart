import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

const String tabbarReelsIconSvg = '''
<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none">
  <path d="M15.24 14.3268C15.5867 14.5334 15.5867 15.0499 15.24 15.2565L9.78 18.5106C9.43333 18.7172 9 18.459 9 18.0457L9 11.5376C9 11.1244 9.43333 10.8661 9.78 11.0727L15.24 14.3268Z" fill="black"/>
  <path d="M6 2L10 8" stroke="black" stroke-width="1.8"/>
  <path d="M13 2L17 8" stroke="black" stroke-width="1.8"/>
  <rect x="1.9" y="1.9" width="20.2" height="20.2" rx="5.1" stroke="black" stroke-width="1.8"/>
  <path d="M2 8H22" stroke="black" stroke-width="1.8"/>
</svg>
''';

const String tabbarReelsIconSvg_active = '''
  <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M1.50257 7.32268C1.59636 4.09099 4.2456 1.5 7.5 1.5H11.2857L15.1675 7.32268H10.5507L6.70381 1.5524C6.09364 1.6333 5.51242 1.8059 4.97446 2.05588L8.48566 7.32268H1.50257ZM1.5 7.5C1.5 7.44069 1.50086 7.38158 1.50257 7.32268H1.5V7.5ZM1.5 9.04086V16.5C1.5 19.8137 4.18629 22.5 7.5 22.5H16.5C19.8137 22.5 22.5 19.8137 22.5 16.5V9.04086H1.5ZM22.5 7.5V7.32268H22.4974C22.4036 4.09099 19.7544 1.5 16.5 1.5H13.3507L17.2325 7.32268H22.4974C22.4991 7.38158 22.5 7.44069 22.5 7.5ZM15.0927 14.2211C15.4236 14.4183 15.4236 14.9113 15.0927 15.1085L9.88091 18.2147C9.55 18.4119 9.13637 18.1654 9.13637 17.771L9.13637 11.5586C9.13637 11.1642 9.55001 10.9177 9.88091 11.1149L15.0927 14.2211Z" fill="black"/>
  </svg>
''';

final Widget iconReelsInactiveTabbar = SvgPicture.string(tabbarReelsIconSvg);

final Widget iconReelsActiveTabbar = SvgPicture.string(tabbarReelsIconSvg_active);

