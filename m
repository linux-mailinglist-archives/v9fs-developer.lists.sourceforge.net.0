Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BC52979652
	for <lists+v9fs-developer@lfdr.de>; Sun, 15 Sep 2024 12:23:29 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1spmPe-0007HU-8o;
	Sun, 15 Sep 2024 10:23:26 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <eki-update@puqchasbhreq.com>) id 1spmPc-0007HH-V1
 for v9fs-developer@lists.sourceforge.net;
 Sun, 15 Sep 2024 10:23:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Message-ID:Mime-Version:Subject:To:
 From:Date:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=CuizzfpJOES0MuEYUAyAGq5jI1U36pg5S4WOFUbuzd8=; b=lX1fuMmxpEtmhPhpfbnWhuGnLB
 5OUVaxabUCJdHr7YyR2+gq8jU8pJ/TePX/0RxHGe893akDqkKmyU6XTvY/XE5LnK/K0ujP88JKKNk
 PAKYVAmjUArWW8nHZ91f669NqVRNIMTkYKab2hwdwww/YVhksGL87/E7JsQrCoWuobwQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Message-ID:Mime-Version:Subject:To:From:Date:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=CuizzfpJOES0MuEYUAyAGq5jI1U36pg5S4WOFUbuzd8=; b=X
 eVeX+R1vV5phdlzZGUPNjMcPaa6+oUe8rpTwIBMF/AfHANjtPVVx9CNeRLCG0Olq5x1Gpgq+NQuCq
 DG8rC8YqTL7sQ0ZX59CZLCznkPE5GnClwFpiU63dzlrOGe4OEms3tcak5skdnK38DeZe+4utElaKJ
 dGdoqAMiBgvfpctw=;
Received: from mail4.puqchasbhreq.com ([107.175.212.190])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1spmPa-00039e-Od for v9fs-developer@lists.sourceforge.net;
 Sun, 15 Sep 2024 10:23:24 +0000
Date: Sun, 15 Sep 2024 19:23:07 +0900
To: v9fs-developer <v9fs-developer@lists.sourceforge.net>
X-Has-Attach: no
Mime-Version: 1.0
Message-ID: <202409151923164112452@puqchasbhreq.com>
X-Spam-Score: 7.6 (+++++++)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has identified this incoming email as possible spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  会員情報変更および退会に関するお知らせ
   ━━━━━━━━━━━━━━━━━━2024.9.15━ 日頃より「えきねっと」をご利用いただきありがとうご
    [...] 
 
 Content analysis details:   (7.6 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  3.6 RCVD_IN_SBL_CSS        RBL: Received via a relay in Spamhaus SBL-CSS
                             [107.175.212.190 listed in zen.spamhaus.org]
  0.1 URIBL_SBL_A            Contains URL's A record listed in the Spamhaus SBL
                             blocklist
                             [URIs: www.mikehanney.com]
  1.7 URIBL_BLACK            Contains an URL listed in the URIBL blacklist
                             [URIs: mikehanney.com]
  0.0 URIBL_PH_SURBL         Contains an URL listed in the PH SURBL blocklist
                             [URIs: mikehanney.com]
  1.9 URIBL_ABUSE_SURBL      Contains an URL listed in the ABUSE SURBL
                             blocklist
                             [URIs: mikehanney.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
                             mail domains are different
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
  0.0 HTML_FONT_LOW_CONTRAST BODY: HTML font color similar or
                             identical to background
  0.0 HTML_MESSAGE           BODY: HTML included in message
X-Headers-End: 1spmPa-00039e-Od
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [V9fs-developer] =?utf-8?b?5Lya5ZOh5oOF5aCx5aSJ5pu044GK44KI44Gz?=
	=?utf-8?b?6YCA5Lya44Gr6Zai44GZ44KL44GK55+l44KJ44Gb44CQ44GI44GN44Gt?=
	=?utf-8?b?44Gj44Go44CR?=
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
From: =?UTF-8?B?44GI44GN44Gt44Gj44Go?= via V9fs-developer
 <v9fs-developer@lists.sourceforge.net>
Reply-To: =?UTF-8?B?44GI44GN44Gt44Gj44Go?= <member@eki-net.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

DQoNCg0KDQrkvJrlk6Hmg4XloLHlpInmm7TjgYrjgojjgbPpgIDkvJrjgavplqLjgZnjgovjgYrn
n6XjgonjgZsNCuKUgeKUgeKUgeKUgeKUgeKUgeKUgeKUgeKUgeKUgeKUgeKUgeKUgeKUgeKUgeKU
geKUgeKUgTIwMjQuOS4xNeKUgQ0K5pel6aCD44KI44KK44CM44GI44GN44Gt44Gj44Go44CN44KS
44GU5Yip55So44GE44Gf44Gg44GN44GC44KK44GM44Go44GG44GU44GW44GE44G+44GZ44CCDQoN
Cg0KOeaciDEw5pel44Gr44K744Kt44Ol44Oq44OG44Kj44K344K544OG44Og44KS5YWo6Z2i55qE
44Gr44Oq44OL44Ol44O844Ki44Or44GX44G+44GX44Gf44Gf44KB44CBN+aXpeS7peS4iuOBq+OD
reOCsOOCpOODs+OBl+OBpuOBhOOBquOBhOaWueOBr+OAgeS7iuW+jOOBruWIqeeUqOOBq+aUr+ma
nOOBjOWHuuOBquOBhOOCiOOBhuOAgeOBk+OBruODoeODvOODq+OCkuWPl+S/oeW+jOOAgeaXqeaA
peOBq+ODreOCsOOCpOODs+OCkuOBl+OBpuWAi+S6uuaDheWgseOCkuabtOaWsOOBl+OBpuOBj+OB
oOOBleOAgg0KDQoNCg0K44Ot44Kw44Kk44OzDQoNCjnmnIgzMOaXpeOBvuOBp+OBq+OBlOiomOWF
peOBj+OBoOOBleOBhOOAguOBlOiomOWFpeOBjOOBquOBhOWgtOWQiOOBr+OAgemAgOS8muaJi+e2
muOBjeOCkuOBqOOCieOBm+OBpuOBhOOBn+OBoOOBjeOBvuOBmeOAgg0KDQrmnZHkuIrkv6HlrZDj
gZXjgpMNCg0KDQrjgYrlrqLjgZXjgb7jgavjga/jgZTkuI3kvr/jgpLjgYrjgYvjgZHjgYTjgZ/j
gZfjgb7jgZnjgYzjgIHkvZXljZLjgZTnkIbop6PjgpLos5zjgorjgb7jgZnjgojjgYbjgYrpoZjj
gYTnlLPjgZfkuIrjgZLjgb7jgZnjgIINCg0K44GT44Gu5Yip55So6KaP56iL44Gr5a6a44KB44KL
566h55CG6ICF44Gu5LqL5YuZ44Gu5Y+W5omx56qT5Y+j44Gv44CBRVRD5Yip55So54Wn5Lya44K1
44O844OT44K55LqL5YuZ5bGA44Go44GX44G+44GZ44CCDQoNCg0K4oC744GT44Gu44Oh44O844Or
44Gv44CM44GI44GN44Gt44Gj44Go44CN44KI44KK6Ieq5YuV6YWN5L+h44GV44KM44Gm44GE44G+
44GZ44CCDQrov5Tkv6HjgYTjgZ/jgaDjgY3jgb7jgZfjgabjgoLlr77lv5zoh7TjgZfjgYvjga3j
gb7jgZnjga7jgafjgIHjgYLjgonjgYvjgZjjgoHjgZTkuobmib/jgY/jgaDjgZXjgYTjgIINCg0K
4oC75pys44Oh44O844Or44Gv44CB44CM44GI44GN44Gt44Gj44Go44CN6YeN6KaB44Gq44GK55+l
44KJ44Gb44Go44GX44Gm44Oh44O844Or44Gu6YWN5L+h44KS5biM5pyb44GV44KM44Gm44GE44Gq
44GE44GK5a6i5qeY44Gr44KC44GK6YCB44KK44GV44Gb44Gm44GE44Gf44Gg44GN44G+44GZ44CC
DQoNCg0K55m66KGM77ya5qCq5byP5Lya56S+SlLmnbHml6XmnKzjg43jg4Pjg4jjgrnjg4bjg7zj
grfjg6fjg7MNCuOAkjE1MS0wMDUxIOadseS6rOmDvea4i+iwt+WMuuWNg+mnhOODtuiwtzUtMjct
MTEg44Ki44Kw44Oq44K544Kv44Ko44Ki5paw5a6/NOmajg0KDQoNCuOBiuWuouanmOOBruOBiuaU
r+aJleOBhOaWueazleOBjOaJv+iqjeOBleOCjOOBvuOBm+OCkw0KDQo2OCDCqSAyMDI0IEpSIEVh
c3QgTmV0IFN0YXRpb24gQ28uLEx0ZC4NCg0KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fClY5ZnMtZGV2ZWxvcGVyIG1haWxpbmcgbGlzdApWOWZzLWRldmVs
b3BlckBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQKaHR0cHM6Ly9saXN0cy5zb3VyY2Vmb3JnZS5uZXQv
bGlzdHMvbGlzdGluZm8vdjlmcy1kZXZlbG9wZXIK
