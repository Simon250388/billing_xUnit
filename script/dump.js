
DumpEpf(process.argv[2]);

function DumpEpf(pathEpf) {
    var app_path = "C:\\Program Files (x86)\\1cv8\\8.3.15.1700\\bin\\1cv8.exe";
    var arrpathEpf = pathEpf.replace("\\bin\\","\\src\\").replace(".epf", "").split("\\");
    var pathXml = arrpathEpf.join("\\") + "\\" + arrpathEpf[arrpathEpf.length-1] + ".xml" ;      
    var params = ('DESIGNER /DumpExternalDataProcessorOrReportToFiles %PathXml %PathEpf').replace("%PathXml", pathXml).replace("%PathEpf", pathEpf);
    var result = require('child_process').execFileSync(app_path, [params]);
}