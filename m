Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1168E4AEE68
	for <lists+v9fs-developer@lfdr.de>; Wed,  9 Feb 2022 10:49:56 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1nHjbl-0008GS-GF; Wed, 09 Feb 2022 09:49:52 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <Amazonjp-update-account@fsgdkgf.cn>)
 id 1nHjbj-0008G1-Hj
 for v9fs-developer@lists.sourceforge.net; Wed, 09 Feb 2022 09:49:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Message-ID:Date:Subject:
 To:From:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=zCcm8SF01d3iZpucPslhFGvEeSqVqD6sWdirvX6UeZQ=; b=gZ82Kt14lYpFoNAfDTG9JCkaMW
 /pgDNAjl7xmVrPWCD20Z6qmw6R4gSgj++wUd40ni+tuOGoo9y89LoXyI4TmxgRXflDUNcETE/zaRt
 CAhKQnldDvMPPdnfFYiDuiyX/Q4nOyfvt4UbgxdvpqdGvjMl1O/xXh33B1LdLBCUuqWM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Message-ID:Date:Subject:To:From:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=zCcm8SF01d3iZpucPslhFGvEeSqVqD6sWdirvX6UeZQ=; b=Q
 T3hJ4sIYWGfT8ANLQ54NDJUeO5d3uoS/NAOeOh22v2vKgs74Pex7mfV1YGC7QhTF4PYJS6OYK+uJH
 MNRo+G98yaV4cxaoZQJCdn+g6WJqzM89nTVMJ+eNoU6xg/cIfDBoeOLgoUTWe02tjnw0l2mxF0bOY
 sLDfyNGIn6fZ+F/s=;
Received: from [137.220.182.38] (helo=fsgdkgf.cn)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nHjbc-0003dc-Nk
 for v9fs-developer@lists.sourceforge.net; Wed, 09 Feb 2022 09:49:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; s=defult; d=fsgdkgf.cn; 
 h=From:To:Subject:Date:Message-ID:MIME-Version:Content-Type;
 i=Amazonjp-update-account@fsgdkgf.cn;
 bh=zCcm8SF01d3iZpucPslhFGvEeSqVqD6sWdirvX6UeZQ=;
 b=XU1VcqujyKkDUh+O5ah39bQZ2nTAbGXercgUdZPOrR6sntggzbtegwX5nKlCXJ2v6uNh7ObBFD8d
 o4SCA6y6nPXrGqSr89pi55zO+eR6sxo6ncpX1x1PsZGP4opN5+bB/W+lezTWYvmugwPwUq39sU2Y
 9lRt08uJLSxHd9fGkGM=
From: Amazon.co.jp <Amazonjp-update-account@fsgdkgf.cn>
To: v9fs-developer <v9fs-developer@lists.sourceforge.net>
Date: Wed, 9 Feb 2022 17:49:19 +0800
Message-ID: <00b6c18cf54e$ccafd346$d8032b2e$@njclfnjk>
MIME-Version: 1.0
X-Helo-Check: bad, Forged Random Domain (fsgdkgf.cn)
X-Spam-Score: 4.9 (++++)
X-Spam-Report: Spam detection software, running on the system "util-spamd-2.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  お客様のご登録のお支払い方法にエラーが発生しました。
    お支払方法に問題があり、プライム特典をご利用いただけない状況です。
    様 Amazonプライムをご利用いただきありがとうございます。
    プライムへ登録の際に設定いただいたお支払い方法認証の段階にエラーが発生しました。そ�
    [...] 
 
 Content analysis details:   (4.9 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  0.5 FROM_DOMAIN_NOVOWEL    From: domain has series of non-vowel letters
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
  0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
  2.0 PYZOR_CHECK            Listed in Pyzor
                             (https://pyzor.readthedocs.io/en/latest/)
  1.3 RDNS_NONE              Delivered to internal network by a host with no rDNS
  1.3 FSL_BULK_SIG           Bulk signature with no Unsubscribe
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1nHjbc-0003dc-Nk
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [V9fs-developer] =?utf-8?b?W+mHjeimgV3vvJrjgJBBbWF6b27jg5fjg6k=?=
	=?utf-8?b?44Kk44Og5Lya6LK744Gu44GK5pSv5omV44GE5pa55rOV44Gr5ZWP6aGM?=
	=?utf-8?b?44GM44GC44KK44G+44GZ44CR?=
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

44GK5a6i5qeY44Gu44GU55m76Yyy44Gu44GK5pSv5omV44GE5pa55rOV44Gr44Ko44Op44O844GM
55m655Sf44GX44G+44GX44Gf44CCDQoNCg0KDQoNCg0KIA0KDQrjgYrmlK/miZXmlrnms5Xjgavl
lY/poYzjgYzjgYLjgorjgIHjg5fjg6njgqTjg6DnibnlhbjjgpLjgZTliKnnlKjjgYTjgZ/jgaDj
gZHjgarjgYTnirbms4HjgafjgZnjgIIgIOanmA0KDQpBbWF6b27jg5fjg6njgqTjg6DjgpLjgZTl
iKnnlKjjgYTjgZ/jgaDjgY3jgYLjgorjgYzjgajjgYbjgZTjgZbjgYTjgb7jgZnjgIIg44OX44Op
44Kk44Og44G455m76Yyy44Gu6Zqb44Gr6Kit5a6a44GE44Gf44Gg44GE44Gf44GK5pSv5omV44GE
5pa55rOV6KqN6Ki844Gu5q616ZqO44Gr44Ko44Op44O844GM55m655Sf44GX44G+44GX44Gf44CC
44Gd44Gu44Gf44KB44CB54++5Zyo44CB44GK5a6i5qeY44Gr44Gv44OX44Op44Kk44Og5Lya5ZOh
54m55YW444KS44GU5Yip55So44GE44Gf44Gg44GR44G+44Gb44KT44CC54m55YW444KS44GU5Yip
55So44GE44Gf44Gg44GP44Gr44Gv44CBIO+8k+aXpemWk+S7peWGheOBq+OBiuaUr+aJleOBhOaW
ueazleOBruWGjeeZu+mMsuOCkuOBiumhmOOBhOOBhOOBn+OBl+OBvuOBmeOAguOBiuWuouanmOOB
ruOBiuaUr+aJleOBhOaWueazleOBq+OCouOCr+OCu+OCuSAgQW1hem9u44OX44Op44Kk44Og44Gr
55m76Yyy44GX44GfQW1hem9uLmNvLmpw44Gu44Ki44Kr44Km44Oz44OI44KS5L2/55So44GX44Gm
44K144Kk44Oz44Kk44OzICDnmbvpjLLmuIjjgb/jga7jgYrmlK/miZXmiYvmrrXjga7mnInlirnm
nJ/pmZDjgpLmm7TmlrDjgIHjgb7jgZ/jga/mlrDjgZfjgYTmlK/miZXjgYTmiYvmrrXjgpLov73l
iqDjgZfjgIHjgIzkvJrlk6HnibnlhbjjgajjgYrmlK/miZXjgYTmlrnms5Xjga7norroqo3jgI3j
g5zjgr/jg7PjgpLjgq/jg6rjg4Pjgq8NCg0KICDkvJrlk6HnibnlhbjjgajjgYrmlK/miZXjgYTm
lrnms5Xjga7norroqo0gIA0KDQoNCuOCqOODqeODvOOBruWOn+WboOOBr+anmOOAheOBp+OBmeOB
jOOAgeacrOOCqOODqeODvOOBjOeZuueUn+OBmeOCi+S+i+OBqOOBl+OBpuOBr+OAgeOBiuaUr+aJ
leOBhOaWueazleOBruacieWKueacn+mZkOOBjOWIh+OCjOOBpuOBhOOCi+WgtOWQiOOBjOWkmuOB
j+imi+WPl+OBkeOCieOCjOOBvuOBmeOAguips+e0sOOBruWOn+WboOOBq+OBpOOBjeOBvuOBl+OB
puOBr+OBlOeZu+mMsuOBhOOBn+OBoOOBhOOBn+OBiuaUr+aJleaJi+auteOBruaPkOS+m+S8muek
vu+8iOOCr+ODrOOCuOODg+ODiOS8muekvuetie+8ieOBq+OBiuWVj+WQiOOBm+S4i+OBleOBhOOA
giANCg0K77yT5pel6ZaT5Lul5YaF44Gr44GK5pSv5omV44GE5pa55rOV44GM5YaN55m76Yyy44GV
44KM44Gq44GE5aC05ZCI44CB44GU55m76Yyy44GuQW1hem9uIOODl+ODqeOCpOODoOS8muWToeiz
h+agvOOBr+iHquWLleeahOOBq+OCreODo+ODs+OCu+ODq+OBleOCjOOBvuOBmeOAgg0K5LuK5b6M
44Go44KCQW1hem9uLmNvLmpw44KS44KI44KN44GX44GP44GK6aGY44GE44GE44Gf44GX44G+44GZ
44CCDQoNCg0KDQoNCsKpIDIwMjIgQW1hem9uLmNvbSwgSW5jLiBvciBpdHMgYWZmaWxpYXRlcy4g
QWxsIHJpZ2h0cyByZXNlcnZlZC4gQW1hem9uLCANCkFtYXpvbi5jby5qcCwgQW1hem9uIFByaW1l
LCBQcmltZSDjgYrjgojjgbNBbWF6b24uY28uanAg44Gu44Ot44K044GvQW1hem9uLmNvbSwgSW5j
Lg0K44G+44Gf44Gv44Gd44Gu6Zai6YCj5Lya56S+44Gu5ZWG5qiZ44Gn44GZ44CCDQpBbWF6b24u
Y29tLCA0MTAgVGVycnkgQXZlbnVlIE4uLCBTZWF0dGxlLCBXQSA5ODEwOS01MjEwIA0KDQrjgZPj
ga7jg6Hjg4Pjgrvjg7zjgrjjga8gIOOBq+mAgeS/oeOBleOCjOOBvuOBl+OBn+OAgg0KCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClY5ZnMtZGV2ZWxvcGVy
IG1haWxpbmcgbGlzdApWOWZzLWRldmVsb3BlckBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQKaHR0cHM6
Ly9saXN0cy5zb3VyY2Vmb3JnZS5uZXQvbGlzdHMvbGlzdGluZm8vdjlmcy1kZXZlbG9wZXIK
