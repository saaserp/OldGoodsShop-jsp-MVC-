/**
 * @author pengmj 
 * E-mail:showsen@163.com<br>
 * QQ:68141149
 * 该类修改自dhtmlXVaultObject非专业版v.1.5 build 9755，版权属于http://www.dhtmlx.com<br>
 * pengmj在dhtmlXVaultObject的基础上对代码进行了注释、汉化，
 * 并新增和修改了部分功能。
 * 以下是http://www.dhtmlx.com版权说明:
 * Copyright DHTMLX LTD. http://www.dhtmlx.com
 * You allowed to use this component or parts of it under GPL terms
 * To use it on other terms or get Professional edition of the 
 * component please contact us at sales@dhtmlx.com
 * @since 2010.6.2
 */
var pmjFileUpload = function(){
	var nav = navigator.appName;//浏览器类型
	this.IE = nav.indexOf("Explorer") > -1;
	this.Opera = nav.indexOf("Opera") > -1;
	this.Firefox = nav.indexOf("Netscape") > -1;
	
	this.isUploadImmediately = false;//添加一个文件是否立即上传
	
	this.isUploadFile = false;//是否已经上传
	this.isUploadFileAll = false;//是否全部上传
	this.counter = 1;//计数器
	this.idRowSelected = null;//当前选中行的ID号
	this.sessionId = null;
	
	this.pathUploadHandler = null;//处理文件流
	this.pathGetInfoHandler = null;
	this.pathGetIdHandler = null;
	
	this.imgPath = "./mygoods/imgs/";//默认图片路径
	this.strings = { btnAdd:"添加文件",btnUpload:"上传",btnClean:"全部清除",remove: "移除",Upload:"上传", done: "上传完成", error: "上传出错" };
	this.strings.errors = {
		"TooBig": "文件[{0}]太大 ({1} bytes)。\n最大值 {2}bytes。",
		"errorExt":"不支持{0}文件。",
		"innerError":"服务器发生错误，上传不成功。"
	};
	this.filesLimit = 0;//文件限制个数，0表示无限
	this.fileList = {};//文件列表{id:string, name:string, uploaded:boolean, error:boolean}
	this.uploadedCount = 0;
	this.progressDemo = null;
	this.inpMAX_FILE_SIZE = null;
	this.MAX_FILE_SIZE = 2 * 1024 * 1024;//文件最大限制900M
	this.inpUpload_IDENTIFIER = null;
	
	this.fileExt = null;//文件格式限制，null为不限制。
	this.fileNameLength = 100;//null;//文件名称的长度，默认为不限制
	
	this.onUploadCompleteHandler = null;
	this.onFileUploadedHandler = null;
	this.onAddFileCompleteHandler = null;
};
/**
 * 初始化一个下载<br>
 * 对应dhtmlXVaultObject中的create方法
 * @param htmlObject 页面元素对象名
 */
pmjFileUpload.prototype.init = function(htmlObject){
	this.parentObject = document.getElementById(htmlObject);
	this.parentObject.style.position = "relative";
	//文件数据是通过该隐藏的iframe传输的
	this.parentObject.innerHTML = "<iframe src='about:blank' id='pmjFileUploadFrame'" +
			" name='pmjFileUploadFrame' " +
			"style='display:none;position:absolute;left:-1000px;width:1px;height:1px'></iframe>";
	this.container = document.createElement("div");
	this.container.style.position = "relative";
	var innHtml = "<table class='pmj_panelbg pmj_panelborder' border='0'>" +
	 	"<tr><td style='width:100px;height:32px' align='left'></td>" +
	 	"<td style='width:180px;height:32px' align='left'>" +
	 	"<div class='pmj_lbtn'><span class='pmj_lbtn1'></span>" +
	 	"<span class='pmj_lbtn2'><nobr><img src='" + this.imgPath + "upload.gif'/> "+
	 	this.strings.btnUpload+"</nobr></span><span class='pmj_lbtn3'></span></div></td>" +
		"<td style='width:136px;height:32px;' align='right'>" +
	 	"<div class='pmj_rbtn'><span class='pmj_rbtn3'></span>" +
	 	"<span class='pmj_rbtn2'><nobr><img src='" + this.imgPath + "clean.gif'/> "+
	 	this.strings.btnClean+"</nobr></span>" +
	 	"<span class='pmj_rbtn1'></span>" +
	 	"</div></td></tr></table>"+"<div class='btnAddBtn pmj_lbtn'>" +
	 	"<span class='pmj_lbtn1'></span>" +
	 	"<span class='pmj_lbtn2'><nobr><img src='" + this.imgPath + "add.gif'/> "+
	 	this.strings.btnAdd+"</nobr></span>" +
	 	"<span class='pmj_lbtn3'></span></div>" +
	 	"<div class='btnAddDiv'>" +
	 	"<input type='file' id='file1' name='file1' value='' class='pmj_hidden " + (this.Opera ? "pmj_fo" : "") + "'/></div>"+
	 	"<TABLE class=\"pmj_panelborder\" style='display:none' border=0>"+
	 	"<TBODY><TR>"+
	 	"<TD align=middle><DIV style='width:424px'></DIV></TD>"+
	 	"</TR></TBODY></TABLE>";
	if(this.fileExt!=null)
		innHtml += "<div style='padding:1px'>支持的文件格式:"+this.fileExt+"<br>单个文件最大值:"+this.getCnMaxSize()+"</div>";
	this.container.innerHTML = innHtml;
	this.parentObject.appendChild(this.container);
	var self = this;
	if(!this.isUploadImmediately){
		this.container.childNodes[0].rows[0].cells[1].childNodes[0].onclick = function(){
		 	self.uploadAllItems();
			//alert("上传");
		};
	}
	this.container.childNodes[0].rows[0].cells[2].childNodes[0].onclick = function(){
	 	self.removeAllItems();
	 	//alert("全部清除");
	};
	this.fileContainer = this.container.childNodes[2];//<div class='btnAddDiv'>
	this.currentFile = this.fileContainer.childNodes[0];//当前的file<input>元素
	this.currentFile.onchange = function() {
		self.addFile();
		//alert(this.value);
	};
	this.containerTable = this.container.childNodes[3];//存放文件列表的table
	//debugger;
	//存放文件列表的DIV
	this.containerDiv = this.container.childNodes[3].rows[0].cells[0].childNodes[0];
	this.tblProgressBar = this.createProgressBar();
 	this.percentPanel = this.createPercentPanel();
 	this.containerDiv.appendChild(this.percentPanel);
 	this.progressDemo = this.createProgressDemo();
	//创建一个上传表单
	if (this.IE){
 		this.uploadForm = document.createElement("<form enctype='multipart/form-data' target='pmjFileUploadFrame' method='post'>");
 	}else {
 		this.uploadForm = document.createElement("form");
 		this.uploadForm.method = "post";
 		this.uploadForm.encoding = "multipart/form-data";
 		this.uploadForm.target = "pmjFileUploadFrame";
 	}
 	this.container.appendChild(this.uploadForm);
 	//创建一个隐藏的input存放文件上传的最大值
 	this.inpMAX_FILE_SIZE = document.createElement("input");
 	this.inpMAX_FILE_SIZE.type = "hidden";
 	this.inpMAX_FILE_SIZE.name = "xMAX_FILE_SIZE";
 	this.inpMAX_FILE_SIZE.value = this.MAX_FILE_SIZE;
 	this.uploadForm.appendChild(this.inpMAX_FILE_SIZE);
 	//创建一个隐藏的input存放该上传form的标示，区分一个页面中多个上传框
 	this.inpUPLOAD_IDENTIFIER = document.createElement("input");
 	this.inpUPLOAD_IDENTIFIER.type = "hidden";
 	this.inpUPLOAD_IDENTIFIER.name = "UPLOAD_IDENTIFIER";
 	this.uploadForm.appendChild(this.inpUPLOAD_IDENTIFIER);
 	this.tblListFiles = null;//存放文件列表的table
};
/**
 * 增加文件
 */
pmjFileUpload.prototype.addFile = function(){
	var file = this.currentFile;
	try {
		if (file.value == "")return;
		if (!this.onAddFile(file.value)) {
			file.value = "";
			return
		}
	}catch(e) {};
	var currentId = this.createId();
	this.fileList[currentId] = {id: currentId, name:file.value, uploaded:false, error:false};
	file.disabled = true;//添加一个文件之后，<input>不可用
	file.style.display = "none";
	this.uploadForm.appendChild(file);//添加到form中
	//再创建一个新的file input供下一个文件使用
	var newInputFile = document.createElement("input");
	newInputFile.type = "file";
	newInputFile.className = "pmj_hidden " + (this.Opera ? "pmj_fo" : "");
	newInputFile.id = "file" + (currentId + 1);
	newInputFile.name = newInputFile.id;
	this.currentFile = newInputFile;
	var self = this;
	newInputFile.onchange = function(){
		return self.addFile();
	}
	this.fileContainer.appendChild(newInputFile);//添加至按钮处
	//处理文件名
    var fileName = this.getFileName(file.value);
    //文件图片
	var imgFile = this.getImgFile(fileName);
	this.containerTable.style.display = "";//显示表格
	var containerData = this.containerDiv;
	if (this.tblListFiles == null){
		this.tblListFiles = this.createTblListFiles();
		containerData.appendChild(this.tblListFiles);
	};
	var rowListFiles = this.tblListFiles.insertRow(this.tblListFiles.rows.length);//插入一行
	rowListFiles.setAttribute("fileItemId", currentId);
	rowListFiles.setAttribute("id", "rowListFiles" + currentId);
	rowListFiles.setAttribute("isUpload", "false");
	rowListFiles.onclick = function() {
		self.selectItem(currentId);
	};
	//创建一列
	var cellListFiles = document.createElement("td");
	cellListFiles.align = "center";
	rowListFiles.appendChild(cellListFiles);
	//再在这个列里放一个table
	var tblContent = document.createElement("table");
	cellListFiles.appendChild(tblContent);
	tblContent.style.cssText = "border-bottom:1px solid #E2E2E2";
	tblContent.cellPadding = "0px";
	tblContent.cellSpacing = "0px";
	tblContent.border = "0px";
	tblContent.id = "tblContent" + currentId;
	//在表格里画一个文件
	var rowList = tblContent.insertRow(tblContent.rows.length);
	var cellList = document.createElement("td");
	cellList.rowSpan = 2;
	cellList.align = "center";
	if (this.IE){
		var span = document.createElement("span");
		span.style.cssText = "width:40px;height:30px;display:inline-block;filter:progid:DXImageTransform.Microsoft.AlphaImageLoader(src='" + imgFile + " ')";
		cellList.appendChild(span);
	}else{
		cellList.innerHTML = "<img src='" + imgFile + "'/>";
	};
	cellList.style.width = "60px";
	rowList.appendChild(cellList);
	cellList = document.createElement("td");
	cellList.align = "left";
	cellList.vAlign = "bottom";
	cellList.style.cssText = "width:300px;height:15px";
	cellList.innerHTML = "<div class='fileName'><div class='fileName'>" + fileName + "</div></div> ";
	cellList.className = "fileName";
	rowList.appendChild(cellList);
	cellList = document.createElement("td");
	cellList.style.cssText = "width:140px;height:15px";
	cellList.innerHTML = "<div title='" + this.strings.remove +
		 "' id='pmj_icoremove'></div><a href='javascript:void(0)' class='link pmj_txtremove'>" + 
		 this.strings.remove + "</a>";
	cellList.firstChild.onclick = cellList.childNodes[1].onclick = function() {
		self.removeItem(currentId);
	};
	cellList.vAlign = "bottom";
	cellList.align = "center";
	rowList.appendChild(cellList);
	rowList = tblContent.insertRow(tblContent.rows.length);
	cellList = document.createElement("td");
	cellList.align = "left";
	cellList.style.cssText = "width:300px;height:15px";
	rowList.appendChild(cellList);
	cellList = document.createElement("td");
	cellList.style.cssText = "width:140px;height:15px";
	cellList.innerHTML = "<a href='javascript:void(0)' class='link' style='visibility:hidden'>" + this.strings.upload + "</a>";
	cellList.firstChild.onclick = function() {
		self.uploadFile(currentId);
		return false;
	};
	cellList.vAlign = "middle";
	cellList.align = "center";
	rowList.appendChild(cellList);
	this.checkFilesLimit();
	try{
		this.onAddFileComplete(this.fileList[currentId]);
	}
	catch(e){}
};
/**
 * 上传所有文件
 */
pmjFileUpload.prototype.uploadAllItems = function(){
	var flag = -1;
	if (this.tblListFiles != null){
		if (this.tblListFiles.rows.length > 0){
			for (var i = 0;i < this.tblListFiles.rows.length;i++){
				if (this.tblListFiles.rows[i].attributes["isUpload"].value == "false"){
					flag = i;
					break
				}
			};
			if (flag != -1){
				this.isUploadFileAll = true;
				var fileItemId = this.tblListFiles.rows[i].attributes["fileItemId"].value;
				this.uploadFile(fileItemId)
			}else{
				if (this.isUploadFileAll)
					try {
						this.onUploadComplete(this.objToArray(this.fileList));
					}catch(e) {};
				this.fileList = {};
				this.isUploadFileAll = false;
			}
		}
	}
	else{
		var ext = this.fileExt;
		if(ext==null)
			alert("请先选择要上传的文件!");
		else
			alert("请先选择要上传的文件!\n支持的文件格式:"+ext);
	}
};
/**
 * 上传文件
 */
pmjFileUpload.prototype.uploadFile = function(id){
	//debugger;
	if (!this.isUploadFile){
		this.selectItem(id);
		var tblContent = this.getCurrentTblContent(id);
		tblContent.rows[0].cells[2].removeChild(tblContent.rows[0].cells[2].firstChild);
		tblContent.rows[1].cells[1].removeChild(tblContent.rows[1].cells[1].firstChild);
		tblContent.parentNode.parentNode.attributes["isUpload"].value = "true";
		this.isUploadFile = true;
		this.getCurrentInputFile(id).disabled = false;
		this.progressDemo.style.display = "inline";
		this.getCurrentRowListFiles(id).cells[0].firstChild.rows[1].cells[0].appendChild(this.progressDemo);
		try{
			this.startRequest(id);
			this.sendIdSession(id);
		}catch(e){
			this.endLoading(id, true);
			this.isUploadFileAll = false;
			this.isUploadFile = false;
			tblContent.rows[1].cells[0].innerHTML += "<font class='text'>" + this.strings.error + "</font>";
            tblContent.rows[1].cells[0].vAlign = "top";
			return
		};
		if (!this.isUploadFile)return;
		var sp = "?";//参数分隔符
		if(this.pathUploadHandler.indexOf(sp)>0)
		      sp = "&";
		this.uploadForm.action = this.pathUploadHandler +sp+"sessionId=" + 
			this.sessionId + "&fileName=" + escape(escape(this.getFileName(this.getCurrentInputFile(id).value))) + 
			"&userfile=" + this.getCurrentInputFile(id).id;
		this.uploadForm.submit();
	}
};
/**
 * 创建一个XMLHttpRequest对象
 */
pmjFileUpload.prototype.createXMLHttpRequest = function()
{
	var xmlHttp = null;
	if (window.ActiveXObject){
		xmlHttp = new ActiveXObject("Microsoft.XMLHTTP");
	}else if (window.XMLHttpRequest){
		xmlHttp = new XMLHttpRequest();
	}
	return xmlHttp;
};
pmjFileUpload.prototype.startRequest = function(id){
	var xmlHttp = this.createXMLHttpRequest();
	//debugger;
	xmlHttp.open("POST", this.pathGetIdHandler, false);
	xmlHttp.send("id=" + id);
	if (xmlHttp.status == 200){
		if (!xmlHttp.responseText){
			throw "error"
		};
		this.sessionId = xmlHttp.responseText;
		this.inpUPLOAD_IDENTIFIER.value = this.sessionId
	}
	else{
		throw "error";
	}
};
pmjFileUpload.prototype.sendIdSession = function(id){
	try {
		var xmlHttp = this.createXMLHttpRequest();
		xmlHttp.open("post", this.pathGetInfoHandler, false);
		xmlHttp.setRequestHeader("Content-Type", "application/x-www-form-urlencoded;charset=UTF-8");
		xmlHttp.send("sessionId=" + this.sessionId);
		if (xmlHttp.status == 200){
			var res = xmlHttp.responseText;
			if (res){
				var err = res.split(":");
				if (err[0]=="error"){
					if (err[1] == -2){
						var f = document.getElementById("pmjFileUploadFrame");
						if (f)f.src = "about:blank";
						alert(this.printf(this.strings.errors["TooBig"], err[2], err[3], err[4]))
					}else if (err[1] == -3){
						alert(this.printf(this.strings.errors["PostSize"], err[2]))
					};
					throw "error"
				};
				res = parseInt(res, 10);
				if (isNaN(res)){
					throw "error";//不返回数字这里就抛错
				};
				if (res != -1){
				var self = this;
					try{	
						window.setTimeout(function () {self.sendIdSession(id)}, 500)
					}
					catch(e){}
				}else if (res == -1){
					this.uploadedCount++;
					this.endLoading(id, false);
					this.showMessageInfo(id, this.strings.done);
					if (this.isUploadFileAll){
						this.uploadAllItems();
					}
				}
			}
		}else{
			throw "error";
		}
	}catch(e){
		this.endLoading(id, true);
		this.isUploadFileAll = false;
		this.isUploadFile = false;
		this.showMessageInfo(id, this.strings.error);
	}
};
pmjFileUpload.prototype.endLoading = function(id,isError){
	this.isUploadFile = false;
	this.progressDemo.style.display = "none";
	this.container.appendChild(this.progressDemo);
	var f = this.fileList[id];
	if (f){
		f.error = isError;
		f.uploaded = !isError;
	};
	try {
		this.onFileUploaded(f);
	}catch(e) {};
	if (isError)
		try {
			this.onUploadComplete(this.objToArray(this.fileList));
		}catch(e) {};
	var c = this.getCurrentInputFile(id);
	if (c)c.parentNode.removeChild(c);
};
pmjFileUpload.prototype.showMessageInfo = function(id,msg){
	var tblContent = this.getCurrentTblContent(id);
	tblContent.rows[1].cells[0].innerHTML += "<font class='text'>" + msg + "</font>";
	tblContent.rows[1].cells[0].vAlign = "top";
};
/**
 * 获取该文件的table
 */
pmjFileUpload.prototype.getCurrentTblContent = function(id){
	for (var i = 0;i < this.tblListFiles.rows.length;i++){
		if (this.tblListFiles.rows[i].cells[0].firstChild.id == "tblContent" + id){
			return this.tblListFiles.rows[i].cells[0].firstChild;
		}
	}
};
/**
 * 获取当前文件的file input
 */
pmjFileUpload.prototype.getCurrentInputFile = function(id){
	return this.getFormField("file", "file" + id);
};
pmjFileUpload.prototype.getFormField = function(type,name){
	var fields = this.uploadForm.getElementsByTagName("input");
	for (var i = 0;i < fields.length;i++){
		var f = fields[i];
		if (f.type.toLowerCase()== type && f.name == name){
			return f;
		}
	};
	return null;
}
pmjFileUpload.prototype.getCurrentRowListFiles = function(id){
	for (var i = 0;i < this.tblListFiles.rows.length;i++){
		if (this.tblListFiles.rows[i].id == "rowListFiles" + id){
			return this.tblListFiles.rows[i];
		}
	}
};
/**
 * 创建一个table
 */
pmjFileUpload.prototype.createTblListFiles = function(){
	var tblListFiles = document.createElement("table");
	tblListFiles.id = "tblListFiles";
	tblListFiles.style.backgroundColor = "#FFFFFF";
	tblListFiles.cellPadding = "0";
	tblListFiles.cellSpacing = "0";
	tblListFiles.border = "0";
	return tblListFiles;
};
/**
 * 选中一行
 */
pmjFileUpload.prototype.selectItem = function(currentId){
	var currentRow = this.getCurrentRowListFiles(currentId);
	if (this.idRowSelected){
		var row = this.getCurrentRowListFiles(this.idRowSelected);
		if (row){
			if (row.id != currentRow.id){
				currentRow.className = "pmj_rowsel";
				this.idRowSelected = currentId;
				row.className = "pmj_row";
			}else{
				currentRow.className = "pmj_row";
				this.idRowSelected = "";
			}
		}else{
			currentRow.className = "pmj_rowsel";
			this.idRowSelected = currentId;
		}
	}else{
		currentRow.className = "pmj_rowsel";
		this.idRowSelected = currentId;
	}
};
/**
 * 移除指定的文件
 */
pmjFileUpload.prototype.removeItem = function(currentId){
	var r = this.getCurrentRowListFiles(currentId);
	r.parentNode.removeChild(r);
	delete this.fileList[currentId];
	this.checkFilesLimit();
	if(this.getTotalFilesCount()==0)
		this.containerTable.style.display = "none";//显示表格
};
/**
 * 全部移除
 */
pmjFileUpload.prototype.removeAllItems = function(){
	if (!this.isUploadFile){
		if (this.tblListFiles != null){
			var count = this.tblListFiles.rows.length;
			if (count > 0){
				for (var i = 0;i < count;i++){
					this.tblListFiles.deleteRow(0);
				}
			}
		};
		this.fileList = {}
	};
	this.checkFilesLimit();
	this.containerTable.style.display = "none";//显示表格
};
/**
 * 获取当前选中的行
 */
pmjFileUpload.prototype.getCurrentRowListFiles = function(currentId){
	for (var i = 0;i < this.tblListFiles.rows.length;i++){
		if (this.tblListFiles.rows[i].id == "rowListFiles" + currentId){
			return this.tblListFiles.rows[i];
		}
	}
};
/**
 * 获取文件名
 */
pmjFileUpload.prototype.getFileName = function(path){
	var arr = path.split("\\");
	path = arr[arr.length - 1];
	arr = path.split("/");
	return arr[arr.length - 1];
};
/**
 * 根据文件名获取文件类型图片
 */
pmjFileUpload.prototype.getImgFile = function(fileName){
	var srcImgPic = this.imgPath + "ico_image.png";
	var srcImgVideo = this.imgPath + "ico_video.png";
	var srcImgSound = this.imgPath + "ico_sound.png";
	var srcImgArchives = this.imgPath + "ico_zip.png";
	var srcImgFile = this.imgPath + "ico_file.png";
	var srcImgDoc = this.imgPath + "ico_doc.png";
	var srcImgXls = this.imgPath + "ico_xls.png";
	
	var valueImgPic = "jpg,jpeg,gif,png,bmp,tiff";
	var valueImgVideo = "avi,mpg,mpeg,rm,move";
	var valueImgSound = "wav,mp3,ogg";
	var valueImgArchives = "zip,rar,tar,tgz,arj";
	var ext = this.getFileExtension(fileName);
	if (ext == "")return srcImgFile;
	if (valueImgPic.indexOf(ext)!= -1){
		return srcImgPic;
	};
	if (valueImgVideo.indexOf(ext)!= -1){
		return srcImgVideo;
	};
	if (valueImgSound.indexOf(ext)!= -1){
		return srcImgSound;
	};
	if (valueImgArchives.indexOf(ext)!= -1){
		return srcImgArchives;
	};
	return srcImgFile;
};
/**
 * 检测是否超过最大文件数
 */
pmjFileUpload.prototype.checkFilesLimit = function(){
	if (this.filesLimit > 0){
		var n = this.getTotalFilesCount();
		this.enableAddButton(n < this.filesLimit);
	}
};
/**
 * 获取扩展名
 */
pmjFileUpload.prototype.getFileExtension = function(fileName){
	var ext = "", arr = fileName.split(".");
	if (arr.length > 1)ext = arr[arr.length - 1].toLowerCase();
	return ext;
};
/**
 * 设置要限制的文件格式
 */
pmjFileUpload.prototype.setFileExt = function(fileExt){
	this.fileExt = fileExt;
};
/**
 * 检测文件格式
 * 格式匹配返回true
 */
pmjFileUpload.prototype.checkedFileExt = function(fe){
	if(this.fileExt==null)return true;
	if(this.fileExt.indexOf(fe.toUpperCase())<0){
		alert("不支持该文件格式!");
		return false;
	}
	return true;
};
/**
 * 设置服务器处理方法
 * @param UploadHandler
 * @param getInfoHandler
 * @param getIdHandler
 */
pmjFileUpload.prototype.setServerHandlers = function(UploadHandler,getInfoHandler,getIdHandler){
	this.pathUploadHandler = UploadHandler;
	this.pathGetInfoHandler = getInfoHandler;
	this.pathGetIdHandler = getIdHandler;
};
/**
 * 设置图片路径
 */
pmjFileUpload.prototype.setImagePath = function(newPath){
	this.imgPath = newPath;
};
/**
 * 创建空进度条
 */
pmjFileUpload.prototype.createProgressBar = function(){
	var srcImgProgress = this.imgPath + "pb_back.gif";
	var srcImgEmpty = this.imgPath + "pb_empty.gif";
	var tblProgress = document.createElement("table");
	tblProgress.cellPadding = "0";
	tblProgress.cellSpacing = "0";
	tblProgress.border = "0";
	tblProgress.style.cssText = "height:10px;width:149px;border-bottom:0px !important;display:none";
	tblProgress.id = "progress";
	var row = tblProgress.insertRow(tblProgress.rows.length);
	var cell1 = document.createElement("td");
	cell1.style.cssText = "font-size:1px;background-image:url(" + srcImgProgress + ");width:150px;height:10px;border:1px solid #A9AEB3";
	cell1.align = "right";
	var img = document.createElement("img");
	img.src = srcImgEmpty;
	img.style.width = "100%";
	img.style.height = "7px";
	cell1.appendChild(img);
	row.appendChild(cell1);
	return tblProgress;
};
/**
 * 创建百分比
 */
pmjFileUpload.prototype.createPercentPanel = function (){
	var percentCompleted = document.createElement("div");
	percentCompleted.style.cssText = "font-size:9px;height:8px;position:absolute;left:210px;width:20px;display:none;padding-top:0px";
	percentCompleted.id = "percentCompletedValue";
	return percentCompleted;
};
/**
 * 滚动进度条
 */
pmjFileUpload.prototype.createProgressDemo = function (){
	var srcImgProgress = this.imgPath + "pb_demoupload.gif";
	var tblProgress = document.createElement("table");
	tblProgress.cellPadding = "0";
	tblProgress.cellSpacing = "0";
	tblProgress.border = "0";
	tblProgress.style.cssText = "height:10px;width:152px;display:none;";
	tblProgress.id = "progress";
	var row = tblProgress.insertRow(tblProgress.rows.length);
	var cell1 = document.createElement("td");
	cell1.style.cssText = "font-size:1px;border:1px solid #A9AEB3;";
	cell1.innerHTML = "<img src=" + srcImgProgress + " style = 'width:150px;height:8px;'/>";
	row.appendChild(cell1);
	return tblProgress;
};
/**
 * 创建一个id
 */
pmjFileUpload.prototype.createId = function(){
	return this.counter++;
};
/**
 * 设置"添加一个文件是否立即上传"
 */
pmjFileUpload.prototype.setUploadImmediately = function(immed){
	this.isUploadImmediately = immed;
};
/**
 * 当添加一个文件时执行该动作
 */
pmjFileUpload.prototype.onAddFile = function(value){
	var fileName = this.getFileName(value);
	if(this.fileNameLength!=null&&this.fileNameLength<fileName.length){
		alert("文件名太长!\n最大长度："+this.fileNameLength);
		return false;
	}
	var ext = this.getFileExtension(fileName);
	if(!this.checkedFileExt(ext))return false;
	
	return true;
};
/**
 * 设置上传文件个数
 */
pmjFileUpload.prototype.setFilesLimit = function(limit) {
	var n = parseInt(limit);
	if (!isNaN(n)&& n >= 0) this.filesLimit = n;
};
/**
 * 设置文件最大值
 * 单位比特
 */
pmjFileUpload.prototype.setFileSize = function(size) {
	var n = parseInt(size);
    if (!isNaN(n)&& n >= 0) this.MAX_FILE_SIZE = n;
};
/**
 * 获取文件总数
 */
pmjFileUpload.prototype.getTotalFilesCount = function(){
	var count = this.uploadedCount;
	if (this.tblListFiles != null){
		if (this.tblListFiles.rows.length > 0){
			for (var i = 0;i < this.tblListFiles.rows.length;i++){
				if (this.tblListFiles.rows[i].attributes["isUpload"].value == "false"){
					count++;
				}
			}
		}
	};
	return count;
};
/**
 * 添加按钮不可用
 */
pmjFileUpload.prototype.enableAddButton = function(enabled)
{
	this.currentFile.disabled = !enabled;
	var btn = this.currentFile.parentNode.previousSibling.childNodes[1].childNodes[0].childNodes[0];
	btn.src = this.imgPath + (enabled ? "add.gif" : "add_d.gif");
	btn.parentNode.className = enabled ? "" : "pmj_dis";
};
pmjFileUpload.prototype.printf = function() {
	var n = arguments.length;
	var str = arguments[0];
	for (var i = 1;i < n;i++){
		var pattern = "\\{" + (i-1) + "\\}";
		var re = new RegExp(pattern, "g");
		str = str.replace(re, arguments[i]);
	};
	return str;
};
pmjFileUpload.prototype.objToArray = function (obj) {
	var res = new Array();
	for(var key in obj){
		res[res.length] = obj[key];
	};
	return res
};
/**
 * 格式化后的文件大小
 */
pmjFileUpload.prototype.getCnMaxSize = function(){
	if(this.MAX_FILE_SIZE>(1024*1024))
		return this.MAX_FILE_SIZE/(1024*1024)+"M";
	if(this.MAX_FILE_SIZE>(1024))
		return this.MAX_FILE_SIZE/1024+"K";
	return this.MAX_FILE_SIZE+"byte";
}
/**
 * 所有文件上传完毕之后
 */
pmjFileUpload.prototype.onUploadComplete = function (files) {
	//debugger;
	//alert(files.length);
	//alert("onUploadComplete");
	if(this.onUploadCompleteHandler!=null){
		this.onUploadCompleteHandler(files);
	}
};
/**
 * 单个文件上传完毕之后
 */
pmjFileUpload.prototype.onFileUploaded = function (file) {
	//alert("onFileUploaded");
	if(this.onFileUploadedHandler!=null){
		this.onFileUploadedHandler(file);
	}
};
/**
 * 添加一个文件之后
 */
pmjFileUpload.prototype.onAddFileComplete = function (file) {
	if(this.onAddFileCompleteHandler!=null){
		this.onAddFileCompleteHandler(file);
	}
};
/**
 * 设置文件上传完毕之后的动作
 */
pmjFileUpload.prototype.setOnUploadCompleteHandler = function(handler){
	this.onUploadCompleteHandler = handler;
}
/**
 * 设置单个文件上传完毕之后的动作
 */
pmjFileUpload.prototype.setOnFileUploadedHandler = function(handler){
	this.onFileUploadedHandler = handler;
}
/**
 * 添加一个文件之后执行的动作
 */
pmjFileUpload.prototype.setOnAddFileCompleteHandler = function(handler){
	this.onAddFileCompleteHandler = handler;
}