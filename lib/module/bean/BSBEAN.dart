/// code : 0
/// msg : ""
/// data : {"ore":{"blue":"48","red":"1056"},"harvest":true,"second":1088,"mech":{"svga":"http://img.baoshixingqiu.com/mech/standby/v4_0_1.svga","img":"http://img.baoshixingqiu.com/mech/thumb/MECH00.png","state":1,"energy_active":28,"mech_addition_tips":"0","energy_active_text":"28=28+28��0%(ԭʼ����)","mech_reach_blue":128,"mech_reach_red":2080},"buttons":[{"name":"�����տ�","desc":"��Ƶ���-android","pic":"http://img.baoshixingqiu.com/public/home_ljsk.png","flag":"1","_jumpway":{"action":"page","title":"","url":"","page":"60","navbar":0,"type":"0","ext":"eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpZCI6IjQ0IiwidXNlcmlkIjoxODQyMTE2LCJpYXQiOjE2MzI2MjQ0MTIsImV4cCI6MTYzMjYzMTYxMn0.jz-Mq7yCTnSrPnmTCzvxRKXrl7ee849RsnJNcyJ7gB8"},"_options":{"type":1,"enable":true,"label":"�����տ�","pic":"http://img.baoshixingqiu.com/public/home_ljsk.png","ad_type":4,"icon":"http://img.baoshixingqiu.com/public/home_ore_flag@3x.png?v2"}},{"name":"������","desc":"������","pic":"http://img.baoshixingqiu.com/public/home-areas/8d58148a25e9b42b5864230142fb1161.png?1623744236","flag":"0","_jumpway":{"action":"page","title":"","url":"","page":"78","navbar":0,"type":"0"},"_options":{"type":0,"enable":true,"pic":"http://img.baoshixingqiu.com/public/home-areas/8d58148a25e9b42b5864230142fb1161.png?1623744236","ad_type":0,"icon":"http://img.baoshixingqiu.com/public/home_ore_flag@3x.png?v2"}},{"name":"ÿ������","desc":"ÿ������","pic":"http://img.baoshixingqiu.com/public/home-areas/79c2b7963d1bdc8e7ecca1536b56b8b8.png?1587094833","flag":"0","_jumpway":{"action":"page","title":"","url":"","page":"1","navbar":0,"type":"0"},"_options":{"type":0,"enable":true,"pic":"http://img.baoshixingqiu.com/public/home-areas/79c2b7963d1bdc8e7ecca1536b56b8b8.png?1587094833","ad_type":0,"icon":"http://img.baoshixingqiu.com/public/home_ore_flag@3x.png?v2"}}],"income":{"blue":0,"red":0},"act_win_pop":1,"tips":"��ȡ����ԴԽ������Ŀ�ʯԽ��","percent":100,"pre_load_ad":1}

class BSBEAN {
  int code;
  String msg;
  DataBean data;

  @override
  String toString() {
    return 'BSBEAN{code: $code, msg: $msg, data: $data}';
  }

  static BSBEAN fromMap(Map<String, dynamic> map) {
    if (map == null) return null;
    BSBEAN bSBEANBean = BSBEAN();
    bSBEANBean.code = map['code'];
    bSBEANBean.msg = map['msg'];
    bSBEANBean.data = DataBean.fromMap(map['data']);
    return bSBEANBean;
  }

  Map toJson() => {
    "code": code,
    "msg": msg,
    "data": data,
  };
}

/// ore : {"blue":"48","red":"1056"}
/// harvest : true
/// second : 1088
/// mech : {"svga":"http://img.baoshixingqiu.com/mech/standby/v4_0_1.svga","img":"http://img.baoshixingqiu.com/mech/thumb/MECH00.png","state":1,"energy_active":28,"mech_addition_tips":"0","energy_active_text":"28=28+28��0%(ԭʼ����)","mech_reach_blue":128,"mech_reach_red":2080}
/// buttons : [{"name":"�����տ�","desc":"��Ƶ���-android","pic":"http://img.baoshixingqiu.com/public/home_ljsk.png","flag":"1","_jumpway":{"action":"page","title":"","url":"","page":"60","navbar":0,"type":"0","ext":"eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpZCI6IjQ0IiwidXNlcmlkIjoxODQyMTE2LCJpYXQiOjE2MzI2MjQ0MTIsImV4cCI6MTYzMjYzMTYxMn0.jz-Mq7yCTnSrPnmTCzvxRKXrl7ee849RsnJNcyJ7gB8"},"_options":{"type":1,"enable":true,"label":"�����տ�","pic":"http://img.baoshixingqiu.com/public/home_ljsk.png","ad_type":4,"icon":"http://img.baoshixingqiu.com/public/home_ore_flag@3x.png?v2"}},{"name":"������","desc":"������","pic":"http://img.baoshixingqiu.com/public/home-areas/8d58148a25e9b42b5864230142fb1161.png?1623744236","flag":"0","_jumpway":{"action":"page","title":"","url":"","page":"78","navbar":0,"type":"0"},"_options":{"type":0,"enable":true,"pic":"http://img.baoshixingqiu.com/public/home-areas/8d58148a25e9b42b5864230142fb1161.png?1623744236","ad_type":0,"icon":"http://img.baoshixingqiu.com/public/home_ore_flag@3x.png?v2"}},{"name":"ÿ������","desc":"ÿ������","pic":"http://img.baoshixingqiu.com/public/home-areas/79c2b7963d1bdc8e7ecca1536b56b8b8.png?1587094833","flag":"0","_jumpway":{"action":"page","title":"","url":"","page":"1","navbar":0,"type":"0"},"_options":{"type":0,"enable":true,"pic":"http://img.baoshixingqiu.com/public/home-areas/79c2b7963d1bdc8e7ecca1536b56b8b8.png?1587094833","ad_type":0,"icon":"http://img.baoshixingqiu.com/public/home_ore_flag@3x.png?v2"}}]
/// income : {"blue":0,"red":0}
/// act_win_pop : 1
/// tips : "��ȡ����ԴԽ������Ŀ�ʯԽ��"
/// percent : 100
/// pre_load_ad : 1

class DataBean {
  OreBean ore;
  bool harvest;
  int second;
  MechBean mech;
  List<ButtonsBean> buttons;
  IncomeBean income;
  int actWinPop;
  String tips;
  int percent;
  int preLoadAd;

  @override
  String toString() {
    return 'DataBean{ore: $ore, harvest: $harvest, second: $second, mech: $mech, buttons: $buttons, income: $income, actWinPop: $actWinPop, tips: $tips, percent: $percent, preLoadAd: $preLoadAd}';
  }

  static DataBean fromMap(Map<String, dynamic> map) {
    if (map == null) return null;
    DataBean dataBean = DataBean();
    dataBean.ore = OreBean.fromMap(map['ore']);
    dataBean.harvest = map['harvest'];
    dataBean.second = map['second'];
    dataBean.mech = MechBean.fromMap(map['mech']);
    dataBean.buttons = List()..addAll(
      (map['buttons'] as List ?? []).map((o) => ButtonsBean.fromMap(o))
    );
    dataBean.income = IncomeBean.fromMap(map['income']);
    dataBean.actWinPop = map['act_win_pop'];
    dataBean.tips = map['tips'];
    dataBean.percent = map['percent'];
    dataBean.preLoadAd = map['pre_load_ad'];
    return dataBean;
  }

  Map toJson() => {
    "ore": ore,
    "harvest": harvest,
    "second": second,
    "mech": mech,
    "buttons": buttons,
    "income": income,
    "act_win_pop": actWinPop,
    "tips": tips,
    "percent": percent,
    "pre_load_ad": preLoadAd,
  };
}

/// blue : 0
/// red : 0

class IncomeBean {
  int blue;
  int red;

  @override
  String toString() {
    return 'IncomeBean{blue: $blue, red: $red}';
  }

  static IncomeBean fromMap(Map<String, dynamic> map) {
    if (map == null) return null;
    IncomeBean incomeBean = IncomeBean();
    incomeBean.blue = map['blue'];
    incomeBean.red = map['red'];
    return incomeBean;
  }

  Map toJson() => {
    "blue": blue,
    "red": red,
  };
}

/// name : "�����տ�"
/// desc : "��Ƶ���-android"
/// pic : "http://img.baoshixingqiu.com/public/home_ljsk.png"
/// flag : "1"
/// _jumpway : {"action":"page","title":"","url":"","page":"60","navbar":0,"type":"0","ext":"eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpZCI6IjQ0IiwidXNlcmlkIjoxODQyMTE2LCJpYXQiOjE2MzI2MjQ0MTIsImV4cCI6MTYzMjYzMTYxMn0.jz-Mq7yCTnSrPnmTCzvxRKXrl7ee849RsnJNcyJ7gB8"}
/// _options : {"type":1,"enable":true,"label":"�����տ�","pic":"http://img.baoshixingqiu.com/public/home_ljsk.png","ad_type":4,"icon":"http://img.baoshixingqiu.com/public/home_ore_flag@3x.png?v2"}

class ButtonsBean {
  String name;
  String desc;
  String pic;
  String flag;
  JumpwayBean Jumpway;
  OptionsBean Options;

  @override
  String toString() {
    return 'ButtonsBean{name: $name, desc: $desc, pic: $pic, flag: $flag, Jumpway: $Jumpway, Options: $Options}';
  }

  static ButtonsBean fromMap(Map<String, dynamic> map) {
    if (map == null) return null;
    ButtonsBean buttonsBean = ButtonsBean();
    buttonsBean.name = map['name'];
    buttonsBean.desc = map['desc'];
    buttonsBean.pic = map['pic'];
    buttonsBean.flag = map['flag'];
    buttonsBean.Jumpway = JumpwayBean.fromMap(map['_jumpway']);
    buttonsBean.Options = OptionsBean.fromMap(map['_options']);
    return buttonsBean;
  }

  Map toJson() => {
    "name": name,
    "desc": desc,
    "pic": pic,
    "flag": flag,
    "_jumpway": Jumpway,
    "_options": Options,
  };
}

/// type : 1
/// enable : true
/// label : "�����տ�"
/// pic : "http://img.baoshixingqiu.com/public/home_ljsk.png"
/// ad_type : 4
/// icon : "http://img.baoshixingqiu.com/public/home_ore_flag@3x.png?v2"

class OptionsBean {
  int type;
  bool enable;
  String label;
  String pic;
  int adType;
  String icon;

  @override
  String toString() {
    return 'OptionsBean{type: $type, enable: $enable, label: $label, pic: $pic, adType: $adType, icon: $icon}';
  }

  static OptionsBean fromMap(Map<String, dynamic> map) {
    if (map == null) return null;
    OptionsBean _optionsBean = OptionsBean();
    _optionsBean.type = map['type'];
    _optionsBean.enable = map['enable'];
    _optionsBean.label = map['label'];
    _optionsBean.pic = map['pic'];
    _optionsBean.adType = map['ad_type'];
    _optionsBean.icon = map['icon'];
    return _optionsBean;
  }

  Map toJson() => {
    "type": type,
    "enable": enable,
    "label": label,
    "pic": pic,
    "ad_type": adType,
    "icon": icon,
  };
}

/// action : "page"
/// title : ""
/// url : ""
/// page : "60"
/// navbar : 0
/// type : "0"
/// ext : "eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpZCI6IjQ0IiwidXNlcmlkIjoxODQyMTE2LCJpYXQiOjE2MzI2MjQ0MTIsImV4cCI6MTYzMjYzMTYxMn0.jz-Mq7yCTnSrPnmTCzvxRKXrl7ee849RsnJNcyJ7gB8"

class JumpwayBean {
  String action;
  String title;
  String url;
  String page;
  int navbar;
  String type;
  String ext;

  @override
  String toString() {
    return 'JumpwayBean{action: $action, title: $title, url: $url, page: $page, navbar: $navbar, type: $type, ext: $ext}';
  }

  static JumpwayBean fromMap(Map<String, dynamic> map) {
    if (map == null) return null;
    JumpwayBean _jumpwayBean = JumpwayBean();
    _jumpwayBean.action = map['action'];
    _jumpwayBean.title = map['title'];
    _jumpwayBean.url = map['url'];
    _jumpwayBean.page = map['page'];
    _jumpwayBean.navbar = map['navbar'];
    _jumpwayBean.type = map['type'];
    _jumpwayBean.ext = map['ext'];
    return _jumpwayBean;
  }

  Map toJson() => {
    "action": action,
    "title": title,
    "url": url,
    "page": page,
    "navbar": navbar,
    "type": type,
    "ext": ext,
  };
}

/// svga : "http://img.baoshixingqiu.com/mech/standby/v4_0_1.svga"
/// img : "http://img.baoshixingqiu.com/mech/thumb/MECH00.png"
/// state : 1
/// energy_active : 28
/// mech_addition_tips : "0"
/// energy_active_text : "28=28+28��0%(ԭʼ����)"
/// mech_reach_blue : 128
/// mech_reach_red : 2080

class MechBean {
  String svga;
  String img;
  int state;
  int energyActive;
  String mechAdditionTips;
  String energyActiveText;
  int mechReachBlue;
  int mechReachRed;

  @override
  String toString() {
    return 'MechBean{energyActive: $energyActive}';
  }

  static MechBean fromMap(Map<String, dynamic> map) {
    if (map == null) return null;
    MechBean mechBean = MechBean();
    mechBean.svga = map['svga'];
    mechBean.img = map['img'];
    mechBean.state = map['state'];
    mechBean.energyActive = map['energy_active'];
    mechBean.mechAdditionTips = map['mech_addition_tips'];
    mechBean.energyActiveText = map['energy_active_text'];
    mechBean.mechReachBlue = map['mech_reach_blue'];
    mechBean.mechReachRed = map['mech_reach_red'];
    return mechBean;
  }

  Map toJson() => {
    "svga": svga,
    "img": img,
    "state": state,
    "energy_active": energyActive,
    "mech_addition_tips": mechAdditionTips,
    "energy_active_text": energyActiveText,
    "mech_reach_blue": mechReachBlue,
    "mech_reach_red": mechReachRed,
  };
}

/// blue : "48"
/// red : "1056"

class OreBean {
  String blue;
  String red;

  @override
  String toString() {
    return 'OreBean{red: $red}';
  }

  static OreBean fromMap(Map<String, dynamic> map) {
    if (map == null) return null;
    OreBean oreBean = OreBean();
    oreBean.blue = map['blue'];
    oreBean.red = map['red'];
    return oreBean;
  }

  Map toJson() => {
    "blue": blue,
    "red": red,
  };
}