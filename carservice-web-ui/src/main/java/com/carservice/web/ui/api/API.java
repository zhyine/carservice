package com.carservice.web.ui.api;

public class API {
    // 主机地址
    public static final String HOST = "http://localhost:8081/api/v1";

    // 内容查询接口 - 幻灯片
    public static final String API_CONTENTS_PPT = HOST + "/contents/89";

    // 会员管理接口 - 登录
    public static final String API_USERS_LOGIN = HOST + "/users/login";

    // 会员管理接口 - 注册
    public static final String API_USERS_REGISTER = HOST + "/users/register";

    //内容查询接口 - 热门商品 - 第一列
    public static final String API_CONTENTS_TOP1 = HOST + "/contents/102";

    //内容查询接口 - 热门商品 - 第二列
    public static final String API_CONTENTS_TOP2 = HOST + "/contents/103";

    //内容查询接口 - 热门商品 - 第三列
    public static final String API_CONTENTS_TOP3 = HOST + "/contents/104";

    //内容查询接口 - 热门商品 - 第四列
    public static final String API_CONTENTS_TOP4 = HOST + "/contents/105";

    //商品查询接口
    public static final String API_CONTENTS_GOODS = HOST + "/goods/5";

    //购物车查询接口
    public static final String API_CONTENTS_CART1= HOST + "/carts/1";
}
