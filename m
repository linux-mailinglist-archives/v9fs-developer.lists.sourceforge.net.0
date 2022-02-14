Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 60B6F4B3EE4
	for <lists+v9fs-developer@lfdr.de>; Mon, 14 Feb 2022 02:38:51 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1nJQKH-0003qL-7S; Mon, 14 Feb 2022 01:38:48 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <support-amazon.jp@xagukmo.cn>) id 1nJQKF-0003qE-SZ
 for v9fs-developer@lists.sourceforge.net; Mon, 14 Feb 2022 01:38:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Mime-Version:Message-ID:Subject:To:
 From:Date:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=C1ADGMOfLLigFpzL1Tsm7vp0caUqj7Mm+Ha+gebM7sk=; b=VqXYlQAgIaaB5yEFtTVye08DGJ
 2RVYLx/pfVkqdE28INFTt2HDdrirt/lKsKg0tMP+8yOUsfRDo0K5BD38YEwkZqmauI5ifUUN87MEf
 Qj2rV8NfwAA/8Ram69lNsPZ+DOC4WEFbr7hLs1HDx6mHpFSut5ccM26eWCb93SdR6QEo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Mime-Version:Message-ID:Subject:To:From:Date:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=C1ADGMOfLLigFpzL1Tsm7vp0caUqj7Mm+Ha+gebM7sk=; b=m
 51dYzeLZwDVUpek6Ooj0W7UbtAfkNzb2kxBJSDDywihEXoo1060V1rg7aOw8e2IsJU8QQMt6XJ98t
 jmrFpSFh5nZAjE6Suzwxi0brJWDfzwfT9aJeIx9eZOxlTSytO+aexXsap34YGU1/2Nc8ov65P/i2N
 vS4gFiimf5G4sHPc=;
Received: from [139.198.39.229] (helo=mail.xagukmo.cn)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nJQK7-000vHS-SA
 for v9fs-developer@lists.sourceforge.net; Mon, 14 Feb 2022 01:38:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; s=default; d=xagukmo.cn; 
 h=Date:From:To:Subject:Message-ID:Mime-Version:Content-Type;
 i=support-amazon.jp@xagukmo.cn;
 bh=C1ADGMOfLLigFpzL1Tsm7vp0caUqj7Mm+Ha+gebM7sk=;
 b=Zm1WW8gkkosNKBWZdTMpz0yQvrmS1A0dkOcPbPe8a3BfwSBZqbxXX2tuSe+TZIZefbcat4JkOYQU
 DMi+LhCij5hyQNVEyVLpwd37jBGsbvEcU96sXob5qBnU/irfY6uezOWEPBTJuDmtpRUxb3T5oGCe
 IpEpPNm98cbcrULQdKc=
Date: Mon, 14 Feb 2022 09:09:14 +0900
From: "Amazon" <support-amazon.jp@xagukmo.cn>
To: <v9fs-developer@lists.sourceforge.net>
Message-ID: <20220214090928106048@xagukmo.cn>
Mime-Version: 1.0
X-Spam-Score: 1.1 (+)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  お客様のお支払い方法が承認されません。
   お支払方法に問題があり、プライム特典をご利用いただけない状況です。
    支払方法を更新する 
 
 Content analysis details:   (1.1 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 HTML_FONT_FACE_BAD     BODY: HTML font face is not a word
  0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  1.3 RDNS_NONE              Delivered to internal network by a host with no rDNS
  0.0 T_REMOTE_IMAGE         Message contains an external image
X-Headers-End: 1nJQK7-000vHS-SA
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [V9fs-developer] =?utf-8?b?44CQQW1hem9u44CR44Ki44Kr44Km44Oz44OI?=
	=?utf-8?b?44Gu5Yip55So54q25rOB44KS44GU56K66KqN44GP44Gg44GV44GE44CC?=
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

DQrjgYrlrqLmp5jjga7jgYrmlK/miZXjgYTmlrnms5XjgYzmib/oqo3jgZXjgozjgb7jgZvjgpPj
gIINCg0KDQoNCg0KDQogDQoNCuOBiuaUr+aJleaWueazleOBq+WVj+mhjOOBjOOBguOCiuOAgeOD
l+ODqeOCpOODoOeJueWFuOOCkuOBlOWIqeeUqOOBhOOBn+OBoOOBkeOBquOBhOeKtuazgeOBp+OB
meOAgg0KDQoNCg0KICDmlK/miZXmlrnms5XjgpLmm7TmlrDjgZnjgosgICANCg0KDQoNCnY5ZnMt
ZGV2ZWxvcGVyQGxpc3RzLnNvdXJjZWZvcmdlLm5ldA0K5bmz57Sg44Gv44CBQW1hem9u44KS44GU
5Yip55So44GE44Gf44Gg44GN44CB6Kqg44Gr44GC44KK44GM44Go44GG44GU44GW44GE44G+44GZ
44CCDQoNCuOBlOaMh+WumuOBhOOBn+OBoOOBhOOBn+OBiuWuouanmOOBruOBiuaUr+aJleOBhOaW
ueazleOBjOaJv+iqjeOBleOCjOOBquOBhOOBn+OCgeOAgkFtYXpvbuOBr+eEoeaWmeOBp+OBmeOB
jOOAgeOBlOeZu+mMsuOBrumam+OBq+OBr+mBqeeUqOWPr+iDveOBquOBiuaUr+aJleOBhOaWueaz
leOCkueiuuiqjeOBleOBm+OBpuOBhOOBn+OBoOOBjeOBvuOBmeOAguOBk+OCjOOBr+OAgeOBlOeZ
u+mMsuaZguOBq+OBlOWQjOaEj+OBhOOBn+OBoOOBhOOBn+OCiOOBhuOBq+OAgg0KMeaXpeS7peWG
heOBq+OAgeOCouODnuOCvuODs+OBi+OCieOBruiri+axguOBuOOBruOBiuaUr+aJleOBhOOBjOei
uuiqjeOBp+OBjeOBquOBhOmZkOOCiuOAgeOBiuWuouanmOOBrkFtYXpvbueZu+mMsuOBr+OCreOD
o+ODs+OCu+ODq+OBleOCjOOAgg0K5LuW44Gu5pyJ5Yq544Gq5pSv5omV5pa55rOV44KS5pu05paw
44O76L+95Yqg44GX44CBQW1hem9u44KS44GU5Yip55So44GV44KM44Gf44GE5aC05ZCI44Gv44CB
5Lul5LiL44Gu5omL6aCG44Gr5b6T44Gj44Gm5pu05paw44GX44Gm44GP44Gg44GV44GE44CCICAN
CuOBiuWuouanmOOBruOBiuaUr+aJleOBhOaWueazleOBq+OCouOCr+OCu+OCuQ0KQW1hem9u55m7
6Yyy44GX44GfQW1hem9uLmNvLmpw44Gu44Ki44Kr44Km44Oz44OI44KS5L2/55So44GX44Gm44K1
44Kk44Oz44Kk44OzICANCueZu+mMsua4iOOBv+OBruOBiuaUr+aJleaJi+auteOBruacieWKueac
n+mZkOOCkuabtOaWsOOAgeOBvuOBn+OBr+aWsOOBl+OBj+aUr+aJleOBhOaJi+auteOCkui/veWK
oOOBl+OAgeOAjOe2muihjOOAjeODnOOCv+ODs+OCkuOCr+ODquODg+OCrw0K54++5Zyo44GU5oyH
5a6a44Gu44GK5pSv5omV44GE5pa55rOV44GM5om/6KqN44GV44KM44Gq44GE5Y6f5Zug44Gv44CB
5o+Q5pC65Lya56S+KOOCr+ODrOOCuOODg+ODiOOCq+ODvOODieS8muekvuetiSnjga7kuovmg4Xj
gavjgojjgornlbDjgarjgorjgb7jgZnjgYzjgIHliKnnlKjlj6/og73pmZDluqbpoY3jga7otoXp
gY7jgIHmnInlirnmnJ/pmZDliIfjgozjgIHjgqvjg7zjg4nliKnnlKjkuI3lj6/jgarjganjgYzo
gIPjgYjjgonjgozjgb7jgZnjgILlpKflpInjgYrmiYvmlbDjgafjgZnjgYzoqbPntLDjgavjgaTj
gYTjgabjga/jgrXjg7zjg5Pjgrnjga7mj5DkvpvlhYPkvJrnpL7jgavnm7TmjqXjgYrllY/jgYTl
kIjjgo/jgZvjgY/jgaDjgZXjgYTjgIINCkFtYXpvbi5jby5qcOOCkuOBlOWIqeeUqOOBhOOBn+OB
oOOBjeOAgeOBguOCiuOBjOOBqOOBhuOBlOOBluOBhOOBvuOBmeOAgiANCuS7iuW+jOOBqOOCgkFt
YXpvbi5jby5qcOOCkuOCiOOCjeOBl+OBj+OBiumhmOOBhOOBhOOBn+OBl+OBvuOBmeOAgg0KDQpB
bWF6b24uY28uanDjgqvjgrnjgr/jg57jg7zjgrXjg7zjg5PjgrnjgIINCg0KDQrjgr/jgqTjg6Dj
grvjg7zjg6sg44OX44Op44Kk44Og54m55YW4IOOCouOCq+OCpuODs+ODiCDjg5jjg6vjg5cgDQoN
Cg0KwqkgMjAyMCBBbWF6b24uY29tLCBJbmMuIG9yIGl0cyBhZmZpbGlhdGVzLiBBbGwgcmlnaHRz
IHJlc2VydmVkLiBBbWF6b24sIEFtYXpvbi5jby5qcCwgQW1hem9uIFByaW1lLCBQcmltZSDjgYrj
gojjgbNBbWF6b24uY28uanAg44Gu44Ot44K044GvIEFtYXpvbi5jb20sIEluYy7jgb7jgZ/jga/j
gZ3jga7plqLpgKPkvJrnpL7jga7llYbmqJnjgafjgZnjgIJBbWF6b24uY29tLCA0MTAgVGVycnkg
QXZlbnVlIE4uLCBTZWF0dGxlLCBXQSA5ODEwOS01MjEwIA0KDQrjgZPjga7jg6Hjg4Pjgrvjg7zj
grjjga92OWZzLWRldmVsb3BlckBsaXN0cy5zb3VyY2Vmb3JnZS5uZXTjgavpgIHkv6HjgZXjgozj
gb7jgZfjgZ/jgIIgCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fClY5ZnMtZGV2ZWxvcGVyIG1haWxpbmcgbGlzdApWOWZzLWRldmVsb3BlckBsaXN0cy5zb3Vy
Y2Vmb3JnZS5uZXQKaHR0cHM6Ly9saXN0cy5zb3VyY2Vmb3JnZS5uZXQvbGlzdHMvbGlzdGluZm8v
djlmcy1kZXZlbG9wZXIK
