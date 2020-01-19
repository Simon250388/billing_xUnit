
var dir  = __dirname.replace("\\script","\\src")
const fs = require('fs');

fs.readdirSync(dir).forEach(function(objectType) {
    var stat = fs.statSync("" + dir + "\\" + objectType);
    if (stat.isDirectory("" + dir + "\\" + objectType)) {
        fs.readdirSync("" + dir + "\\" + objectType).forEach(function(objectname){
            LoadEpf("" + dir + "\\" + objectType + "\\" + objectname + "\\" + objectname + ".xml")
        }) 
        
    }
})

function LoadEpf(pathXml) {   
    var app_path = "C:\\Program Files (x86)\\1cv8\\8.3.15.1700\\bin\\1cv8.exe";
    var arrpathXml = pathXml.replace("\\src\\","\\bin\\").replace(".xml", "").split("\\");
    var arrpathXml = arrpathXml.slice(0,arrpathXml.length - 1); 
    var pathEpf = arrpathXml.join("\\") + ".epf";   
    var params = ('DESIGNER /LoadExternalDataProcessorOrReportFromFiles %PathXml %PathEpf').replace("%PathXml", pathXml).replace("%PathEpf", pathEpf);
    var result = require('child_process').execFileSync(app_path, [params]);
}
