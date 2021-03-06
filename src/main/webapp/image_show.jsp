<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>APP</title>
    <link rel="stylesheet" href="./css/component.css">
    <link rel="stylesheet" href="./css/admin.css">
    <link rel="stylesheet" href="./css/font-awesome.min.css">
    <script src="./js/JQuery2.1.4.js"></script>

    <!-- 富文本编辑器 -->
    <script src="./js/wang.js"></script>
</head>

<body>
    <div class="rbody" id="app">
        <div class="top">
            当前位置：后台<i class="fa fa-fw fa-angle-right"></i>图片列表
        </div>
        <div class="main">
            <div class="tabList">
                <span class="active">图片列表</span>
                <div class="search_form">
                        <div class="search_box">
                            <select name="" id="">
                                <option value="">栏目</option>
                            </select>
                            <select name="" id="">
                                 <option value="">状态</option>
                             </select>
                             <input type="text" placeholder="请输入">
                         <button>搜索</button>
                        </div>
                     </div>
            </div>
            <div class="imglists">
                <table>
                    <colgroup>
                        <col width="100">
                        <col>
                        <col width="100">
                        <col width="100">
                        <col width="100">
                        <col width="100">
                        <col width="125">
                    </colgroup>
                    <tr>
                        <th>
                            缩略图
                        </th>
                        <th>
                            图片名称
                        </th>
                        <th>
                            ALT属性
                        </th>
                        <th>
                            所属栏目
                        </th>
                        <th>
                            审核状态
                        </th>
                        <th>
                            打开方式
                        </th>
                        <th>
                            操作
                        </th>
                    </tr>
                    <tr>
                        <td>
                            <a href="" class="coverImg">
                                <img src="./imgs/timg (1).jpg" alt="">
                            </a>
                        </td>
                        <td>
                            <a href="" class="coverTitle">指线装书印有书名的一页 the title page of a thread-bound book</a>
                        </td>
                        <td>
                            <span class="coverOther">线装书印</span>
                        </td>
                        <td>
                            <span class="coverOther">产品中心</span>
                        </td>
                        <td>
                            <span class="coverOther">待审核</span>
                        </td>
                        <td>
                            <span class="coverOther">直接打开</span>
                        </td>
                        <td>
                            <a href="" class="ios-edit-btn">编辑</a>
                            <a href="" class="ios-del-btn">删除</a>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <a href="" class="coverImg">
                                <img src="./imgs/timg (2).jpg" alt="">
                            </a>
                        </td>
                        <td>
                            <a href="" class="coverTitle">指线装书印有书名的一页 the title page of a thread-bound book</a>
                        </td>
                        <td>
                            <span class="coverOther">线装书印</span>
                        </td>
                        <td>
                            <span class="coverOther">产品中心</span>
                        </td>
                        <td>
                            <span class="coverOther">待审核</span>
                        </td>
                        <td>
                            <span class="coverOther">直接打开</span>
                        </td>
                        <td>
                            <a href="" class="ios-edit-btn">编辑</a>
                            <a href="" class="ios-del-btn">删除</a>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <a href="" class="coverImg">
                                <img src="./imgs/timg (3).jpg" alt="">
                            </a>
                        </td>
                        <td>
                            <a href="" class="coverTitle">指线装书印有书名的一页 the title page of a thread-bound book</a>
                        </td>
                        <td>
                            <span class="coverOther">线装书印</span>
                        </td>
                        <td>
                            <span class="coverOther">产品中心</span>
                        </td>
                        <td>
                            <span class="coverOther">待审核</span>
                        </td>
                        <td>
                            <span class="coverOther">直接打开</span>
                        </td>
                        <td>
                            <a href="" class="ios-edit-btn">编辑</a>
                            <a href="" class="ios-del-btn">删除</a>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <a href="" class="coverImg">
                                <img src="./imgs/timg (4).jpg" alt="">
                            </a>
                        </td>
                        <td>
                            <a href="" class="coverTitle">指线装书印有书名的一页 the title page of a thread-bound book</a>
                        </td>
                        <td>
                            <span class="coverOther">线装书印</span>
                        </td>
                        <td>
                            <span class="coverOther">产品中心</span>
                        </td>
                        <td>
                            <span class="coverOther">待审核</span>
                        </td>
                        <td>
                            <span class="coverOther">直接打开</span>
                        </td>
                        <td>
                            <a href="" class="ios-edit-btn">编辑</a>
                            <a href="" class="ios-del-btn">删除</a>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <a href="" class="coverImg">
                                <img src="./imgs/timg (1).jpg" alt="">
                            </a>
                        </td>
                        <td>
                            <a href="" class="coverTitle">指线装书印有书名的一页 the title page of a thread-bound book</a>
                        </td>
                        <td>
                            <span class="coverOther">线装书印</span>
                        </td>
                        <td>
                            <span class="coverOther">产品中心</span>
                        </td>
                        <td>
                            <span class="coverOther">待审核</span>
                        </td>
                        <td>
                            <span class="coverOther">直接打开</span>
                        </td>
                        <td>
                            <a href="" class="ios-edit-btn">编辑</a>
                            <a href="" class="ios-del-btn">删除</a>
                        </td>
                    </tr>
                </table>
            </div>
        </div>
    </div>
    <script src="./js/common.js"></script>

</body>

</html>