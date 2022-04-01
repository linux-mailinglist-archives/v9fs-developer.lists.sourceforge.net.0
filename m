Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id EF6064EFA7A
	for <lists+v9fs-developer@lfdr.de>; Fri,  1 Apr 2022 21:41:14 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1naN8y-0005rD-TC; Fri, 01 Apr 2022 19:41:11 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <eki-contact@dciuylt.cn>) id 1naN8x-0005r7-Da
 for v9fs-developer@lists.sourceforge.net; Fri, 01 Apr 2022 19:41:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Mime-Version:Message-ID:Subject:To:
 From:Date:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=RCbZtoVtq9x4VFHLJspW47ckdym4HS/x2qmIVBAdFa4=; b=aLV7X6SAoHadcDftkamlPhCnps
 kX205cdoegf90YrR4Vp1Vdc+7gQ5cmLVBsc2mWfh8vxtsETYUzzjYQpwxGqjybdhs92hku5JfzJ/A
 FYjL9Xzjjrlm08bfHcdxX8N+PUlFKHcZ8x+jaqv0cnZW7Skn8gixig+ileHhascCsTv0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Mime-Version:Message-ID:Subject:To:From:Date:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=RCbZtoVtq9x4VFHLJspW47ckdym4HS/x2qmIVBAdFa4=; b=K
 ZGXzDoJxlJCih0CA6trRcfihf41tkEt3oajWmU5WeU1ft+IfQyV5GV79Tkw6gJ038kfH2RbHN3O3f
 gabawLYoQ8vRFZ2bcVw3JWk4BbS4vKkRcb6qyQB2Cg9WCGuaZUOzzrWxgpSWUi/3SCcbKVSA3McRu
 idwbqPdofxKXlOEE=;
Received: from [202.61.132.107] (helo=dciuylt.cn)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1naN8q-0029so-2b
 for v9fs-developer@lists.sourceforge.net; Fri, 01 Apr 2022 19:41:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; s=default; d=dciuylt.cn; 
 h=Date:From:To:Subject:Message-ID:Mime-Version:Content-Type;
 i=eki-contact@dciuylt.cn;
 bh=RCbZtoVtq9x4VFHLJspW47ckdym4HS/x2qmIVBAdFa4=;
 b=ieS/nIwmpAJ+RVGvYPJpzLLDk0NijFZrZWe0TpSno0KwEfBu6LcUGbWHQUx+oUyrpHjyrDzM/OCw
 DGhep5HmTfH8sPCIQR1ypaGsltF5GN+0jbxoaYsvT4wxnp16Jl3WLvnIwN5cBAnp6HZvnTQcR2V+
 ixWdxnBC8cjt79Ob/h8=
Date: Sat, 2 Apr 2022 03:20:45 +0800
From: =?utf-8?B?44GI44GN44Gt44Gj44Go44CMSlLmnbHml6XmnKzjgI0=?=
 <eki-contact@dciuylt.cn>
To: <v9fs-developer@lists.sourceforge.net>
Message-ID: <20220402032050504630@dciuylt.cn>
Mime-Version: 1.0
X-Spam-Score: 7.2 (+++++++)
X-Spam-Report: Spam detection software, running on the system "util-spamd-2.v13.lw.sourceforge.com",
 has identified this incoming email as possible spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  日頃より「えきねっと」をご利用いただきありがとうございます。
    「えきねっと」は 2022 年 2 月 06 日(日)にサービスをリニューアルいたしました。これ
    に伴い、「えきねっと」利用規約・会員規約を変更し、最後に�
    [...] 
 
 Content analysis details:   (7.2 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  2.5 URIBL_DBL_SPAM         Contains a spam URL listed in the Spamhaus DBL
                             blocklist
                             [URIs: p6ej0k.cn]
  3.6 RCVD_IN_SBL_CSS        RBL: Received via a relay in Spamhaus SBL-CSS
                             [202.61.132.107 listed in zen.spamhaus.org]
  0.1 URIBL_CSS_A            Contains URL's A record listed in the Spamhaus CSS
                             blocklist
                             [URIs: dciuylt.cn]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
  0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
  1.3 RDNS_NONE              Delivered to internal network by a host with no rDNS
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1naN8q-0029so-2b
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

DQoNCg0KDQoNCg0K5pel6aCD44KI44KK44CM44GI44GN44Gt44Gj44Go44CN44KS44GU5Yip55So
44GE44Gf44Gg44GN44GC44KK44GM44Go44GG44GU44GW44GE44G+44GZ44CCIA0KDQoNCg0KDQrj
gIzjgYjjgY3jga3jgaPjgajjgI3jga8gMjAyMiDlubQgMiDmnIggMDYg5pelKOaXpSnjgavjgrXj
g7zjg5PjgrnjgpLjg6rjg4vjg6Xjg7zjgqLjg6vjgYTjgZ/jgZfjgb7jgZfjgZ/jgILjgZPjgowg
44Gr5Ly044GE44CB44CM44GI44GN44Gt44Gj44Go44CN5Yip55So6KaP57SE44O75Lya5ZOh6KaP
57SE44KS5aSJ5pu044GX44CB5pyA5b6M44Gr44Ot44Kw44Kk44Oz44KS44GX44Gf5pel44KI44KK
6LW3566X44GXIOOBpu+8kuW5tOS7peS4iuOAjOOBiOOBjeOBreOBo+OBqOOAjeOBruOBlOWIqeeU
qO+8iOODreOCsOOCpOODs++8ieOBjOeiuuiqjeOBp+OBjeOBquOBhOOAjOOBiOOBjeOBreOBo+OB
qOOAjeOCouOCq+OCpuODs+ODiCDjga/jgIHoh6rli5XnmoTjgavpgIDkvJrlh6bnkIbjgZXjgZvj
gabjgYTjgZ/jgaDjgY/jgZPjgajjgajjgYTjgZ/jgZfjgb7jgZfjgZ/jgILjgarjgYrjgIHlr77o
saHjgqLjgqvjgqbjg7Pjg4jjga7oh6rli5XpgIAg5Lya5Yem55CG44KS44CB5pys6KaP57SE44Gr
5Z+644Gl44GN44CBMjAyMiDlubQgMiDmnIggMjAg5pelKOaciCnjgojjgorpoIbmrKHjgIHlrp/m
lr3jgZXjgZvjgabjgYTjgZ/jgaDjgY3jgb7jgZnjgIINCg0KDQoNCg0K77yS5bm05Lul5LiK44Ot
44Kw44Kk44Oz44GX44Gm44GE44Gq44GE44GK5a6i44GV44G+44Gn44CB5LuK5b6M44KC44CM44GI
44GN44Gt44Gj44Go44CN44KS44GU5Yip55So44GE44Gf44Gg44GR44KL5aC05ZCIIOOBr+OAgTIw
MjIg5bm0IDMg5pyIIDcg5pelKOaciCnjgojjgorjgoLliY3jgavjgIHkuIDluqbjg63jgrDjgqTj
g7Pmk43kvZzjgpLjgYrpoZjjgYTjgYTjgZ/jgZfjgb7jgZnjgIIgDQoNCuKHkuODreOCsOOCpOOD
s+OBr+OBk+OBoeOCiSANCg0KDQoNCg0K4oC744GI44GN44Gt44Gj44Go44OI44OD44OX44Oa44O8
44K45Y+z5LiK44Gu44Ot44Kw44Kk44Oz44Oc44K/44Oz44KI44KK44Ot44Kw44Kk44Oz44GX44Gm
44GP44Gg44GV44GE44CCDQoNCg0KDQoNCuOBquOBiuOAgeOCouOCq+OCpuODs+ODiOOBjOmAgOS8
muWHpueQhuOBleOCjOOBn+WgtOWQiOOCguOAgeaWsOOBn+OBq+OCouOCq+OCpuODs+ODiOeZu+mM
su+8iOeEoeaWmeeZu+mMsu+8ieOBl+OBpuOBhOOBnyDjgaDjgY/jgZPjgajjgafjgZnjgZDjgavj
gIzjgYjjgY3jga3jgaPjgajjgI3jgpLjgZTliKnnlKjjgYTjgZ/jgaDjgY/jgZPjgajjgYzjgafj
gY3jgb7jgZnjga7jgafjgIHku4rlvozjgoLjgZTmhJvpoafjgYTjgZ8g44Gg44GR44G+44GZ44KI
44GG44KI44KN44GX44GP44GK6aGY44GE44GE44Gf44GX44G+44GZ44CCIA0KDQoNCg0KDQogIENv
cHlyaWdodCDCqSBKUiBFYXN0IE5ldCBTdGF0aW9uIENvLixMdGQuIEFsbCBSaWdodHMgUmVzZXJ2
ZWQuCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClY5ZnMt
ZGV2ZWxvcGVyIG1haWxpbmcgbGlzdApWOWZzLWRldmVsb3BlckBsaXN0cy5zb3VyY2Vmb3JnZS5u
ZXQKaHR0cHM6Ly9saXN0cy5zb3VyY2Vmb3JnZS5uZXQvbGlzdHMvbGlzdGluZm8vdjlmcy1kZXZl
bG9wZXIK
