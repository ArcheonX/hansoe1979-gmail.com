var Utility = function () {
    var base64ToArrayBuffer = function (base64) {
        var binaryString = window.atob(base64);
        var binaryLen = binaryString.length;
        var bytes = new Uint8Array(binaryLen);
        for (var i = 0; i < binaryLen; i++) {
            var ascii = binaryString.charCodeAt(i);
            bytes[i] = ascii;
        }
        return bytes;
    }
    var ExportExcelFile = function (reportName, byte) {
        if (navigator.msSaveBlob) {
            let blob = new Blob([byte], {
                "type": "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet;"
            });
            navigator.msSaveBlob(blob, reportName);
        }
        else {
            let blob = new Blob(['\ufeff' + byte], { type: 'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet;' });
            let $link = document.createElement("a");
            let url = URL.createObjectURL(blob);
            $link.setAttribute("target", "_blank");
            $link.setAttribute("href", url);
            $link.setAttribute("download", reportName);
            $link.style.visibility = "hidden";
            document.body.appendChild($link);
            $link.click();
            document.body.removeChild($link);
        } 
    }
    DownloadExcelFile = function (filename, base64) { 
        var element = document.createElement('a');
        element.setAttribute('href', 'data:application/vnd.openxmlformats-officedocument.spreadsheetml.sheet;base64,' + encodeURIComponent(base64));
        element.setAttribute('download', filename); 
        element.style.display = 'none';
        document.body.appendChild(element);
        element.click();
        document.body.removeChild(element);
    }
    DownloadContent = function (options) { 
        if (!options || !options.content) {
            throw 'You have at least to provide content to download';
        }
     //   options.filename = options.filename || 'tolle.txt';
        options.type = options.type || 'text/plain;charset=utf-8';
        options.bom = options.bom || decodeURIComponent('%ef%bb%bf');

        if (window.navigator.msSaveBlob) {
            var blob = new Blob([options.bom + options.content], { type: options.type });
            window.navigator.msSaveBlob(blob, options.filename);
        }
        else {
            var link = document.createElement('a');
            //var content = options.bom + options.content;
            var blob = new Blob([byte], { type: "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet" });
            var uriScheme = ['data:', options.type, ','].join('');
            link.href = uriScheme + content;
            link.download = options.filename;
            //FF requires the link in actual DOM
            document.body.appendChild(link);
            link.click();
            document.body.removeChild(link);
        }
    }
    return {
        base64ToArrayBuffer: function (base64) {
            return base64ToArrayBuffer(base64);
        },
        ExportExcelFile: function (reportName, byte) {
            return ExportExcelFile(reportName, byte);
        },
        DownloadExcelFile: function(filename, base64) {
            return DownloadExcelFile(filename, base64);
        },
        DownloadContent: function (options) {
            return DownloadContent(options);
        }
    }
}();