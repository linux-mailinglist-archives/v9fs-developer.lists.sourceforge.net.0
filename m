Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A0FCC4B35E4
	for <lists+v9fs-developer@lfdr.de>; Sat, 12 Feb 2022 16:42:29 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1nIuXb-0003Ne-KG; Sat, 12 Feb 2022 15:42:26 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <amazon-service4@cadhpng.cn>) id 1nIuXa-0003NY-Nu
 for v9fs-developer@lists.sourceforge.net; Sat, 12 Feb 2022 15:42:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Date:Subject:To:From:
 Message-ID:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ArmSdpmiT8Lh18lIT8wTdmSPiIuraDgK7onPBvh4Ez4=; b=Iruf2GygVnIP7XV46XPjgKa3Ut
 rwZbs6gaZU8E9glkqHmgi25KDI/C1hCKkYoUGHJuDyFWsbaQQK+gedX75DqNDZBSd1CMk2zpWAbRv
 naoEMvp1IKaj8Vj74eIO54OGsGpGo7V48fbC1zP+X0MohsT6Kogb5czHUSMEI/dmJn2Q=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Date:Subject:To:From:Message-ID:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=ArmSdpmiT8Lh18lIT8wTdmSPiIuraDgK7onPBvh4Ez4=; b=U
 WzZW9ZQI1qCIuLB3PnH6+p3drE6brrHUfmHdl/SrS4VD+JLQZFdF5ifPMCY6J9mKuXqkUt/gqP/Qj
 Z4z7hDId59LT+8qA59d9C6dhVwgP1NnOK3qI3EmFIJIwavSkzPMoz8+Ro2+nbnlOu++bdBcN5pALU
 lwZve9cAHtq/KkpE=;
Received: from [202.61.128.152] (helo=cadhpng.cn)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nIuXY-00Gu71-EP
 for v9fs-developer@lists.sourceforge.net; Sat, 12 Feb 2022 15:42:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; s=default; d=cadhpng.cn; 
 h=Message-ID:From:To:Subject:Date:MIME-Version:Content-Type;
 i=amazon-service4@cadhpng.cn;
 bh=ArmSdpmiT8Lh18lIT8wTdmSPiIuraDgK7onPBvh4Ez4=;
 b=X8SbTjVYh26nd94rsSHLYolxTKWlrdg07d6ey9O0dEMv08KsXKPj1mc8riuWNEn6qoQBeGTdB1he
 fpQXk+Q1PC/wGt7D1tlghMUuEI1xGO7l/2GzQu3mvkrnjRxEjslw5fWuKd9AmI6joDMlG6KhVR68
 SkArOOpu0Ll/FzcmzsY=
Message-ID: <20220212234216712588@cadhpng.cn>
From: "Amazon.co.jp" <amazon-service4@cadhpng.cn>
To: <v9fs-developer@lists.sourceforge.net>
Date: Sat, 12 Feb 2022 23:42:05 +0800
MIME-Version: 1.0
X-Helo-Check: bad, Forged Random Domain (cadhpng.cn)
X-Spam-Score: 7.2 (+++++++)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has identified this incoming email as possible spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  お支払方法に問題があり、プライム特典をご利用いただけない状況です。
    Amazon お客様 Amazonプライムをご利用いただきありがとうございます。
    ご指定いただいたお客様のお支払い方法が承認されないため、Amazonプライム無料体験をご利用いただけません。Amazonプライム無料体験は無料ですが�
    [...] 
 
 Content analysis details:   (7.2 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  2.5 URIBL_DBL_SPAM         Contains a spam URL listed in the Spamhaus DBL
                             blocklist
                             [URIs: cadhpng.cn]
  3.6 RCVD_IN_SBL_CSS        RBL: Received via a relay in Spamhaus SBL-CSS
                             [202.61.128.152 listed in zen.spamhaus.org]
  0.1 URIBL_CSS_A            Contains URL's A record listed in the Spamhaus CSS
                             blocklist
                             [URIs: cadhpng.cn]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  1.3 RDNS_NONE              Delivered to internal network by a host with no rDNS
X-Headers-End: 1nIuXY-00Gu71-EP
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [V9fs-developer] =?utf-8?b?44GC44Gq44Gf44Gu44Ki44Kr44Km44Oz44OI?=
 =?utf-8?b?44Gv5YGc5q2i44GV44KM44G+44GX44Gf?=
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

ICDjgYrmlK/miZXmlrnms5XjgavllY/poYzjgYzjgYLjgorjgIHjg5fjg6njgqTjg6Dnibnlhbjj
gpLjgZTliKnnlKjjgYTjgZ/jgaDjgZHjgarjgYTnirbms4HjgafjgZnjgIINCkFtYXpvbiDjgYrl
rqLmp5gNCg0KQW1hem9u44OX44Op44Kk44Og44KS44GU5Yip55So44GE44Gf44Gg44GN44GC44KK
44GM44Go44GG44GU44GW44GE44G+44GZ44CCIA0KDQrjgZTmjIflrprjgYTjgZ/jgaDjgYTjgZ/j
gYrlrqLmp5jjga7jgYrmlK/miZXjgYTmlrnms5XjgYzmib/oqo3jgZXjgozjgarjgYTjgZ/jgoHj
gIFBbWF6b27jg5fjg6njgqTjg6DnhKHmlpnkvZPpqJPjgpLjgZTliKnnlKjjgYTjgZ/jgaDjgZHj
gb7jgZvjgpPjgIJBbWF6b27jg5fjg6njgqTjg6DnhKHmlpnkvZPpqJPjga/nhKHmlpnjgafjgZnj
gYzjgIHjgZTnmbvpjLLjga7pmpvjgavjga/pgannlKjlj6/og73jgarjgYrmlK/miZXjgYTmlrnm
s5XjgpLnorroqo3jgZXjgZvjgabjgYTjgZ/jgaDjgY3jgb7jgZnjgILjgZPjgozjga/jgIHjgZTn
mbvpjLLmmYLjgavjgZTlkIzmhI/jgYTjgZ/jgaDjgYTjgZ/jgojjgYbjgavjgIHnhKHmlpnkvZPp
qJPmnJ/plpPjga7ntYLkuobmmYLjgavoh6rli5XnmoTjgavmnInmlpnkvJrlk6HmnJ/plpPjgbjn
p7vooYzjgZnjgovpmpvjgavjgIHkvJrlk6HosrvjgpLoq4vmsYLjgZXjgZvjgabjgYTjgZ/jgaDj
gY/jgZ/jgoHjgafjgZnjgIIgDQrmlK/miZXmlrnms5XjgpLmm7TmlrDjgZnjgosNCg0KM+aXpeS7
peWGheOBq+OAgeOCouODnuOCvuODs+OBi+OCieOBruiri+axguOBuOOBruOBiuaUr+aJleOBhOOB
jOeiuuiqjeOBp+OBjeOBquOBhOmZkOOCiuOAgeOBiuWuouanmOOBrkFtYXpvbuODl+ODqeOCpOOD
oOOBrueZu+mMsuOBr+OCreODo+ODs+OCu+ODq+OBleOCjOOAgeeEoeaWmeS9k+mok+OBr+OBlOWI
qeeUqOOBhOOBn+OBoOOBkeOBquOBj+OBquOCiuOBvuOBmeOAgg0K5LuW44Gu5pyJ5Yq544Gq5pSv
5omV5pa55rOV44KS5pu05paw44O76L+95Yqg44GX44CBQW1hem9u44OX44Op44Kk44Og44Gu54m5
5YW444KS44GU5Yip55So44GV44KM44Gf44GE5aC05ZCI44Gv44CB5Lul5LiL44Gu5omL6aCG44Gr
5b6T44Gj44Gm5pu05paw44GX44Gm44GP44Gg44GV44GE44CCIA0KDQrjgYrlrqLmp5jjga7jgYrm
lK/miZXjgYTmlrnms5XjgavjgqLjgq/jgrvjgrlBbWF6b27jg5fjg6njgqTjg6DjgavnmbvpjLLj
gZfjgZ9BbWF6b24uY28uanDjga7jgqLjgqvjgqbjg7Pjg4jjgpLkvb/nlKjjgZfjgabjgrXjgqTj
g7PjgqTjg7MgDQrnmbvpjLLmuIjjgb/jga7jgYrmlK/miZXmiYvmrrXjga7mnInlirnmnJ/pmZDj
gpLmm7TmlrDjgIHjgb7jgZ/jga/mlrDjgZfjgY/mlK/miZXjgYTmiYvmrrXjgpLov73liqDjgZfj
gIHjgIzntprooYzjgI3jg5zjgr/jg7PjgpLjgq/jg6rjg4Pjgq8gDQrnj77lnKjjgZTmjIflrprj
ga7jgYrmlK/miZXjgYTmlrnms5XjgYzmib/oqo3jgZXjgozjgarjgYTljp/lm6Djga/jgIHmj5Dm
kLrkvJrnpL4o44Kv44Os44K444OD44OI44Kr44O844OJ5Lya56S+562JKeOBruS6i+aDheOBq+OC
iOOCiueVsOOBquOCiuOBvuOBmeOBjOOAgeWIqeeUqOWPr+iDvemZkOW6pumhjeOBrui2hemBjuOA
geacieWKueacn+mZkOWIh+OCjOOAgeOCq+ODvOODieWIqeeUqOS4jeWPr+OBquOBqeOBjOiAg+OB
iOOCieOCjOOBvuOBmeOAguWkp+WkieOBiuaJi+aVsOOBp+OBmeOBjOips+e0sOOBq+OBpOOBhOOB
puOBr+OCteODvOODk+OCueOBruaPkOS+m+WFg+S8muekvuOBq+ebtOaOpeOBiuWVj+OBhOWQiOOC
j+OBm+OBj+OBoOOBleOBhOOAgiANCg0KQW1hem9uLmNvLmpw44KS44GU5Yip55So44GE44Gf44Gg
44GN44CB44GC44KK44GM44Go44GG44GU44GW44GE44G+44GZ44CCIA0K5LuK5b6M44Go44KCQW1h
em9uLmNvLmpw44KS44KI44KN44GX44GP44GK6aGY44GE44GE44Gf44GX44G+44GZ44CCIA0KDQpB
bWF6b24uY28uanDjgqvjgrnjgr/jg57jg7zjgrXjg7zjg5PjgrkgDQoNCg0KDQrjgr/jgqTjg6Dj
grvjg7zjg6sgICAgICAgICAgICAgICDjg5fjg6njgqTjg6DnibnlhbggICAgICAgICAgICAgICDj
gqLjgqvjgqbjg7Pjg4ggIOODmOODq+ODlw0KwqkgMjAyMiBBbWF6b24uY29tLCBJbmMuIG9yIGl0
cyBhZmZpbGlhdGVzLiBBbGwgcmlnaHRzIHJlc2VydmVkLiBBbWF6b24sDQpBbWF6b24uY28uanAs
IEFtYXpvbiBQcmltZSwgUHJpbWUg44GK44KI44GzQW1hem9uLmNvLmpwIOOBruODreOCtOOBryBB
bWF6b24uY29tLCBJbmMu44G+IOOBn+OBr+OBneOBrumWoumAo+S8muekvuOBruWVhuaomeOBp+OB
meOAgg0KQW1hem9uLmNvbSwgNDEwIFRlcnJ5IEF2ZW51ZSBOLiwgU2VhdHRsZSBDUywgV0EgOTgx
MDktNTIxMCAKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
Vjlmcy1kZXZlbG9wZXIgbWFpbGluZyBsaXN0ClY5ZnMtZGV2ZWxvcGVyQGxpc3RzLnNvdXJjZWZv
cmdlLm5ldApodHRwczovL2xpc3RzLnNvdXJjZWZvcmdlLm5ldC9saXN0cy9saXN0aW5mby92OWZz
LWRldmVsb3Blcgo=
