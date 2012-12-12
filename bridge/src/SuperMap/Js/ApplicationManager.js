/**
 * Created with JetBrains WebStorm.
 * User: liuyayun
 * Date: 12-11-8
 * Time: 上午10:54
 * To change this template use File | Settings | File Templates.
 */
/**
 * 核心管理类
 * @constructor   主要使用其静态的方法，不需要其实例
 */
SuperMap.Web.Util.ApplicationManager=function(){

}
/**
 *  存储flex项目（swf）id的字段，在第一次flex与js通信时需要从flex端传递过来
 * @type {String}  swf的id
 */
SuperMap.Web.Util.ApplicationManager.projectName="";
/**
 * 用于存储程序启动之后的所有对象
 * @type {SuperMap.Web.Util.HashTable}
 */
SuperMap.Web.Util.ApplicationManager.classHashTable=new SuperMap.Web.Util.HashTable();
/**
 * flex调用js的入口
 * flex端的所有操作从此入口进入（入口有且仅有一个）
 * @return {*}  经过处理后返回给flex的数据
 */
SuperMap.Web.Util.ApplicationManager.initBridgeFlexToJs=function(){

    //接收flex传过来的东西
    var agr=arguments[0];
    var result;
    //总共有三种情况
    //1、CLASS 初始化类，无返回值
    //2、FUNCTION 方法的调用、属性的设置、事件的注册，部分存在返回值
    //3、FIELD  字段的读取
    //先通过action来判断是哪种
    switch(agr["action"])
    {
        case "CLASS":
            // 类初始化和事件不会存在返回值，只有方法存在返回值
            this.initClass(agr);
            break;
        case "FUNCTION":
            result=this.initFunction(agr);
            break;
        case "FIELD":
            result=this.initField(agr);
            break;
    }
    return result;
}
/**
 * 初始化类的入口
 * @param classOpentions
 */
SuperMap.Web.Util.ApplicationManager.initClass=function(classOpentions){
    currentKey=classOpentions["key"].toString();
    var args =  classOpentions["realArgument"];
    var argumentString ="";
    if(args!=undefined)
    {
        argumentString="SuperMap.Web.Util.ApplicationManager.parseArguments(\'"+currentKey+"\',\'"+args[0]+"\')";
        if(args.length>1)
        {
            for(var i=1;i<args.length;i++){
                argumentString+=",SuperMap.Web.Util.ApplicationManager.parseArguments(\'"+currentKey+"\',\'"+args[i]+"\')";
            }
        }
    }
    var str = "new "+classOpentions["className"]+"("+argumentString+")";
    var  object = eval("("+str+")");
    //保存在哈希表里面
    this.classHashTable.add(classOpentions["key"],object);
}
/**
 * 调用类的方法(属性也属于方法，事件也是方法的形式)
 * @param functionOpentions
 */
SuperMap.Web.Util.ApplicationManager.initFunction=function(functionOpentions){
    //找到需要调用的对象，
    //var object=this.classHashTable.getItem(parseInt(functionOpentions["key"]));

    currentKey=functionOpentions["key"].toString();
    var args =  functionOpentions["realArgument"];
    var argumentString ="";
    if(args!=undefined)
    {
        argumentString="SuperMap.Web.Util.ApplicationManager.parseArguments(\'"+currentKey+"\',\'"+args[0]+"\')";
        if(args.length>1)
        {
            for(var i=1;i<args.length;i++){
                argumentString+=",SuperMap.Web.Util.ApplicationManager.parseArguments(\'"+currentKey+"\',\'"+args[i]+"\')";
            }
        }
    }
    var str = "SuperMap.Web.Util.ApplicationManager.classHashTable.getItem(parseInt(\'"+functionOpentions.key+"\'))[\'"+functionOpentions.functionName+"\']("+argumentString+")";
    var result = eval("("+str+")");
    if(functionOpentions.isReturn)
    {
        result=SuperMap.Web.Util.ApplicationManager.wrapArray(result);
        return result;
    }

}
/**
 * 控制字段的入口
 * @param fieldOpentions
 * @return {Object}
 */
SuperMap.Web.Util.ApplicationManager.initField=function(fieldOpentions){
    var  fieldOperate=fieldOpentions["functionName"].split("_")[0];
    var  fieldName=fieldOpentions["functionName"].split("_")[1];
    if(fieldOperate=="get")
    {
        var str1="SuperMap.Web.Util.ApplicationManager.classHashTable.getItem(parseInt(\'"+fieldOpentions.key+"\'))[\'"+fieldName+"\']";
        var result = eval(str1);
        if(fieldOpentions.isReturn)
        {
            result=SuperMap.Web.Util.ApplicationManager.wrapArray(result);
            return result;
        }
    }
    else if(fieldOperate=="set")
    {
        currentKey=fieldOpentions["key"].toString();
        var args =  fieldOpentions["realArgument"];
        var str2="SuperMap.Web.Util.ApplicationManager.classHashTable.getItem(parseInt(\'"+fieldOpentions.key+"\'))[\'"+fieldName+"\']=SuperMap.Web.Util.ApplicationManager.parseArguments(\'"+currentKey+"\',\'"+args[0]+"\')";
        eval(str2);
    }
}
/**
 * 在初始化类的时候的回调函数
 * @param key  回调函数所绑定的对象的key，在传给js端时方便绑定
 * @param callbackString   回调给flex端的哪个方法
 * @return {Function}
 */
SuperMap.Web.Util.ApplicationManager.callbackFunction = function(key,callbackString){
    return function(){
        var result=[];
        for(var i=0;i<arguments.length;i++)
        {
            result[i]=arguments[i];
        }
        result=SuperMap.Web.Util.ApplicationManager.wrapArray(result);
        var dou=document.getElementById(SuperMap.Web.Util.ApplicationManager.projectName);
        if(callbackString=="succeedCallback")
        {
            dou.style.zoom=1;
        }
        dou.initBridgeJsToFlex(key,callbackString,result);
    }
}
/**
 * 将传进的数组转换为相应的参数
 * @param key
 * @param argStr
 * @return {*}
 */
SuperMap.Web.Util.ApplicationManager.parseArguments = function(key,argArray){
    //判断一下是否是数组
    if(argArray.split("[").length>1)
    {
        argArray=eval(argArray);
    }
    return SuperMap.Web.Util.ApplicationManager.convertToObject(key,argArray);
}
SuperMap.Web.Util.ApplicationManager.convertToObject=function(key,argArray){
     if((typeof argArray)=="string")
     {
        var a = argArray.split("$");
        var value = a[0];
        var type = a[1];
        var valueResult = null;
        if(value&&type){
            switch(type)
            {
                case "Function":
                    valueResult = this.callbackFunction(key,value);
                    break;
                case "Element":
                    valueResult=document.getElementById(value);
                    break;
                case "String":
                    valueResult=String(value);
                    break;
                case "Number":
                    valueResult=Number(value);
                    break;
                case "Boolean":
                    valueResult=(value=="true")?true:false;
                    break;
                case "Object":
                    valueResult=SuperMap.Web.Util.ApplicationManager.classHashTable.getItem(parseInt(value));
                    break;
                case "Enum":
                    valueResult=eval(value);
                    break;
                case "Date":
                    valueResult=new Date(Number(value));
                    break;
            }
        }
        return valueResult;
     }
    else
     {
         var resultArray=[];
         for(var i=0;i<argArray.length;i++)
         {
             resultArray[i]=SuperMap.Web.Util.ApplicationManager.convertToObject(key,argArray[i]);
         }
         return resultArray;
     }
}
/**
 * 创建一个唯一的key
 * @return {*}
 */
SuperMap.Web.Util.ApplicationManager.createSoleKey=function(){
    var nowData=new Date();
    var soleKey=SuperMap.Web.Util.ApplicationManager.verifySoleKey(nowData.getTime()*2);
    return soleKey;
}
/**
 * 计算key
 * @param timeNumber
 * @return {*}
 */
SuperMap.Web.Util.ApplicationManager.verifySoleKey=function(timeNumber){
    if(SuperMap.Web.Util.ApplicationManager.classHashTable.contains(timeNumber))
    {
        timeNumber+=1;
        arguments.callee(timeNumber);
    }
    return timeNumber;
}
/**
 * 将返回值转化为标准数组格式传回给flex端
 * @param oldArray
 * @return {*}
 */
SuperMap.Web.Util.ApplicationManager.wrapArray=function(oldArray){
    var newArray;
    switch(typeof oldArray)
    {
        case "undefined":
            //未定义的情况直接返回，就是未定义
            break;
        case "string":
            newArray=oldArray+"$String";
            break;
        case "number":
            newArray=oldArray;
            break;
        case "boolean":
            newArray=oldArray;
            break;
        case "function":
            //暂不考虑
            break;
        case "object":
        {
            if(oldArray!=null)
            {
                //非空才能使用constructor判定
                switch (oldArray.constructor)
                {
                    case Array:
                    {
                        newArray=[];
                        for(var i=0;i<oldArray.length;i++)
                        {
                            newArray[i]=SuperMap.Web.Util.ApplicationManager.wrapArray(oldArray[i]);
                        }
                        break;
                    }
                    case Date:
                    {
                        //as里面的Date和js里面的一样，可以互相通信
                        newArray=oldArray;
                        break;
                    }
                    default :
                    {
                        //自己的类
                        var key=SuperMap.Web.Util.ApplicationManager.createSoleKey();
                        SuperMap.Web.Util.ApplicationManager.classHashTable.add(key,oldArray);
                        //获取类名需要考虑一下，自己创建的简单类名不是下面这样获取的
                        newArray= key.toString()+"$"+oldArray.constructor.__typeName.toString();
                        //newArray=key.toString()+"$"+oldArray.constructor.name;
                    }
                }
            }
            else
            {
                //此为空的情况
                newArray=oldArray;
            }
        }
    }
    return newArray;
}
/**
 * 给界面交互操作的父类添加一个KEY，他和他的子类比较特殊，用于对应对象
 * 此方法在as端每一个子类初始化的最后悔调用，将key传递过来记录，方便回调函数使用
 * @param key
 */
SuperMap.Web.UI.Action3Ds.SceneAction.prototype.addKey=function(key){
    this.KEY=key;
}
/**
 * 重写了方法 onClick，此方法会在鼠标单击时触发，在这里不活后传递给as来处理
 * 变相的在as端形成了事件的注册
 * 一下都是一样
 * @param e
 */
SuperMap.Web.UI.Action3Ds.SceneAction.prototype.onClick=function(e){
    //回调的e对象为EventObject类型
    var result=SuperMap.Web.Util.ApplicationManager.wrapArray(e);
    var dou=document.getElementById(SuperMap.Web.Util.ApplicationManager.projectName);
    //此处判定就怕本身内部的那个操作并不是在as端初始化的，就不存在key
    if(this.KEY!=undefined)
    {
        dou.initBridgeJsToFlex(this.KEY,"onClick",result);
    }
}
SuperMap.Web.UI.Action3Ds.SceneAction.prototype.onDbClick=function(e){
    var result=SuperMap.Web.Util.ApplicationManager.wrapArray(e);
    var dou=document.getElementById(SuperMap.Web.Util.ApplicationManager.projectName);
    if(this.KEY!=undefined)
    {
        dou.initBridgeJsToFlex(this.KEY,"onDbClick",result);
    }
}
SuperMap.Web.UI.Action3Ds.SceneAction.prototype.onKeyDown=function(e){
    var result=SuperMap.Web.Util.ApplicationManager.wrapArray(e);
    var dou=document.getElementById(SuperMap.Web.Util.ApplicationManager.projectName);
    if(this.KEY!=undefined)
    {
        dou.initBridgeJsToFlex(this.KEY,"onKeyDown",result);
    }
}
SuperMap.Web.UI.Action3Ds.SceneAction.prototype.onKeyUp=function(e){
    var result=SuperMap.Web.Util.ApplicationManager.wrapArray(e);
    var dou=document.getElementById(SuperMap.Web.Util.ApplicationManager.projectName);
    if(this.KEY!=undefined)
    {
        dou.initBridgeJsToFlex(this.KEY,"onKeyUp",result);
    }
}
SuperMap.Web.UI.Action3Ds.SceneAction.prototype.onMouseDown=function(e){
    var result=SuperMap.Web.Util.ApplicationManager.wrapArray(e);
    var dou=document.getElementById(SuperMap.Web.Util.ApplicationManager.projectName);
    if(this.KEY!=undefined)
    {
        dou.initBridgeJsToFlex(this.KEY,"onMouseDown",result);
    }
}
SuperMap.Web.UI.Action3Ds.SceneAction.prototype.onMouseMove=function(e){
    var result=SuperMap.Web.Util.ApplicationManager.wrapArray(e);
    var dou=document.getElementById(SuperMap.Web.Util.ApplicationManager.projectName);
    if(this.KEY!=undefined)
    {
        dou.initBridgeJsToFlex(this.KEY,"onMouseMove",result);
    }
}
SuperMap.Web.UI.Action3Ds.SceneAction.prototype.onMouseOut=function(e){
    var result=SuperMap.Web.Util.ApplicationManager.wrapArray(e);
    var dou=document.getElementById(SuperMap.Web.Util.ApplicationManager.projectName);
    if(this.KEY!=undefined)
    {
        dou.initBridgeJsToFlex(this.KEY,"onMouseOut",result);
    }
}
SuperMap.Web.UI.Action3Ds.SceneAction.prototype.onMouseOver=function(e){
    var result=SuperMap.Web.Util.ApplicationManager.wrapArray(e);
    var dou=document.getElementById(SuperMap.Web.Util.ApplicationManager.projectName);
    if(this.KEY!=undefined)
    {
        dou.initBridgeJsToFlex(this.KEY,"onMouseOver",result);
    }
}
SuperMap.Web.UI.Action3Ds.SceneAction.prototype.onMouseUp=function(e){
    var result=SuperMap.Web.Util.ApplicationManager.wrapArray(e);
    var dou=document.getElementById(SuperMap.Web.Util.ApplicationManager.projectName);
    if(this.KEY!=undefined)
    {
        dou.initBridgeJsToFlex(this.KEY,"onMouseUp",result);
    }
}
SuperMap.Web.UI.Action3Ds.SceneAction.prototype.onMouseWheel=function(e){
    var result=SuperMap.Web.Util.ApplicationManager.wrapArray(e);
    var dou=document.getElementById(SuperMap.Web.Util.ApplicationManager.projectName);
    if(this.KEY!=undefined)
    {
        dou.initBridgeJsToFlex(this.KEY,"onMouseWheel",result);
    }
}
