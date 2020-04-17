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
            当前位置：后台<i class="fa fa-fw fa-angle-right"></i>创建图片
        </div>
        <div class="main">
            <div class="tabList">
                <span class="active">常规内容</span>
            </div>
            <div class="tbodyList">

                <div class="tabBody tactive">
                    <!-- <p class="tip mrb10">常规设置</p> -->
                    <div class="twoBox">
                        <div class="leftbox">
                            <div class="ios-form-group">
                                <div class="ios-title">
                                    <em class="ios-tip-must">*</em>
                                    <span class="ios-tip-name">图片标题：</span>
                                </div>
                                <div class="ios-input-box">
                                    <input type="text" class="ios-input" placeholder="请输入">
                                </div>
                            </div>
                        </div>
                        <div class="rightbox">
                            <div class="ios-form-group">
                                <div class="ios-title">
                                    <em class="ios-tip-must"></em>
                                    <span class="ios-tip-name">ALT属性：</span>
                                </div>
                                <div class="ios-input-box">
                                    <input type="text" class="ios-input" placeholder="请输入">
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="twoBox">
                        <div class="leftbox">
                            <div class="ios-form-group">
                                <div class="ios-title">
                                    <em class="ios-tip-must">*</em>
                                    <span class="ios-tip-name">所属栏目：</span>
                                </div>
                                <div class="ios-select-box">
                                    <select class="ios-select">
                                        <option value="">请选择</option>
                                    </select>
                                </div>
                            </div>
                        </div>

                        <div class="rightbox">
                            <div class="ios-form-group">
                                <div class="ios-title">
                                    <em class="ios-tip-must"></em>
                                    <span class="ios-tip-name">创建时间：</span>
                                </div>
                                <div class="ios-input-box">
                                    <input type="text" class="ios-input" placeholder="请输入">
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- 结束符 -->
                    <div class="twoBox">
                        <div class="leftbox">
                            <div class="ios-form-group">
                                <div class="ios-title">
                                    <em class="ios-tip-must"></em>
                                    <span class="ios-tip-name">图片链接：</span>
                                </div>
                                <div class="ios-input-box">
                                    <input type="text" class="ios-input" placeholder="请输入">
                                </div>
                            </div>
                        </div>

                        <div class="rightbox">
                            <div class="ios-form-group">
                                <div class="ios-title">
                                    <em class="ios-tip-must"></em>
                                    <span class="ios-tip-name">图片备注：</span>
                                </div>
                                <div class="ios-input-box">
                                    <input type="text" class="ios-input" placeholder="请输入">
                                </div>
                            </div>
                        </div>
                    </div>

                    
                    <!-- 结束符 -->
                    <div class="twoBox">
                        <div class="leftbox">
                            <div class="ios-form-group">
                                <div class="ios-title">
                                    <em class="ios-tip-must">*</em>
                                    <span class="ios-tip-name">审核状态：</span>
                                </div>
                                <div class="ios-radio-box">
                                    <label class="ios-radio-box-label">
                                        <input type="radio" name="radio" class="ios-radio">
                                        <span class="ios-radio-span">直接发布</span>
                                    </label>
                                    <label class="ios-radio-box-label">
                                        <input type="radio" name="radio" class="ios-radio">
                                        <span class="ios-radio-span">待审核</span>
                                    </label>
                                </div>
                            </div>
                        </div>

                        <div class="rightbox">
                                <div class="ios-form-group">
                                        <div class="ios-title">
                                            <em class="ios-tip-must">*</em>
                                            <span class="ios-tip-name">打开方式：</span>
                                        </div>
                                        <div class="ios-radio-box">
                                            <label class="ios-radio-box-label">
                                                <input type="radio" name="radio" class="ios-radio">
                                                <span class="ios-radio-span">直接打开</span>
                                            </label>
                                            <label class="ios-radio-box-label">
                                                <input type="radio" name="radio" class="ios-radio">
                                                <span class="ios-radio-span">新建窗口</span>
                                            </label>
                                        </div>
                                    </div>
                        </div>
                    </div>

                    <div class="ios-form-group">
                        <div class="ios-title">
                            <em class="ios-tip-must">*</em>
                            <span class="ios-tip-name">封面图片：</span>
                        </div>
                        <div class="ios-upload-box">
                            <div class="ios-upload-btn">
                                <label class="ios-upload-label">
                                    <input type="file">
                                    <span> <i class="fa fa-fw fa-upload"></i> 上传图片</span>
                                </label>
                            </div>
                            <div class="ios-upload-show">
                                <div class="ios-upload-show-image">
                                    <p>暂未上传图片</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="tabBody">
                    <div class="ios-form-group mrb10">
                        <div class="ios-title">
                            <em class="ios-tip-must">*</em>
                            <span class="ios-tip-name">SEO关键词：</span>
                        </div>
                        <div class="ios-input-box">
                            <input type="text" class="ios-input" placeholder="请输入">
                        </div>
                    </div>

                    <div class="ios-form-group mrb10">
                        <div class="ios-title">
                            <em class="ios-tip-must">*</em>
                            <span class="ios-tip-name">SEO摘要</span>
                        </div>
                        <div class="ios-textarea-box">
                            <textarea class="ios-textarea"></textarea>
                        </div>
                    </div>

                </div>

                <div class="tabBody">
                    <div class="textareaBox mrb10" id="createColumnBody">
                    </div>
                </div>
            </div>
            <div>
                <span class="ios-button ios-button-blue ios-button-2x">保存发布</span>
            </div>
        </div>
    </div>
    <script src="./js/common.js"></script>

</body>


</html>