class Planete {
  final String nom;
  final String image;
  final String description;
  final String distanceDuSoleil;
  final String tempsRotation;
  final String tempsRevolution;

  Planete({
    required this.nom,
    required this.image,
    required this.description,
    required this.distanceDuSoleil,
    required this.tempsRotation,
    required this.tempsRevolution,
  });
}

List<Planete> planetes = [
  Planete(
    nom: 'عطارد',
    image: 'assets/img/mercury.png',
    description: 'عطارد، رسول النجوم السريعة وأسرع كوكب يدور حول الشمس. يطل علينا بلونه الرمادي البارد، عاكساً قسوة الجبال المدمرة والخنادق العميقة، مشبعاً بالأساطير والغرائب، وكأنه فارس لا يهدأ في معركة دائمة مع الرياح الكونية.',
    distanceDuSoleil: '57.91 مليون كيلومتر',
    tempsRotation: '58.6 يوم',
    tempsRevolution: '88 يوم',
  ),
  Planete(
    nom: 'الزهرة',
    image: 'assets/img/venus.png',
    description: 'الزهرة، الكوكب المتألق بجماله الأخاذ وسحره الغامض، محاطة بسحب كثيفة من الأحماض الكبريتية. تشبه عروساً سماوية مزينة بضياء ذهبي، لكن تحت هذا الجمال تختفي حرارة ملتهبة وضغوط هائلة، مثل نار مخبأة تحت ستار من الحرير.',
    distanceDuSoleil: '108.2 مليون كيلومتر',
    tempsRotation: '243 يوم',
    tempsRevolution: '225 يوم',
  ),
  Planete(
    nom: 'الأرض',
    image: 'assets/img/earth.png',
    description: 'الأرض، الكوكب الأزرق، مهد الحياة ومصدر كل الكائنات. تتلألأ ببحارها الشاسعة وغاباتها الخصبة، وتعانقها السحب البيضاء كالأم التي تحضن أطفالها. هنا تتجلى الطبيعة بكل تناقضاتها وسحرها، حيث يوجد التناغم في قلب الفوضى.',
    distanceDuSoleil: '149.6 مليون كيلومتر',
    tempsRotation: '24 ساعة',
    tempsRevolution: '365.25 يوم',
  ),
  Planete(
    nom: 'المريخ',
    image: 'assets/img/mars.png',
    description: 'المريخ، الكوكب الأحمر، كوكب الحرب والشجاعة. جباله العالية وعواصفه الرملية تجعله يبدو وكأنه مقاتل في صحراء شاسعة. قشرته المغطاة بالحديد تمنحه لون الدم، ليصبح رمزاً للصراع والرغبة في البقاء والتحدي.',
    distanceDuSoleil: '227.9 مليون كيلومتر',
    tempsRotation: '24.6 ساعة',
    tempsRevolution: '687 يوم',
  ),
  Planete(
    nom: 'المشتري',
    image: 'assets/img/jupiter.png',
    description: 'المشتري، الملك العملاق، هو سيد السماء بحجمه الهائل ودواماته الضخمة. تزينه البقعة الحمراء، عاصفة عظيمة تدور منذ قرون، وكأنها عين تحرس الكون. يراقب كل شيء في صمت وجلال، رمزاً للقوة والعظمة.',
    distanceDuSoleil: '778.5 مليون كيلومتر',
    tempsRotation: '9.9 ساعة',
    tempsRevolution: '11.86 سنة',
  ),
  Planete(
    nom: 'زحل',
    image: 'assets/img/saturn.png',
    description: 'زحل، الكوكب المزدان بالحلقات الرائعة، كأنه ملك يجلس على عرشه مرتدياً تاجاً من الضوء والجليد. حلقاته المتلألئة تحكي قصصاً عن الزمن والمسافات، جمال لا يُضاهى من صخور وبلورات تحوم حوله في انسجام ساحر.',
    distanceDuSoleil: '1.43 مليار كيلومتر',
    tempsRotation: '10.7 ساعة',
    tempsRevolution: '29.46 سنة',
  ),
  Planete(
    nom: 'أورانوس',
    image: 'assets/img/uranus.png',
    description: 'أورانوس، الكوكب الحالم المائل بزاوية غريبة، يدور في تناغم صامت وسط الظلام. لون أزرق أخضر غامق يمنحه جواً من الغموض والبرودة. يحكي قصة ثورة مختلفة، حيث يدور بطريقة مميزة، كتذكار على استقلاله في الكون.',
    distanceDuSoleil: '2.87 مليار كيلومتر',
    tempsRotation: '17.2 ساعة',
    tempsRevolution: '84.01 سنة',
  ),
  Planete(
    nom: 'نبتون',
    image: 'assets/img/neptune.png',
    description: 'نبتون، كوكب الغيوم الداكنة والرياح العاتية، يرقص في الفضاء بأسلوبه الخاص. بعيد في أعماق الظلام، يبدو كملك البحار، حيث تلوح رياحه الزرقاء الداكنة كالأمواج التي تضرب شواطئاً بعيدة في أفق الكون المجهول.',
    distanceDuSoleil: '4.5 مليار كيلومتر',
    tempsRotation: '16 ساعة',
    tempsRevolution: '164.8 سنة',
  ),
];
