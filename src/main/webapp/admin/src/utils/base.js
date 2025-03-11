const base = {
    get() {
        return {
            url : "http://localhost:8080/ssm92d05/",
            name: "ssm92d05",
            // 退出到首页链接
            indexUrl: 'http://localhost:8080/ssm92d05/front/index.html'
        };
    },
    getProjectName(){
        return {
            projectName: "大学生第二课堂"
        } 
    }
}
export default base
