
var projectName = '大学生第二课堂';
/**
 * 轮播图配置
 */
var swiper = {
	// 设定轮播容器宽度，支持像素和百分比
	width: '100%',
	height: '400px',
	// hover（悬停显示）
	// always（始终显示）
	// none（始终不显示）
	arrow: 'none',
	// default（左右切换）
	// updown（上下切换）
	// fade（渐隐渐显切换）
	anim: 'default',
	// 自动切换的时间间隔
	// 默认3000
	interval: 2000,
	// 指示器位置
	// inside（容器内部）
	// outside（容器外部）
	// none（不显示）
	indicator: 'outside'
}

/**
 * 个人中心菜单
 */
var centerMenu = [{
	name: '个人中心',
	url: '../' + localStorage.getItem('userTable') + '/center.html'
}, 
]


var indexNav = [

{
	name: '活动信息',
	url: './pages/huodongxinxi/list.html'
}, 
{
	name: '活动成果',
	url: './pages/huodongchengguo/list.html'
}, 
{
	name: '问卷调查',
	url: './pages/wenjuandiaocha/list.html'
}, 

]

var adminurl =  "http://localhost:8080/ssm92d05/admin/dist/index.html";

var cartFlag = false

var chatFlag = false




var menu = [{"backMenu":[{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"学生","menuJump":"列表","tableName":"xuesheng"}],"menu":"学生管理"},{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"专业类型","menuJump":"列表","tableName":"zhuanyeleixing"}],"menu":"专业类型管理"},{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"活动信息","menuJump":"列表","tableName":"huodongxinxi"}],"menu":"活动信息管理"},{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"活动类型","menuJump":"列表","tableName":"huodongleixing"}],"menu":"活动类型管理"},{"child":[{"buttons":["查看","审核"],"menu":"活动报名","menuJump":"列表","tableName":"huodongbaoming"}],"menu":"活动报名管理"},{"child":[{"buttons":["查看","删除","查看评论","审核"],"menu":"活动成果","menuJump":"列表","tableName":"huodongchengguo"}],"menu":"活动成果管理"},{"child":[{"buttons":["新增","查看","修改","删除","报表","打印"],"menu":"学分成绩","menuJump":"列表","tableName":"xuefenchengji"}],"menu":"学分成绩管理"},{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"问卷调查","menuJump":"列表","tableName":"wenjuandiaocha"}],"menu":"问卷调查管理"},{"child":[{"buttons":["查看"],"menu":"参与问卷","menuJump":"列表","tableName":"canyuwenjuan"}],"menu":"参与问卷管理"},{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"轮播图管理","tableName":"config"}],"menu":"系统管理"}],"frontMenu":[{"child":[{"buttons":["查看","报名"],"menu":"活动信息列表","menuJump":"列表","tableName":"huodongxinxi"}],"menu":"活动信息模块"},{"child":[{"buttons":["查看","查看评论"],"menu":"活动成果列表","menuJump":"列表","tableName":"huodongchengguo"}],"menu":"活动成果模块"},{"child":[{"buttons":["查看","回复","答卷"],"menu":"问卷调查列表","menuJump":"列表","tableName":"wenjuandiaocha"}],"menu":"问卷调查模块"}],"hasBackLogin":"是","hasBackRegister":"否","hasFrontLogin":"否","hasFrontRegister":"否","roleName":"管理员","tableName":"users"},{"backMenu":[{"child":[{"buttons":["查看"],"menu":"活动报名","menuJump":"列表","tableName":"huodongbaoming"}],"menu":"活动报名管理"},{"child":[{"buttons":["新增","查看","修改","删除","查看评论"],"menu":"活动成果","menuJump":"列表","tableName":"huodongchengguo"}],"menu":"活动成果管理"},{"child":[{"buttons":["查看","打印"],"menu":"学分成绩","menuJump":"列表","tableName":"xuefenchengji"}],"menu":"学分成绩管理"},{"child":[{"buttons":["查看"],"menu":"参与问卷","menuJump":"列表","tableName":"canyuwenjuan"}],"menu":"参与问卷管理"}],"frontMenu":[{"child":[{"buttons":["查看","报名"],"menu":"活动信息列表","menuJump":"列表","tableName":"huodongxinxi"}],"menu":"活动信息模块"},{"child":[{"buttons":["查看","查看评论"],"menu":"活动成果列表","menuJump":"列表","tableName":"huodongchengguo"}],"menu":"活动成果模块"},{"child":[{"buttons":["查看","回复","答卷"],"menu":"问卷调查列表","menuJump":"列表","tableName":"wenjuandiaocha"}],"menu":"问卷调查模块"}],"hasBackLogin":"否","hasBackRegister":"否","hasFrontLogin":"是","hasFrontRegister":"否","roleName":"学生","tableName":"xuesheng"}]


var isAuth = function (tableName,key) {
    let role = localStorage.getItem("userTable");
    let menus = menu;
    for(let i=0;i<menus.length;i++){
        if(menus[i].tableName==role){
            for(let j=0;j<menus[i].backMenu.length;j++){
                for(let k=0;k<menus[i].backMenu[j].child.length;k++){
                    if(tableName==menus[i].backMenu[j].child[k].tableName){
                        let buttons = menus[i].backMenu[j].child[k].buttons.join(',');
                        return buttons.indexOf(key) !== -1 || false
                    }
                }
            }
        }
    }
    return false;
}

var isFrontAuth = function (tableName,key) {
    let role = localStorage.getItem("userTable");
    let menus = menu;
    for(let i=0;i<menus.length;i++){
        if(menus[i].tableName==role){
            for(let j=0;j<menus[i].frontMenu.length;j++){
                for(let k=0;k<menus[i].frontMenu[j].child.length;k++){
                    if(tableName==menus[i].frontMenu[j].child[k].tableName){
                        let buttons = menus[i].frontMenu[j].child[k].buttons.join(',');
                        return buttons.indexOf(key) !== -1 || false
                    }
                }
            }
        }
    }
    return false;
}
