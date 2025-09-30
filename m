Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id F41ABBAEB46
	for <lists+v9fs-developer@lfdr.de>; Wed, 01 Oct 2025 00:30:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:Message-Id:Date:MIME-Version:To:From:Sender:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=TF6peVSAFD5TZsvQARUiigSQg162fHOz4wLudumjceM=; b=EkVexvbaNH1UU/42+MGFfNBbVk
	pRcGymXR5/gfBAvOzcDs94KRDWHejYALBE/2NlOniDCJIG5QILyibBWMIVCzXh8hyXb22tcCyk8Vq
	L/+hZMtypbfuAa4Ey05qiydkGN552Gi9j2pbSjhu5domnesh1mmGrqy9JkqX9K9nMC7g=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1v3irr-0006xx-TK;
	Tue, 30 Sep 2025 22:30:43 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <jiuyueershijiu@nsvhl.liberatestudies.com>)
 id 1v3irp-0006xn-MN for v9fs-developer@lists.sourceforge.net;
 Tue, 30 Sep 2025 22:30:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-Id:Date:MIME-Version:Content-Type:To:
 Subject:From:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=kxwhkcZHd4/XkA9lKsaVQjFv16LKtlHDy04LuxXWI1Y=; b=KpdjrmFdx+Mwy2FtOoWnH6cigF
 tG6LJJz4uBzGOfpU3nopd6YWbD3lD2OXpFd+rJC7oDF6NhzDUyxkYuONdKlyIWDwUlxg5X7LUF8g8
 m9xXqMcnrm0UvJEUjjSLay4a3pGDdU+0XyG9+NVVo9GA4dGlQFjJTC5SIC4fC0N7AxZ4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-Id:Date:MIME-Version:Content-Type:To:Subject:From:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=kxwhkcZHd4/XkA9lKsaVQjFv16LKtlHDy04LuxXWI1Y=; b=G
 MHT4i+L27zqgUoje0AkNpudFJyuVWjcrsvIZEol22YQHNCc1fOtWXzaPDOxLrL4HKCHIlppBMkoQ7
 aY7c7ldylv2Yy6kreQPt0ar6nrC7siAPdHVSK4AkmC5npLnoMX/OhGXIq5AjVF8N48luHRuPgUEyl
 PmaxOuSzD/v7Bcpo=;
Received: from nsvhl.liberatestudies.com ([34.153.223.136])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1v3irn-0004xE-RT for v9fs-developer@lists.sourceforge.net;
 Tue, 30 Sep 2025 22:30:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; s=mail;
 d=nsvhl.liberatestudies.com; 
 h=From:Subject:To:Content-Type:MIME-Version:Date:Message-Id;
 i=jiuyueershijiu@nsvhl.liberatestudies.com;
 bh=kxwhkcZHd4/XkA9lKsaVQjFv16LKtlHDy04LuxXWI1Y=;
 b=A3/v38HmdqH1ddDu22Wad+5GzELhk41bY6IONJJnuFlP/AR5teA5rd/0VqOWDX3WA1SLP0aVk/V+
 3QBHNIhA5fRg/ks2F0k+cir/v7p3uXGB0tmdZuvbbDO5T4I6X0gjG3Rva0UhqMoMsKIeyFfIDoxU
 Qv0V+vOAvTwV3Jnln7w=
From: =?UTF-8?B?44CQ44Kt44Oj44Oz44Oa44O844Oz5b2T6YG444CR44Om44OL44OQ44O844K1?=
 =?UTF-8?B?44Or44O744K544K/44K444Kq44O744K444Oj44OR44OzIOOCueOCv+OCuOOC?=
 =?UTF-8?B?quODu+ODkeOCueeZuumAgeOBruOBlOahiOWGhQ==?=
 <jiuyueershijiu@nsvhl.liberatestudies.com>
To: v9fs-developer@lists.sourceforge.net
MIME-Version: 1.0
Date: Wed, 1 Oct 2025 07:30:33 +0900
Message-Id: <20251001073033012.181112@nsvhl.liberatestudies.com>
X-Spam-Score: 1.3 (+)
X-Spam-Report: Spam detection software, running on the system "sfi-spamd-2.hosts.colo.sdot.me",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  ＼ VJA・三井住友カード ／ ユニバーサル・スタジオ・ジャパン
    キャンペーン当選のご案内 平素よりVJAグループ・三井住友カードのサービスをご愛顧いただき、誠にありがとうございます。
    このたびは「VJA・三井住友カードご利用感謝キャ� [...]
    
 
 Content analysis details:   (1.3 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
  1.0 HK_RANDOM_FROM         From username looks random
  0.0 HK_RANDOM_ENVFROM      Envelope sender username looks random
  0.5 SUBJ_ALL_CAPS          Subject is all capitals
  0.0 HTML_MESSAGE           BODY: HTML included in message
X-Headers-End: 1v3irn-0004xE-RT
Content-Disposition: inline
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [V9fs-developer] =?utf-8?b?5LiJ5LqV5L2P5Y+L44Kr44O844OJw5dVU0o=?=
 =?utf-8?b?44Kt44Oj44Oz44Oa44O844OzIOW9k+mBuOOBruOBlOahiOWGhQ==?=
X-BeenThere: v9fs-developer@lists.sourceforge.net
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: "deprecated: use v9fs@lists.linux.dev"
 <v9fs-developer.lists.sourceforge.net>
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

DQogDQoNCg0KDQogDQoNCu+8vCBWSkHjg7vkuInkupXkvY/lj4vjgqvjg7zjg4kg77yPDQrjg6bj
g4vjg5Djg7zjgrXjg6vjg7vjgrnjgr/jgrjjgqrjg7vjgrjjg6Pjg5Hjg7MNCuOCreODo+ODs+OD
muODvOODs+W9k+mBuOOBruOBlOahiOWGhSANCg0KIA0KDQrlubPntKDjgojjgopWSkHjgrDjg6vj
g7zjg5fjg7vkuInkupXkvY/lj4vjgqvjg7zjg4njga7jgrXjg7zjg5PjgrnjgpLjgZTmhJvpoafj
gYTjgZ/jgaDjgY3jgIHoqqDjgavjgYLjgorjgYzjgajjgYbjgZTjgZbjgYTjgb7jgZnjgIINCuOB
k+OBruOBn+OBs+OBr+OAjFZKQeODu+S4ieS6leS9j+WPi+OCq+ODvOODieOBlOWIqeeUqOaEn+is
neOCreODo+ODs+ODmuODvOODszIwMjXjgI3jgavjgZTlv5zli5/jgYTjgZ/jgaDjgY3jgIENCiDl
jrPmraPjgarjgovmir3pgbjjga7ntZDmnpzjgIHjgYrlrqLmp5jjgYzlvZPpgbjjgZXjgozjgb7j
gZfjgZ/jgZPjgajjgpLorLnjgpPjgafjgZTloLHlkYrnlLPjgZfkuIrjgZLjgb7jgZnjgIIgDQoN
CiANCg0KIA0K44Kt44Oj44Oz44Oa44O844Oz5qaC6KaB77yI44GU5Yip55So5oSf6Kyd44Kt44Oj
44Oz44Oa44O844OzMjAyNe+8iSANCiANCuacn+mWk+S4reOAgVZwYXNz44Gr44Ot44Kw44Kk44Oz
5riI44G/44GuVkpB44O75LiJ5LqV5L2P5Y+L44Kr44O844OJ44Gn5ZCI6KiIMeS4h+WGhu+8iOeo
jui+vO+8ieS7peS4ig0K44GU5Yip55So44Gu44Gf44Gz44Gr6Ieq5YuV55qE44Gr44Ko44Oz44OI
44Oq44O844GV44KM44CB5oq96YG444Gn44Om44OL44OQ44O844K144Or44O744K544K/44K444Kq
44O744K444Oj44OR44Oz44GuDQog44K544K/44K444Kq44O744OR44K544KE44Kq44Oq44K444OK
44Or44Kw44OD44K644Gq44Gp6LGq6I+v6LOe5ZOB44GM5b2T44Gf44KL44Kt44Oj44Oz44Oa44O8
44Oz44KS5a6f5pa944GE44Gf44GX44G+44GX44Gf44CCIA0KIA0KDQoNCiANCuW9k+mBuOWGheWu
uSANCiANCg0K5b2T6YG45pel77yaMjAyNeW5tDA55pyIMzDml6Ug56ysNOWbnuaKvemBuA0K6LOe
5ZOB77ya77yc77yi6LOe77yeIOWkp+S6uuOAjDHjg4fjgqTjg7vjgrnjgr/jgrjjgqrjg7vjg5Hj
grnjgI005p6aDQrvvIjlhaXloLTlj6/og73mnJ/plpPvvJoyMDI15bm0OeaciDHml6XvvIjph5Hv
vIktIDIwMjXlubQxMOaciDMx5pel77yI5pyo77yJ77yJDQrjg4HjgrHjg4Pjg4jlvaLlvI/vvJrv
vLHvvLLjgrPjg7zjg4kNCuiqjeiovOeVquWPt++8mjg4NjAzDQoNCiANCg0KDQogDQrjgYrlj5fl
j5bjgormlrnms5UgDQogDQrmnKzos57lk4Hjga7nmbrliLjmpa3li5njga9l77yL77yI44Kk44O8
44OX44Op44K577yJ44GM5Luj6KGM44GE44Gf44GX44G+44GZ44CCDQog5Lul5LiL44Gu5bCC55So
77y177yy77ys44KI44KK5b+F6KaB5LqL6aCF44KS44GU5YWl5Yqb44Gu44GG44GI44CB44GK5omL
57aa44GN44KS44GK6aGY44GE44GE44Gf44GX44G+44GZ44CCDQrjg4HjgrHjg4Pjg4jjga/jgIxR
UuOCs+ODvOODieOAjeW9ouW8j+OBp+eZuuihjOOBleOCjOOBvuOBmeOAguWFpeWgtOaXpeW9k+aX
peOBq+OCueODnuODvOODiOODleOCqeODs+eUu+mdouOBqw0K6KGo56S644GX44GfUVLjgrPjg7zj
g4njgpLjg5Hjg7zjgq/jga7jgrnjgr/jg4Pjg5XjgavjgZTmj5DnpLrjgY/jgaDjgZXjgYTjgIIg
DQogDQoNCg0K44OB44Kx44OD44OI44KS5Y+X44GR5Y+W44KLDQoNCg0KIA0K4oC75Yid44KB44Gm
Ze+8i+OCkuOBlOWIqeeUqOOBrumam+OBr+aWsOimj+S8muWToeeZu+mMsu+8iOeEoeaWme+8ieOB
jOW/heimgeOBqOOBquOCiuOBvuOBmeOAgg0K4oC755m65Yi444K344K544OG44Og5L2/55So5paZ
NzA15YaG77yI56iO6L6877yJ44GM5Yil6YCU55m655Sf44GE44Gf44GX44G+44GZ44CCDQrjgYrm
lK/miZXjgYTjga/lv4XjgZpWcGFzc+ODreOCsOOCpOODs+a4iOOBv+OBruOCq+ODvOODieOBp+OB
iumhmOOBhOOBhOOBn+OBl+OBvuOBmeOAgg0K4oC744OB44Kx44OD44OI44Gv44CMUVLjgrPjg7zj
g4njgI3lvaLlvI/jga7jgb/jga7nmbrooYzjgajjgarjgorjgIHntJnjg4HjgrHjg4Pjg4jjgbjj
ga7lpInmm7Tjga/jgafjgY3jgb7jgZvjgpPjgIIgDQogDQoNCuOAkOWPl+WPluacn+mZkOOAkTIw
MjUvMDkvMzAgMjM6NTnjgb7jgacNCuKAu+acn+mZkOOCkumBjuOBjuOBvuOBmeOBqOW9k+mBuOOB
r+eEoeWKueOBqOOBquOCiuOAgeaoqeWIqeOBr+asoeWbnuaKvemBuOOBuOe5sOOCiui2iuOBleOC
jOOBvuOBmeOAgiANCg0KIA0KDQoNCiANCuazqOaEj+S6i+mghSANCiANCuKAu+W9k+mBuOeiuuWu
muW+jOOBruiznuWTgeWkieabtOODu+WPlua2iOOBl+OBr+S4gOWIh+OBp+OBjeOBvuOBm+OCk+OA
gg0K4oC744OB44Kx44OD44OI44Gu5YaN55m66KGM44O75omV5oi744GX44Gv44GE44Gf44GX44GL
44Gt44G+44GZ44Gu44Gn44GU5rOo5oSP44GP44Gg44GV44GE44CCDQrigLvjg6Hjg7zjg6vmlofk
uK3jga7vvLXvvLLvvKzjgYzplovjgZHjgarjgYTloLTlkIjjga/jgIHjg5bjg6njgqbjgrbjga7j
gqLjg4njg6zjgrnmrITjgavjgrPjg5Tjg7zvvIbjg5rjg7zjgrnjg4jjgZfjgabjgY/jgaDjgZXj
gYTjgIINCuKAu+OCt+OCueODhuODoOODoeODs+ODhuODiuODs+OCueOAkOavjuesrDHjg7vnrKwz
5pyo5puc5pelIDI6MDAtODowMOOAkeOBrumWk+OBr+OAgeOCteOCpOODiOOBrumWsuimp+OBiuOC
iOOBs+axuua4iOODu+eZuuWIuOOBjOOBp+OBjeOBvuOBm+OCk+OAgg0K4oC75YWl5aC05pel5b2T
5pel44Gu44OR44O844Kv6YGL5Za254q25rOB44Gr44KI44KK44CB5YWl5aC05Yi26ZmQ44KE44Ki
44OI44Op44Kv44K344On44Oz5LyR5q2i44GM55m655Sf44GZ44KL5aC05ZCI44GM44GU44GW44GE
44G+44GZ44CCDQrigLvnrKzkuInogIXjgbjjga7orbLmuKHjg7vou6Llo7LjgYrjgojjgbPmj5vp
h5Hjga/lm7rjgY/jgYrmlq3jgorjgYTjgZ/jgZfjgb7jgZnjgIIgDQogDQoNCg0KIA0K4oC75pys
44Oh44O844Or44Gv6YWN5L+h5bCC55So44Gn44GZ44CC44GU6L+U5L+h44GE44Gf44Gg44GE44Gm
44KC5YCL5Yil44Gu5Zue562U44Gv44GE44Gf44GX44GL44Gt44G+44GZ44Gu44Gn44GU5LqG5om/
44GP44Gg44GV44GE44CCDQrigLvjgZTkuI3mmI7jgarngrnjgYzjgZTjgZbjgYTjgb7jgZfjgZ/j
gonjgIFWSkHjgrDjg6vjg7zjg5fjgqvjgrnjgr/jg57jg7zjgrvjg7Pjgr/jg7wNCu+8iDA1NzAt
MDY0LTkzMyDllrbmpa3mmYLplpM5OjAwLTE3OjAwIOW5tOS4reeEoeS8ke+8ieOBvuOBp+OBiuWV
j+OBhOWQiOOCj+OBm+OBj+OBoOOBleOBhOOAgiANCiANCg0KDQogDQogDQoNCg0KIA0K55m66KGM
6ICFDQogDQpWSkHmoKrlvI/kvJrnpL4g77yPIOOCpOODvOODl+ODqeOCueagquW8j+S8muekviAN
CiANCg0K6YWN5L+h5YGc5q2iIHwg44Ki44OJ44Os44K55aSJ5pu0IHwg44OX44Op44Kk44OQ44K3
44O844Od44Oq44K344O8IA0KDQogDQogDQogDQrniYjmnYPmiYDmnIkgKGMpIDIwMjUgVkpBIEdy
b3VwICYg5LiJ5LqV5L2P5Y+L44Kr44O844OJ5qCq5byP5Lya56S+DQpWSkHjgIFWcGFzc+OAgeS4
ieS6leS9j+WPi+OCq+ODvOODieOBr+WQhOekvuOBrueZu+mMsuWVhuaomeOBp+OBmeOAgg0KIOOA
jGlE44CN44Gv5qCq5byP5Lya56S+TlRU44OJ44Kz44Oi44Gu5ZWG5qiZ44Gn44GZ44CCDQog44CM
44Om44OL44OQ44O844K144Or44O744K544K/44K444Kq44O744K444Oj44OR44Oz44CN44CMVVNK
44CN44GK44KI44Gz6Zai6YCj44GZ44KL44GZ44G544Gm44Gu5ZWG5qiZ44O76JGX5L2c54mp44Gv
44Om44OL44OQ44O844K144Or44O744K544K/44K444Kq44O744K444Oj44OR44Oz5ZCI5ZCM56S+
44Gq44KJ44Gz44Gr6Zai6YCj5Lya56S+44Gu55m76Yyy5ZWG5qiZ44G+44Gf44Gv6JGX5L2c54mp
44Gn44GZ44CCDQog5bCP6buE5Lq65ZKM5omA5pyJ55u45YWz5YWD57Sg5ZKM5qCH6K6wIFRNICYg
KGMpIDIwMjUg546v55CD5b2x5Z+O44CCVE0gJiAoYykgMjAyNSDoip3purvooZflt6XkvZzlrqTj
gIIoYykgV2FsdGVyIExhbnR6IFByb2R1Y3Rpb25zIExMQ+OAglRNICYgKGMpIOeOr+eQg+W9seWf
juWSjOWuieWfueael+WoseS5kOOAgg0KIOS/neeVmeaJgOacieadg+WIqeOAgkNSMjUtMTE1MCAN
CiANCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpWOWZz
LWRldmVsb3BlciBtYWlsaW5nIGxpc3QKVjlmcy1kZXZlbG9wZXJAbGlzdHMuc291cmNlZm9yZ2Uu
bmV0Cmh0dHBzOi8vbGlzdHMuc291cmNlZm9yZ2UubmV0L2xpc3RzL2xpc3RpbmZvL3Y5ZnMtZGV2
ZWxvcGVyCg==
