Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E020C6EB92B
	for <lists+v9fs-developer@lfdr.de>; Sat, 22 Apr 2023 14:30:09 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1pqCNU-0001ZS-DL;
	Sat, 22 Apr 2023 12:30:07 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <amazon-service@cqwnjf.store>) id 1pqCNT-0001ZD-OH
 for v9fs-developer@lists.sourceforge.net;
 Sat, 22 Apr 2023 12:30:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Date:Subject:To:From:
 Message-ID:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=GcPVZS9nizmMiZna/p3f1mf9t58u5oeQScj67m14ryc=; b=iPhAzXNvblRrGBnao7NIMvwnPu
 UoLIUysKERvTwkBoZWSLYcQUjydQjQyDZOANW1/xT83HneyA94joKMafM/rAg3Eq8x6yhuDqE6Zs2
 vm2TCdoMZXlb5Jf+/itDKGT1WfZF216qNQh0Dqd3Dr+DWuM8QZG4rfH2GF2b4zWa43yA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Date:Subject:To:From:Message-ID:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=GcPVZS9nizmMiZna/p3f1mf9t58u5oeQScj67m14ryc=; b=n
 WZg+cbdkSJizeOQWVqut8syov74ZjiZtgq6XqKdVspY7Z5GL7TXC5r1gfgXaC6tACepOZ5Viy5mja
 USZb+BBt1J2/bIpvsU7okjpRshwsG27mf/UgwbdRBecKSsyc02pXEsHoyvh2fto8O7PjG8BjBJI8F
 uNXzuW/S2zHhujrw=;
Received: from [122.8.182.108] (helo=cqwnjf.store)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1pqCNN-0005hy-JX for v9fs-developer@lists.sourceforge.net;
 Sat, 22 Apr 2023 12:30:06 +0000
Received: from drup (unknown [104.128.66.42])
 by cqwnjf.store (Postfix) with ESMTPA id D6BC22B07A
 for <v9fs-developer@lists.sourceforge.net>;
 Sat, 22 Apr 2023 20:11:04 +0800 (CST)
DKIM-Filter: OpenDKIM Filter v2.11.0 cqwnjf.store D6BC22B07A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cqwnjf.store;
 s=default; t=1682165465;
 bh=GcPVZS9nizmMiZna/p3f1mf9t58u5oeQScj67m14ryc=;
 h=From:To:Subject:Date:From;
 b=mm1faxkeXgkTO4BIqUPpd8gbHztl0L3EOqOrxuoJ52qqweyXaLn9Jv40+f0CIElBr
 XcYi1o1ojUt/FChQvVTD1gkGbuAjGl0rXNoteiMYCy3AgmVXgyr2zu14MkjZo8sweU
 UeDUvPls787vYBTn/faUptXWIm1cUmQ8IR8g3k/g=
Message-ID: <82148455AB14D5FC4A58100646A7A905@drup>
To: v9fs-developer <v9fs-developer@lists.sourceforge.net>
Date: Sat, 22 Apr 2023 21:10:54 +0900
MIME-Version: 1.0
X-Priority: 3
X-Mailer: Supmailer 38.1.1
X-Helo-Check: bad, Forged Random Domain (cqwnjf.store)
X-Spam-Score: 8.0 (++++++++)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has identified this incoming email as possible spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  ━━━━━━━━━━━━━2023.4.18━━ ※重要なお知らせ
    メールマガジンの受信を希望されていない方へもお送りしています。
    ━━━━━━━━� [...] 
 
 Content analysis details:   (8.0 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  1.2 RCVD_IN_BL_SPAMCOP_NET RBL: Received via a relay in
                             bl.spamcop.net
               [Blocked - see <https://www.spamcop.net/bl.shtml?122.8.182.108>]
  1.0 RCVD_IN_UCE1           RBL: IP Listed in UCEPROTECT Level 1
                             [122.8.182.108 listed in dnsbl-1.uceprotect.net]
  0.0 URIBL_PH_SURBL         Contains an URL listed in the PH SURBL blocklist
                             [URIs: xmdbk.ltd]
  1.9 URIBL_ABUSE_SURBL      Contains an URL listed in the ABUSE SURBL
                             blocklist
                             [URIs: xmdbk.ltd]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
  2.7 RCVD_IN_PSBL           RBL: Received via a relay in PSBL
                             [122.8.182.108 listed in psbl.surriel.com]
  0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
  1.3 RDNS_NONE              Delivered to internal network by a host with no rDNS
X-Headers-End: 1pqCNN-0005hy-JX
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [V9fs-developer] =?utf-8?b?44GU5rOo5oSP44GP44Gg44GV44GE77yB5Lul?=
	=?utf-8?b?5LiL44Gu5YaF5a6544KS44KI44GP44GK6Kqt44G/44GP44Gg44GV44GE?=
	=?utf-8?b?77yBNC8yMi8yMDIz?=
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
From: "Amazon.co.jp via V9fs-developer" <v9fs-developer@lists.sourceforge.net>
Reply-To: "Amazon.co.jp" <amazon-service@cqwnjf.store>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

DQrilIHilIHilIHilIHilIHilIHilIHilIHilIHilIHilIHilIHilIEyMDIzLjQuMTjilIHilIEN
CuKAu+mHjeimgeOBquOBiuefpeOCieOBmw0K44Oh44O844Or44Oe44Ks44K444Oz44Gu5Y+X5L+h
44KS5biM5pyb44GV44KM44Gm44GE44Gq44GE5pa544G444KC44GK6YCB44KK44GX44Gm44GE44G+
44GZ44CCDQrilIHilIHilIHilIHilIHilIHilIHilIHilIHilIHilIHilIHilIHilIHilIHilIHi
lIHilIHilIENCg0Kdjlmcy1kZXZlbG9wZXJAbGlzdHMuc291cmNlZm9yZ2UubmV0IOS8muWToean
mOOAgeW8iuekvuOBq+OBiumgkOOBi+OCiuOBmeOCi+OAjOOCr+ODrOOCuOODg+ODiOOCq+ODvOOD
ieOBruOBiuWuouanmOaDheWgseOAjeOBr+ato+eiuuOBquaDheWgseOBp+OBr+OBquOBhOOBn+OC
geOAgQ0K5byK56S+44Gn44Gv44CB44Kv44Os44K444OD44OI44Kr44O844OJ5Lya56S+44KE6YqA
6KGM44Gu5rG65riI6KaP5YmH44Gr5Z+644Gl44GN44CB6KaB5Lu244KS5rqA44Gf44GX44Gm44GE
44Gq44GE44GK5a6i5qeY44Gr5a++44GX44Gm5Yi26ZmQ5o6q572u44KS44GV44Gb44Gm6aCC44GN
44G+44GZ44CCDQrjgZTliKnnlKjjgavmlK/pmpzjgpLjgY3jgZ/jgZXjgarjgYTjgojjgYbjgIHj
gYrml6njgoHjgavkuIvoqJjjga7jg6rjg7Pjgq/jgpLjgq/jg6rjg4Pjgq/jgZfjgabjgIHmraPj
gZfjgYTmg4XloLHjgpLjgZToqJjlhaXjgY/jgaDjgZXjgYTjgIINCg0K4oeS44Ot44Kw44Kk44Oz
44Gv44GT44Gh44KJDQoNCuKAu+OBk+OBrlVSTOOBruacieWKueacn+mWk+OBr+aJi+e2muOBjeWP
l+S7mOaZguOCiOOCijI05pmC6ZaT44Gn44GZ44CCDQrilqDmnInlirnmnJ/pmZDjgIAyMDIz5bm0
NOaciDE55pelKOawtCkyMuaZgjAw5YiGDQoNCuKAu1VSTOOBjOeEoeWKueOBruWgtOWQiOOBr+OA
geaBkOOCjOWFpeOCiuOBvuOBmeOBjOOAgeaUueOCgeOBpuODkeOCueODr+ODvOODieOBruWGjeeZ
u+mMsuaJi+e2muOBjeOCkuOBiumhmOOBhOOBhOOBn+OBl+OBvuOBmeOAgg0KDQrjgZTliKnnlKjj
ga7jgYrlrqLjgZXjgb7jgavjga/jgZTov7fmg5HjgpLjgYrjgYvjgZHjgZfjgb7jgZfjgaboqqDj
gavnlLPjgZfoqLPjgZTjgZbjgYTjgb7jgZvjgpPjgYzjgIENCuS9leWNkuOBlOeQhuino+iznOOC
iuOBvuOBmeOCiOOBhuOBiumhmOOBhOeUs+OBl+S4iuOBkuOBvuOBmeOAgg0KDQrilIHilIHilIHi
lIHilIHilIHilIHilIHilIHilIHilIHilIHilIHilIHilIHilIHilIHilIHilIHilIENCuKAu+OD
oeODvOODq+ODnuOCrOOCuOODs+OBruWPl+S/oeOCkuW4jOacm+OBleOCjOOBpuOBhOOBquOBhOaW
ueOBuOOCguOBiumAgeOCiuOBl+OBpuOBhOOBvuOBmeOAgg0K4oC744GT44Gu44Oh44O844Or44Gr
44GU6L+U5L+h44GE44Gf44Gg44GN44G+44GX44Gm44KC44GU5a++5b+c44GE44Gf44GX44GL44Gt
44G+44GZ44Gu44Gn44CBDQrjgYLjgonjgYvjgZjjgoHjgZTkuobmib/jgY/jgaDjgZXjgYTjgIIN
Ci0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0NCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpWOWZzLWRldmVsb3BlciBtYWlsaW5n
IGxpc3QKVjlmcy1kZXZlbG9wZXJAbGlzdHMuc291cmNlZm9yZ2UubmV0Cmh0dHBzOi8vbGlzdHMu
c291cmNlZm9yZ2UubmV0L2xpc3RzL2xpc3RpbmZvL3Y5ZnMtZGV2ZWxvcGVyCg==
