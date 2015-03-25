var OneThingBar=function() {
  // 1thing.kr - Let's start with one thing.
  var styl = document.createElement('style')
  styl.innerHTML = "div#notification-banner { background: rgba(255, 51, 0, 1); border-radius: 0 0 6px 6px; color: rgba(255, 255, 255, 1); cursor: pointer; font-weight: bold; font-family: Open Sans; left: 0%; line-height: 25px; margin-left: 0px; position: fixed; text-align: center; top: 0; width: 100%; } div#notification-banner span { padding: 3px 10px; }"
  document.body.appendChild(styl)
  var banner = document.createElement("div")
  banner.id = "notification-banner" 
  banner.onclick = (function () { return function() {this.style.display='none'} })()
  banner.title="누르면 사라집니다.(click to hide)"
  banner.innerHTML = '<span>뭐라도 해야겠는데 그저 막막하신가요? 작은 것 하나를 <a href="http://1thing.kr/" target=_blank>시작</a>해봐요.</span>'
  document.body.appendChild(banner)
};