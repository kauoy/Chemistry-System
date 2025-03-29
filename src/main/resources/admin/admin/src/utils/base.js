const base = {
    get() {
        return {
            url : "http://localhost:8080/chemical/",
            name: "chemical",
            // 退出到首页链接
            indexUrl: 'http://localhost:8080/chemical/front/dist/index.html'
        };
    },
    getProjectName(){
        return {
            projectName: "springboot+vue的化工品交易平台"
        } 
    }
}
export default base
