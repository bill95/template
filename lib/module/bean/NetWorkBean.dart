/// code : 0
/// msg : ""
/// data : {"open_ad":1,"sign_electricity":50,"iosRule":"itms-services","ad_config":1}

class NetWorkBean {
  int code;
  String msg;
  DataBean data;

  static NetWorkBean fromMap(Map<String, dynamic> map) {
    if (map == null) return null;
    NetWorkBean netWorkBeanBean = NetWorkBean();
    netWorkBeanBean.code = map['code'];
    netWorkBeanBean.msg = map['msg'];
    netWorkBeanBean.data = DataBean.fromMap(map['data']);
    return netWorkBeanBean;
  }

  @override
  String toString() {
    return 'NetWorkBean{code: $code, msg: $msg, data: $data}';
  }

  Map toJson() => {
    "code": code,
    "msg": msg,
    "data": data,
  };
}

/// open_ad : 1
/// sign_electricity : 50
/// iosRule : "itms-services"
/// ad_config : 1

class DataBean {
  int openAd;
  int signElectricity;
  String iosRule;
  int adConfig;

  static DataBean fromMap(Map<String, dynamic> map) {
    if (map == null) return null;
    DataBean dataBean = DataBean();
    dataBean.openAd = map['open_ad'];
    dataBean.signElectricity = map['sign_electricity'];
    dataBean.iosRule = map['iosRule'];
    dataBean.adConfig = map['ad_config'];
    return dataBean;
  }

  @override
  String toString() {
    return 'DataBean{openAd: $openAd, signElectricity: $signElectricity, iosRule: $iosRule, adConfig: $adConfig}';
  }

  Map toJson() => {
    "open_ad": openAd,
    "sign_electricity": signElectricity,
    "iosRule": iosRule,
    "ad_config": adConfig,
  };
}