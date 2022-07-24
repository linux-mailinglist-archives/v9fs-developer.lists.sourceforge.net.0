Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id EBD1657F2C2
	for <lists+v9fs-developer@lfdr.de>; Sun, 24 Jul 2022 05:31:51 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1oFSLK-0004Bt-Ll; Sun, 24 Jul 2022 03:31:46 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <amazon@wiboi.cn>) id 1oFSLJ-0004Bn-8A
 for v9fs-developer@lists.sourceforge.net; Sun, 24 Jul 2022 03:31:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Message-ID:Date:Subject:
 To:From:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=O0fSJ3HfHpkrVsDUgJshRP6fYBm5pbgFixJfwmgDWeM=; b=J6Yqsn2E8qQyFbG8lL7Ef25Hu7
 NX/QRb0Vqi+LTUjDWOikvHqG53H8KU0ElGKsueTaQ8YsgwfLQuZmOp7xgjIGIUwlSZ8ozvJ6fOQV5
 QRuH9TMiwh0NIoj1urw+4YinPzPVdxY+uRqBrEW4PcUdlSVt5Hre0kbzkrWrv7NKrMlk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Message-ID:Date:Subject:To:From:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=O0fSJ3HfHpkrVsDUgJshRP6fYBm5pbgFixJfwmgDWeM=; b=X
 vF0AFYBFiylqynW0XwiEaOiVszE24kgS7497gguT1kGyg2xlsaSehUQTYsyEP86F/boCQm09XJ4xv
 zsuGNg5tS8SejjLhzrp8YRdiC/nDnc730KR28csKlTRDxCaMqMWwYouxbHENEVDjapZnmlw+zVYPh
 K0kCpBeZE8G17CM0=;
Received: from mail.wiboi.cn ([194.156.121.218] helo=wiboi.cn)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1oFSLH-008LJu-LM
 for v9fs-developer@lists.sourceforge.net; Sun, 24 Jul 2022 03:31:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; s=key1; d=wiboi.cn;
 h=Sender:From:To:Subject:Date:Message-ID:MIME-Version:Content-Type;
 i=amazon@wiboi.cn;
 bh=O0fSJ3HfHpkrVsDUgJshRP6fYBm5pbgFixJfwmgDWeM=;
 b=KbQc0ThPOVOeHJ2A6CRR1e8sb1XwI1HKgzvtIqWBOOGHqjrPzxSSjTwo/xVTQhm0I28Y6S6FQ+Ur
 Wrr9MdUCoDAyJ7++jijNUiTMe9e5qoFVfAsmVCP+xpQIgZ72dl23+/z/MeBImO4lP7niONYU06Qc
 GhDqocHtbITcQyvK3yOmyBi09JGc062tLbaU+AUhNzDG/pk/Of870I/LOxunNTdZS5wN+rhCUDR7
 EXMAbEfdktqhlcM4bymT27AIHEw10yZIfwyl25SzLjTw5Xh6Yly/OSorkJh9Er+uHvc9OsDjlSrz
 KkwoEt31V7Y6d3RiNPGwMmMaieXrkpqlOKKQNQ==
From: nfkiemr <amazom@security.co.jp>
To: v9fs-developer <v9fs-developer@lists.sourceforge.net>
Date: Sun, 24 Jul 2022 12:30:16 +0900
Message-ID: <007fc337fe53$85a43596$316f49d9$@amazon.co.jp>
MIME-Version: 1.0
X-Spam-Score: 5.5 (+++++)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  注文履歴 ご注文の確認注文番号： 613-2894642-3368298
    v9fs-developer@lists.sourceforge.net 様 誰かがあなたのAmazonアカウントを使用して、別のデバイスからこの注文を購入しました。
    まだ注文していない場合は� [...] 
 
 Content analysis details:   (5.5 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  3.6 RCVD_IN_PBL            RBL: Received via a relay in Spamhaus PBL
                             [194.156.121.218 listed in zen.spamhaus.org]
  0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
                             mail domains are different
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
  0.0 T_KAM_HTML_FONT_INVALID Test for Invalidly Named or Formatted
                             Colors in HTML
  1.8 AMAZON_IMG_NOT_RCVD_AMZN Amazon hosted image but message not
                             from Amazon
  0.0 T_REMOTE_IMAGE         Message contains an external image
X-Headers-End: 1oFSLH-008LJu-LM
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [V9fs-developer] =?utf-8?b?QW1hem9uLmNvLmpw44Gn44Gu44GU5rOo5paH?=
 =?utf-8?b?44Gu56K66KqN?=
X-BeenThere: v9fs-developer@lists.sourceforge.net
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <v9fs-developer.lists.sourceforge.net>
List-Unsubscribe: <https://lists.sourceforge.net/lists/options/v9fs-developer>, 
 <mailto:v9fs-developer-request@lists.sourceforge.net?subject=unsubscribe>
List-Archive: <http://sourceforge.net/mailarchive/forum.php?forum_name=v9fs-developer>
List-Post: <mailto:v9fs-developer@lists.sourceforge.net>
List-Help: <mailto:v9fs-developer-request@lists.sourceforge.net?subject=help>
List-Subscribe: <https://lists.sourceforge.net/lists/listinfo/v9fs-developer>, 
 <mailto:v9fs-developer-request@lists.sourceforge.net?subject=subscribe>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

ICDms6jmloflsaXmrbQgIA0K44GU5rOo5paH44Gu56K66KqN5rOo5paH55Wq5Y+377yaIDYxMy0y
ODk0NjQyLTMzNjgyOTggDQoNCg0Kdjlmcy1kZXZlbG9wZXJAbGlzdHMuc291cmNlZm9yZ2UubmV0
IOanmA0K6Kqw44GL44GM44GC44Gq44Gf44GuQW1hem9u44Ki44Kr44Km44Oz44OI44KS5L2/55So
44GX44Gm44CB5Yil44Gu44OH44OQ44Kk44K544GL44KJ44GT44Gu5rOo5paH44KS6LO85YWl44GX
44G+44GX44Gf44CCICDjgb7jgaDms6jmlofjgZfjgabjgYTjgarjgYTloLTlkIjjga/jgIFb5rOo
5paH44Gu6Kmz57Sw44KS6KGo56S644GZ44KLXeOCkuOCr+ODquODg+OCr+OBl+OBpuOAgeOBk+OB
ruazqOaWh+OCkuOBmeOBkOOBq+OCreODo+ODs+OCu+ODq+OBl+OBpuOBj+OBoOOBleOBhOOAguOC
u+OCreODpeODquODhuOCo+S4iuOBrueQhueUseOBi+OCieOAgei6q+WFg+OCkueiuuiqjeOBmeOC
i+OBn+OCgeOBq+OBhOOBj+OBpOOBi+OBruaDheWgseOCkuWFpeWKm+OBmeOCi+W/heimgeOBjOOB
guOCi+WgtOWQiOOBjOOBguOCiuOBvuOBmeOAgg0KDQoNCg0KDQrjgYrlsYrjgZHkuojlrprvvJog
DQrmsLTmm5zml6UuMDcuMjANCg0K6YWN6YCB44Kq44OX44K344On44Oz77yaDQogICAgICAgICAg
ICAgICAgICAg44GK5oCl44GO5L6/DQrms6jmlofjga7oqbPntLDjgpLooajnpLrjgZnjgosgDQoN
CuOBiuWxiuOBkeWFiO+8mg0K5pS/5byYIOagueacrOanmA0KMjY1LTAwNjQNCuadseS6rOmDvSAN
CuWMl+WMuua1rumWkzbkuIHnm67vvJctIO+8ke+8lyANCuazqOaWh+WQiOioiO+8miDvv6UgNDks
NjAwDQrmlK/miZXjgYTmlrnms5UNCuOCr+ODrOOCuOODg+ODiOOCq+ODvOODie+8iFZpc2HvvInv
vJrvv6UgNDksNjAwIA0KDQoNCg0KQW1hem9uLmNvLmpwIOOBp+OBruOBlOazqOaWh+OBq+OBpOOB
hOOBpuOAgeOBj+OCj+OBl+OBj+OBr+azqOaWh+OBq+OBpOOBhOOBpuOBruODmOODq+ODl+ODmuOD
vOOCuOOCkuOBlOeiuuiqjeOBj+OBoOOBleOBhOOAgiDkuIDpg6jjga7llYblk4HjgpLpmaTjgY3j
gIHntI3lk4Hmm7jjgpLlkIzmorHjgZvjgZrjgavjgYrlsYrjgZHjgZfjgabjgYTjgb7jgZnjgILp
oJjlj47mm7jjgYzlv4XopoHjgarloLTlkIjjga/jgIHllYblk4HnmbrpgIHlvozjgavms6jmlofl
saXmrbTjgYvjgonljbDliLfjgafjgY3jgb7jgZnjgILjgY/jgo/jgZfjgY/jga/jgIHpoJjlj47m
m7jjga7jg5jjg6vjg5fjg5rjg7zjgrjjgpLjgZTnorroqo3jgY/jgaDjgZXjgYTjgIIg6Kmz44GX
44GP44Gv44CBQW1hem9uIERhc2jliKnnlKjopo/ntITjgIFBbWF6b24uY28uanDjga7ov5Tlk4Hj
g53jg6rjgrfjg7zjgpLjgZTopqfjgY/jgaDjgZXjgYTjgIIg44Gd44Gu5LuW44GU5LiN5piO44Gq
54K544GM44GC44KL5aC05ZCI44Gv44CB44OY44Or44OX44Oa44O844K444KS44GU56K66KqN44GP
44Gg44GV44GE44CC5LiK6KiY44CM5rOo5paH5YaF5a6544CN44KS5Y2B5YiG44Gr44GU56K66KqN
44GP44Gg44GV44GE44CC44GU5rOo5paH5b6M44CB5LiA5a6a5pmC6ZaT44Gv44GU5rOo5paH44KS
5aSJ5pu044G+44Gf44Gv44Kt44Oj44Oz44K744Or44GZ44KL44GT44Go44GM44Gn44GN44G+44GZ
44CC44G+44Gf44CB55m66YCB5b6M44Gn44KC5ZWG5ZOB44KS6L+U5ZOB44GZ44KL44GT44Go44GM
44Gn44GN44G+44GZ44CCRGFzaCBCdXR0b24vRGFzaCBSZXBsZW5pc2htZW5044K144O844OT44K5
44Gr44KI44KL44GU5rOo5paH44Gr44Gk44GE44Gm44Gv44CBRGFzaCBCdXR0b24v44K144O844OT
44K55a++5b+c44OH44OQ44Kk44K544Gn44Gu5a++6LGh5ZWG5ZOB44Gu6Kit5a6a5pmC44Go44GU
5rOo5paH5pmC44Gu5o+Q5L6b5p2h5Lu277yI44Gf44Go44GI44Gw44CB5ZWG5ZOB44CB5L6h5qC8
44CB56iO6YeR44CB5YWl5omL5Y+v6IO95oCn44CB6YCB5paZ5Y+K44Gz5aOy5Li777yJ44GM5LiA
6YOo5aSJ5pu044GV44KM44Gm44GE44KL5aC05ZCI44GM44GC44KK44G+44GZ44CCDQoNCg0KDQrj
gb7jgZ/jga7jgYrotorjgZfjgpLjgYrlvoXjgaHjgZfjgabjgYrjgorjgb7jgZnjgIINCg0KDQpB
bWF6b24uY28uanANCg0KDQoNCg0K5pys44Oh44O844Or44Gv44CBQW1hem9uLmNvLmpwIOOBp+OB
ruOBlOazqOaWh+OBq+OBpOOBhOOBpuOAgUFtYXpvbuODnuODvOOCseODg+ODiOODl+ODrOOCpOOC
ueWHuuWTgeiAheOBjOOBlOazqOaWh+OCkuWPl+mgmOOBl+OBn+OBk+OBqOOCkueiuuiqjeOBmeOC
i+OCguOBruOBq+OBmeOBjuOBvuOBm+OCk+OAgkFtYXpvbi5jby5qcCDjgYzosqnlo7LjgZnjgovl
lYblk4HjgavjgaTjgYTjgabjga/jgIHllYblk4HjgYznmbrpgIHjgZXjgozjgZ/jgZPjgajjgpLj
gYrnn6XjgonjgZvjgZnjgovjg6Hjg7zjg6vjgpLlvZPjgrXjgqTjg4jjgYvjgonjgYrpgIHjgorj
gZfjgZ/mmYLngrnjgafjgIHlvZPoqbLllYblk4Hjga7jgZTos7zlhaXjgavjgaTjgYTjgabjga7l
pZHntITjgYzmiJDnq4vjgZfjgb7jgZnjgIJBbWF6b27jg57jg7zjgrHjg4Pjg4jjg5fjg6zjgqTj
grnlh7rlk4HogIXjgYzlh7rlk4HjgZnjgovllYblk4HjgavjgaTjgYTjgabjga/jgIHllYblk4Hj
gYznmbrpgIHjgZXjgozjgZ/jgZPjgajjgpLjgYrnn6XjgonjgZvjgZnjgovjg6Hjg7zjg6vjgpLl
vZPjgrXjgqTjg4jjgYvjgonjgYrpgIHjgorjgZnjgovmmYLngrnjgafjgIHlvZPoqbLllYblk4Hj
ga7jgZTos7zlhaXjgavjgaTjgYTjgabjga7lpZHntITjgYzmiJDnq4vjgZfjgb7jgZnjgIIg5Zyo
5bqr54q25rOB44Go44GK5bGK44GR5LqI5a6a5pel44Gv44CB56K657SE44GV44KM44Gf44KC44Gu
44Gn44Gv44GC44KK44G+44Gb44KT44CC44GK5bGK44GR5LqI5a6a5pel44Gv44CB5Zyo5bqr54q2
5rOB44Gu5aSJ5YuV44Gq44Gp44Gr44KI44KK5aSJ5pu044GV44KM44KL5aC05ZCI44GM44GC44KK
44G+44GZ44CCIOOBk+OBrkXjg6Hjg7zjg6vjgqLjg4njg6zjgrnjga/phY3kv6HlsILnlKjjgafj
gZnjgILjgZPjga7jg6Hjg4Pjgrvjg7zjgrjjgavov5Tkv6HjgZfjgarjgYTjgojjgYbjgYrpoZjj
gYTjgYTjgZ/jgZfjgb7jgZnjgIIg44OG44Kt44K544OI5b2i5byP44Gn44GuReODoeODvOODq+mF
jeS/oeOCkuOBlOW4jOacm+OBruWgtOWQiOOBr+OAgeOBk+OBoeOCieOBi+OCieioreWumuOCkuWk
ieabtOOBl+OBpuOBj+OBoOOBleOBhOOAgiANCg0KDQoNCiANCg0KDQoNCg0KIApfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpWOWZzLWRldmVsb3BlciBtYWls
aW5nIGxpc3QKVjlmcy1kZXZlbG9wZXJAbGlzdHMuc291cmNlZm9yZ2UubmV0Cmh0dHBzOi8vbGlz
dHMuc291cmNlZm9yZ2UubmV0L2xpc3RzL2xpc3RpbmZvL3Y5ZnMtZGV2ZWxvcGVyCg==
