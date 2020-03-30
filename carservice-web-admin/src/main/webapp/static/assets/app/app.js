var App = function () {

    // iCheck
    var _masterCheckbox;
    var _checkbox;

    //用于存放id的数组
    var _idArray;

    //默认的DropZone参数
    var defaultDropzoneOpts = {
        url: "",
        paramName: "dropFile",
        maxFiles: 1,
        maxFilesize: 5,
        acceptedFiles: ".jpg,.gif,.png,.jpeg",
        addRemoveLinks: true,
        parallelUploads: 1,
        dictDefaultMessage: '拖动文件至此或者点击上传',
        dictMaxFilesExceeded: "你最多只能上传一个文件！",
        dictResponseError: "文件上传失败",
        dictFileTooBig: "文件过大",
        dictRemoveLinks: "删除",
        dictCancelUpload: "取消"
    };
    /**
     * 私有方法，初始化 ICheck
     *
     */
    var handlerInitCheckbox = function () {
        // 激活
        $('input[type="checkbox"].minimal, input[type="radio"].minimal').iCheck({
            checkboxClass: 'icheckbox_minimal-blue',
            radioClass   : 'iradio_minimal-blue'
        });

        // 获取控制端 Checkbox
        _masterCheckbox = $('input[type="checkbox"].minimal.icheck_master');

        // 获取全部 Checkbox 集合
        _checkbox = $('input[type="checkbox"].minimal');
    };

    /**
     * Checkbox 全选功能
     */
    var handlerCheckboxAll = function () {
        _masterCheckbox.on("ifClicked", function (e) {
            // 返回 true 表示未选中
            if (e.target.checked) {
                _checkbox.iCheck("uncheck");
            }

            // 选中状态
            else {
                _checkbox.iCheck("check");
            }
        });
    };

    /**
     * 批量删除
     */
    var handlerDeleteMulti = function (url) {
        _idArray = new Array();

        _checkbox.each(function () {
            var _id = $(this).attr("id");
            if(_id != null && _id != "undefined" && $(this).is(":checked")) {
                _idArray.push(_id);
            }

        });

        //判断用户是否选择了数据项
        if(_idArray.length === 0) {
            $('#modal-message').html("你还没有选择任何数据项，请至少选择一项");
        } else {
            $('#modal-message').html("你确定删除数据项吗？");
        }

        //点击删除按钮弹出模态框
        $('#modal-default').modal('show');

        //如果用户选择了数据项则调用删除
        $('#btnModalOk').bind("click", function () {
            del();
        });

        /**
         * 当前私有函数的私有函数,删除数据
         */
        function del() {
            $('#modal-default').modal("hide");
            //没有选择数据项，关闭模态框
            if(_idArray.length === 0) {
                //...
            } else {
                setTimeout(function () {
                    $.ajax({
                        "url": url,
                        "type": "POST",
                        "data": {"ids": _idArray.toString()},
                        "dataType": "JSON",
                        "success": function (data) {
                            //请求成功后，无论成功还是失败都需要弹出模态框
                            $("#btnModalOk").unbind("click");

                            // 请求成功
                            if (data.status === 200) {
                                $('#btnModalOk').bind("click", function () {
                                    window.location.reload();
                                })
                            }

                            // 请求失败
                            else {
                                // 确定按钮的事件改为隐藏模态框
                                $("#btnModalOk").bind("click", function () {
                                    $("#modal-default").modal("hide");
                                });
                            }

                            // 因为无论如何都需要提示信息，所以这里的模态框是必须调用的
                            $("#modal-message").html(data.message);
                            $("#modal-default").modal("show");

                        }
                    });
                },500);

            }
        }
    };

    /**
     * 初始化DataTables
     */
    var handlerInitDataTables = function (url,columns) {
        var _dataTable = $('#dataTable').DataTable({
            "paging": true,
            //左下角信息
            "info": true,
            "lengthChange": false,
            "ordering": false,
            "processing": true,
            "searching": false,
            "serverSide": true,
            "deferRender": true,
            "ajax": {
                "url": url
            },
            "columns": columns,
            language: {
                "sProcessing": "处理中...",
                "sLengthMenu": "显示 _MENU_ 项结果",
                "sZeroRecords": "没有匹配结果",
                "sInfo": "显示第 _START_ 至 _END_ 项结果，共 _TOTAL_ 项",
                "sInfoEmpty": "显示第 0 至 0 项结果，共 0 项",
                "sInfoFiltered": "(由 _MAX_ 项结果过滤)",
                "sInfoPostFix": "",
                "sSearch": "搜索:",
                "sUrl": "",
                "sEmptyTable": "表中数据为空",
                "sLoadingRecords": "载入中...",
                "sInfoThousands": ",",
                "oPaginate": {
                    "sFirst": "首页",
                    "sPrevious": "上页",
                    "sNext": "下页",
                    "sLast": "末页"
                },
                "oAria": {
                    "sSortAscending": ": 以升序排列此列",
                    "sSortDescending": ": 以降序排列此列"
                }
            },
            "drawCallback": function (settings) {
                handlerInitCheckbox();
                handlerCheckboxAll();
            }

        });
        return _dataTable;
    };

    var handlerInitZTree = function (url,autoParam,callback) {
        var setting = {
            view: {
                selectedMulti: true
            },
            async: {
                enable: true,
                url: url,
                autoParam: autoParam
            }
        };
        $.fn.zTree.init($("#myTree"),setting);

        $('#btnModalOk').bind("click", function () {
            var zTree = $.fn.zTree.getZTreeObj("myTree");
            var nodes = zTree.getSelectedNodes();

            if(nodes.length == 0) {
                alert("请选择一个节点");
            } else {
                callback(nodes);
            }
        })
    };

    /**
     * 初始化Dropzone
     * @param opts
     */
    var handlerInitDropzone = function (opts) {
        Dropzone.autoDiscover = false;
        $.extend(defaultDropzoneOpts,opts);
        new Dropzone(defaultDropzoneOpts.id,defaultDropzoneOpts);
    };
    /**
     * 查看详情
     * @param url
     */
    var handlerShowDetail = function (url) {
        //通过ajax将模态框装入
        $.ajax({
            "url": url,
            "type": "get",
            "dataType": "html",
            success: function (data) {
                $('#modal-detail-body').html(data);
                $('#modal-detail').modal('show');
            }
        });
    };

    return {
        /**
         * 初始化
         */
        init: function () {

            handlerInitCheckbox();
            handlerCheckboxAll();
        },
        /**
         * 批量删除
         * @param url
         */
        deleteMulti: function (url) {
            handlerDeleteMulti(url);
        },
        /**
         * 初始化dataTable
         * @param url
         * @param columns
         * @returns {jQuery}
         */
        initDataTables: function (url,columns) {
            return handlerInitDataTables(url,columns);
        },
        /**
         * 初始化ZTree
         * @param url
         * @param autoParam
         * @param callback
         */
        initZTree: function(url,autoParam,callback) {
            handlerInitZTree(url,autoParam,callback);
        },
        /**
         * 初始化Dropzone
         * @param opts
         */
        initDropzone: function(opts) {
            handlerInitDropzone(opts);
        },
        /**
         * 显示详情
         * @param url
         */
        showDetail: function (url) {
            handlerShowDetail(url);
        }
    }
}();

$(document).ready(function () {

    App.init();
});