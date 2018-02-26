<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta charset=utf-8>
<title>${article.title}</title>
<link href="${basePath}/resources/static/three/css/public.css" rel="stylesheet" type="text/css" />
<link href="${basePath}/resources/static/three/css/news.css" rel="stylesheet" type="text/css" />

<script type="text/javascript" src="${basePath}/resources/static/three/js/jquery.js"></script>
<script type="text/javascript" src="${basePath}/resources/static/three/js/jquery.Xslider.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	
	// 焦点图片水平滚动
	$("#slider1").Xslider({
		// 默认配置
		affect: 'scrollx', //效果  有scrollx|scrolly|fade|none
		speed: 800, //动画速度
		space: 6000, //时间间隔
		auto: true, //自动滚动
		trigger: 'mouseover', //触发事件 注意用mouseover代替hover
		conbox: '.conbox', //内容容器id或class
		ctag: 'div', //内容标签 默认为<a>
		switcher: '.switcher', //切换触发器id或class
		stag: 'a', //切换器标签 默认为a
		current:'cur', //当前切换器样式名称
		rand:false //是否随机指定默认幻灯图片
	});
	
	// 焦点图片垂直滚动
	$("#slider2").Xslider({
		affect:'scrolly',
		ctag: 'div',
		speed:400
	});
	
	// 焦点图片淡隐淡现
	$("#slider3").Xslider({
		affect:'fade',
		ctag: 'div'
	});
	
	// 选项卡
	$("#slider4").Xslider({
		affect:'none',
		ctag: 'div',
		speed:10
	});
	
	
});
</script>
</head>

<body>
<div class="wrap_top">
    	<div class="top">
        	<div class="logo"><a href="/index.shtml"><img src="${basePath}/resources/static/three/images/logo.png" width="200" height="60" /></a></div>
            <div id="navMenu">
				<ul class="menu1">
				       <#if articleTypes?exists && articleTypes?size gt 0 >
							<#list articleTypes as articleType>
				       			<li><a href="${basePath}/list.shtml?articleType.id=${articleType.id}" target="_black">${articleType.typeName}</a>
				       			</li>
					   		</#list>
                     	</#if>
                 </ul>
			</div>
        </div>
</div>
<script type="text/javascript">
		sfHover = function() {
		var sfEls = document.getElementById("navMenu").getElementsByTagName("li");
		for (var i=0; i<sfEls.length; i++) {
		sfEls[i].onmouseover=function() {
		this.className+=" sfhover";
		}
		sfEls[i].onmouseout=function() {
		this.className=this.className.replace(new RegExp(" sfhover\\b"), "");
		}
		}
		}
		if (window.attachEvent) window.attachEvent("onload", sfHover);
</script>
<div id="slider1" class="slider">
			 <div class="conbox">
					 <#if slides?exists && slides?size gt 0 >
						<#list slides as item>
					 		<div><a href="#" title=""><img src="${imageWebServer}/jeegem/upload/JeeGem/${item.slideImage}" width="1000" height="355" /></a></div>
					 	</#list>
                     </#if>
			</div>
			<div class="switcher">
					         <#if slides?exists && slides?size gt 0 >
								<#list slides as item>
									<#if item_index == 0 >
							 			<a href="#" class="cur">${item_index +1}</a>
							 		<#else>
							 			<a href="#" >${item_index +1}</a>
							 		</#if>
							 	</#list>
		                     </#if>
			</div>
</div>

<div class="mian">
    <div class="matter">
        <div class="left">
        	<div class="a03">
            	<div class="info">${article.articleType.typeName}</div>
                    <div class="content">
                   		<ul>
						            <li><a href="/channel/it_news">IT资讯</a></li>
						            <li><a href="/channel/sys_news">系统介绍</a></li>
                        </ul>
                   </div>
            </div>
        </div>
        <div class="right">
        	<div class="new">
            	<div class="info">
                	<div class="title"></div>
                </div>
                <div class="content2">
                	<h2>${article.title}</h2>
                    <div class="biaot">作者：JeeGem    发布于：${article.addTime?string('yyyy-MM-dd hh:mm:ss')}</div>   
                    <div class="neirong">
                      <div class="text clear" id="contentText"> 
      <div itemprop="articleBody">
       ${article.content}
      </div> 
      
                    </div>      
                </div>
                <!--PC版-->
				
            </div>
        </div>
    </div>	

 </div>
<div class="bottomwrap">
	<div  class="bottom">
		<ul>
			 
			<li  style="float: left;margin-left: 20px;"><a style="color: white;" href='jeegem.com' target='_blank' title='企业网站管理系统'>JeeGem</a></li>
			
			 
		</ul>
	</div>
	<div class="bottom">
		<div class="wenzi">
			JeeGem 版权所有 
			<br /> Copyright © 2016-2022 
		</div>
	</div>
</div>
<!-- JiaThis Button BEGIN -->
<script type="text/javascript" src="http://v3.jiathis.com/code/jiathis_r.js?move=0" charset="utf-8"></script>
<!-- JiaThis Button END -->
<!-- UJian Button BEGIN -->
	<script type="text/javascript" src="http://v1.ujian.cc/code/ujian.js?type=slide"></script>
<!-- UJian Button END -->
</body>
</html>
