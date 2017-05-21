exports["localhost"] = {
	path : "DIR_VAL",
    port : 2850,
    agent : ""
};
exports["story1"] = {
	path : 'DIR_VAL',
    port : 8080,
    agent : {
        get:function(path) {
            return{
                host:'xuan.news.cn',
                path:path.replace('test','news')
            }
        }
    }
};
exports["main"] = {
	path : "DIR_VAL",
    port : 8090,
    agent : {
        get:function(path) {
            return{
                host:'xuan.news.cn',
                port:80,
                path:path.replace('test','news')
            }
        }
    }
};
exports["news"] = {
	path : "DIR_VAL",
    port : 3000,
    agent : {
        get:function(path) {
            return{
                host:'xuan.news.cn',
                port:80,
                path:path.replace('test','news')
            }
        }
    }
};
exports["story"] = {
	path : "DIR_VAL",
    port : 8000,
    agent : {
        get:function(path) {
            return{
                host:'xuan.news.cn',
                port:80,
                path:path.replace('test','news')
            }
        }
    }
};