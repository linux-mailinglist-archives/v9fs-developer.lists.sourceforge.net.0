Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 279F94F6D49
	for <lists+v9fs-developer@lfdr.de>; Wed,  6 Apr 2022 23:47:40 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1ncDV3-0000bF-S9; Wed, 06 Apr 2022 21:47:37 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <admin-eki-net@nzxzyy.com>) id 1ncDV2-0000b8-AD
 for v9fs-developer@lists.sourceforge.net; Wed, 06 Apr 2022 21:47:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Message-ID:Date:Subject:
 To:From:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=06uOsbZGT579/j2NNgHHnwcsRciIW8uvGBQZmSlgu6o=; b=RWcgKeJRrLu7dFo2CSrdCO6M1f
 6bnoVq1AjY2hzPxgKhxIS9r19mRmx5YU5SNIv01Wyac2rDBehfpEOjQgYEI2Agsv/0CvBcAonA5gh
 w7mF8T/OOxcXnc8MKGvvexJsk0+abPT0VpJqb2C08iO3xoRR4EXNEantkS2f3CNx3YDU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Message-ID:Date:Subject:To:From:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=06uOsbZGT579/j2NNgHHnwcsRciIW8uvGBQZmSlgu6o=; b=R
 KlcXj9Xiv8T8/f2pEMNoq/8p3vI7vFWT5TgGrzZ+4ZsdDwi09BVv14mFebzr93q8oznxYYwB8zCfe
 UEDhnuLPx4IwO2AZI9L1OCT0Awm36KovA2TR5TwswmFgcYMiEGrSVQd5QMKN8tHYztkhbgK/kxWRM
 JvUcWBdAQiwXVf6E=;
Received: from nzxzyy.com ([173.82.212.199])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1ncDV0-007yHW-4H
 for v9fs-developer@lists.sourceforge.net; Wed, 06 Apr 2022 21:47:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; s=default; d=nzxzyy.com; 
 h=From:To:Subject:Date:Message-ID:MIME-Version:Content-Type;
 i=admin-eki-net@nzxzyy.com;
 bh=06uOsbZGT579/j2NNgHHnwcsRciIW8uvGBQZmSlgu6o=;
 b=T6Y6j2XLrU1UohrfiFtZ7inNg0S7pYHzPtD7UcZqL+WQGZFz83x/hHL1g1LIuZII89m9mBAJZbny
 V7mhR1Ulets3ITB6jsAsr6nFZKKGhEAAg/IAHMJDaVZQ50LfECrkEJQGQGNwiIgAWVpVRuDHH+vT
 ZrAQpkUBOuy3MPBQTdI=
From: admin-eki-net@nzxzyy.com <admin-eki-net@nzxzyy.com>
To: v9fs-developer <v9fs-developer@lists.sourceforge.net>
Date: Wed, 6 Apr 2022 21:27:05 +000
Message-ID: <00b359fc68b9$b80f1098$8a537801$@??????JR????>
MIME-Version: 1.0
X-Helo-Check: bad, Forged Random Domain (nzxzyy.com)
X-Spam-Score: 4.0 (++++)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  日頃より「えきねっと」をご利用いただきありがとうございます。
    「えきねっと」は 2022 年 3 月 27 日(日)にサービスをリニューアルいたしました。これ
    に伴い、「えきねっと」利用規約・会員規約を変更し、最後に�
    [...] 
 
 Content analysis details:   (4.0 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  2.5 URIBL_DBL_SPAM         Contains a spam URL listed in the Spamhaus DBL
                             blocklist
                             [URIs: xtiastl.cn]
  0.4 INVALID_DATE           Invalid Date: header (not RFC 2822)
  1.2 RCVD_IN_BL_SPAMCOP_NET RBL: Received via a relay in
                             bl.spamcop.net
              [Blocked - see <https://www.spamcop.net/bl.shtml?173.82.212.199>]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
X-Headers-End: 1ncDV0-007yHW-4H
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [V9fs-developer] =?utf-8?b?44CQ6YeN6KaB44CR44GI44GN44Gt44Gj44Go?=
	=?utf-8?b?44Ki44Kr44Km44Oz44OI44Gu6Ieq5YuV6YCA5Lya5Yem55CG44Gr44Gk?=
	=?utf-8?b?44GE44Gm?=
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

ICAgICAgICAgICAgICAgICAgICAgICAgIA0KDQoNCg0KDQoNCg0K5pel6aCD44KI44KK44CM44GI
44GN44Gt44Gj44Go44CN44KS44GU5Yip55So44GE44Gf44Gg44GN44GC44KK44GM44Go44GG44GU
44GW44GE44G+44GZ44CCIA0KDQoNCg0KDQrjgIzjgYjjgY3jga3jgaPjgajjgI3jga8gMjAyMiDl
ubQgMyDmnIggMjcg5pelKOaXpSnjgavjgrXjg7zjg5PjgrnjgpLjg6rjg4vjg6Xjg7zjgqLjg6vj
gYTjgZ/jgZfjgb7jgZfjgZ/jgILjgZPjgowg44Gr5Ly044GE44CB44CM44GI44GN44Gt44Gj44Go
44CN5Yip55So6KaP57SE44O75Lya5ZOh6KaP57SE44KS5aSJ5pu044GX44CB5pyA5b6M44Gr44Ot
44Kw44Kk44Oz44KS44GX44Gf5pel44KI44KK6LW3566X44GXIOOBpu+8kuW5tOS7peS4iuOAjOOB
iOOBjeOBreOBo+OBqOOAjeOBruOBlOWIqeeUqO+8iOODreOCsOOCpOODs++8ieOBjOeiuuiqjeOB
p+OBjeOBquOBhOOAjOOBiOOBjeOBreOBo+OBqOOAjeOCouOCq+OCpuODs+ODiCDjga/jgIHoh6rl
i5XnmoTjgavpgIDkvJrlh6bnkIbjgZXjgZvjgabjgYTjgZ/jgaDjgY/jgZPjgajjgajjgYTjgZ/j
gZfjgb7jgZfjgZ/jgILjgarjgYrjgIHlr77osaHjgqLjgqvjgqbjg7Pjg4jjga7oh6rli5XpgIAg
5Lya5Yem55CG44KS44CB5pys6KaP57SE44Gr5Z+644Gl44GN44CBMjAyMiDlubQgMiDmnIggMjAg
5pelKOaciCnjgojjgorpoIbmrKHjgIHlrp/mlr3jgZXjgZvjgabjgYTjgZ/jgaDjgY3jgb7jgZnj
gIINCg0KDQoNCg0K77yS5bm05Lul5LiK44Ot44Kw44Kk44Oz44GX44Gm44GE44Gq44GE44GK5a6i
44GV44G+44Gn44CB5LuK5b6M44KC44CM44GI44GN44Gt44Gj44Go44CN44KS44GU5Yip55So44GE
44Gf44Gg44GR44KL5aC05ZCIIOOBr+OAgTIwMjIg5bm0IDQg5pyIIDExIOaXpSjmnIgp44KI44KK
44KC5YmN44Gr44CB5LiA5bqm44Ot44Kw44Kk44Oz5pON5L2c44KS44GK6aGY44GE44GE44Gf44GX
44G+44GZ44CCIA0KDQrih5Ljg63jgrDjgqTjg7Pjga/jgZPjgaHjgokgDQoNCg0KDQoNCuKAu+OB
iOOBjeOBreOBo+OBqOODiOODg+ODl+ODmuODvOOCuOWPs+S4iuOBruODreOCsOOCpOODs+ODnOOC
v+ODs+OCiOOCiuODreOCsOOCpOODs+OBl+OBpuOBj+OBoOOBleOBhOOAgg0KDQoNCg0KDQrjgarj
gYrjgIHjgqLjgqvjgqbjg7Pjg4jjgYzpgIDkvJrlh6bnkIbjgZXjgozjgZ/loLTlkIjjgoLjgIHm
lrDjgZ/jgavjgqLjgqvjgqbjg7Pjg4jnmbvpjLLvvIjnhKHmlpnnmbvpjLLvvInjgZfjgabjgYTj
gZ8g44Gg44GP44GT44Go44Gn44GZ44GQ44Gr44CM44GI44GN44Gt44Gj44Go44CN44KS44GU5Yip
55So44GE44Gf44Gg44GP44GT44Go44GM44Gn44GN44G+44GZ44Gu44Gn44CB5LuK5b6M44KC44GU
5oSb6aGn44GE44GfIOOBoOOBkeOBvuOBmeOCiOOBhuOCiOOCjeOBl+OBj+OBiumhmOOBhOOBhOOB
n+OBl+OBvuOBmeOAgiANCg0KDQoNCg0KIENvcHlyaWdodCDCqSBKUiBFYXN0IE5ldCBTdGF0aW9u
IENvLixMdGQuIEFsbCBSaWdodHMgUmVzZXJ2ZWQuDQoNCg0KDQoNCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpWOWZzLWRldmVsb3BlciBtYWlsaW5nIGxp
c3QKVjlmcy1kZXZlbG9wZXJAbGlzdHMuc291cmNlZm9yZ2UubmV0Cmh0dHBzOi8vbGlzdHMuc291
cmNlZm9yZ2UubmV0L2xpc3RzL2xpc3RpbmZvL3Y5ZnMtZGV2ZWxvcGVyCg==
