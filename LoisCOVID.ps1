$uid=139 #用户Id
$gid=1 #组号
$uni=$false #是否在所/宿舍
$con=$false #是否在国内
$loc="北京市石景山区西井路" #地理位置
$temp=1 #体温，0：35以下，1：35-36.4，2：36.5-36.9，3：37-37.3，4：37.4-38，5：38.1-38.5，6：38.6-39，7：39.1-40，8：40以上
$sit=0 #健康状况，0：正常，1：疑似感染，2.确诊感染，3：其他
$sym=$false #是否出現發熱、乏力、乾咳、呼吸困難等症狀
$inf=$false #是否接觸疑似/確診人群
$note=$false #是否有疫情相關情況需要注意
$area=$false #14日内是否到過中高風險區
$toge=0 #共同生活成員健康狀況, 0：正常，1：出現發熱等可疑症狀，2：疑似感染，3：确诊感染，4：無共同生活成員
$oth='' #其他信息
$dat='undefined' #猜测为日期，不用管该参数

$para= -Join('uid=',$uid, '&gid=', $gid, '&uni=', $uni, '&con=', $con, '&loc=', $loc, '&temp=', $temp, '&sit=', $sit, '&sym=', $sym, '&inf=', $inf, '&note=', $note, '&area=', $area, '&toge=', $toge, '&oth=', $oth, '&dat=', $dat)

$res = Invoke-WebRequest -Uri 'https://a.rouor.com/LoisCOVID/rpt/add' -Body $para.ToLower() -ContentType 'application/x-www-form-urlencoded;charset=UTF-8'  -Method 'POST'
$res
