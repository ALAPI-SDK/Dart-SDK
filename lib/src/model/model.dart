class ALAPIModel<T> {
  final int code;
  final String msg;
  final T data;
  final int time;
  final int log_id;

  ALAPIModel(this.code, this.msg, this.data, this.time, this.log_id);

  ALAPIModel.fromJson(Map<String, dynamic> json)
      : code = json['code'],
        msg = json['msg'],
        data = json['data'],
        time = json['time'],
        log_id = json['time'];

  Map<String, dynamic> toJson() => <String, dynamic>{
        'code': code,
        'msg': msg,
        'data': data,
        'time': time,
        'log_id': log_id
      };
}
