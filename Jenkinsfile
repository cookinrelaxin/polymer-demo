node("cd") {
    def serviceName = "polymer-demo"
    def prodIp = "10.100.198.201"
    def proxyIp = "10.100.198.201"
    def registryIpPort = "10.100.198.200:5000"

    git url: "https://github.com/cookinrelaxin/${serviceName}.git"
    def flow = load "/data/scripts/workflow-util.groovy"
    flow.provision("prod2.yml")
    flow.buildTests(serviceName, registryIpPort)
    flow.runTests(serviceName, "tests", "")
    flow.buildService(serviceName, registryIpPort)
    flow.deploy(serviceName, prodIp)
    flow.updateProxy(serviceName, "prod")
    flow.runTests(serviceName, "integ", "-e DOMAIN=http://${proxyIp}")
}
