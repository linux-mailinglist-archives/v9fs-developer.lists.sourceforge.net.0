Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FE494E4951
	for <lists+v9fs-developer@lfdr.de>; Tue, 22 Mar 2022 23:45:54 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1nWnGC-0007s4-JE; Tue, 22 Mar 2022 22:45:51 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <no-reply7@bbrjdj.cn>) id 1nWnFq-0007rr-5P
 for v9fs-developer@lists.sourceforge.net; Tue, 22 Mar 2022 22:45:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Date:Subject:To:From:
 Message-ID:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=MxyClQiZFcCE4nEEtU68I34uJKjVT+G6JDHu74UWmUs=; b=QSrEfq05ZPPXOZpDwN8hFY+6+9
 ZmyWFGtJ+0VssY52Z10ND8tmG0VKjwzCx/OpFeUVXqwU2GHzphXCFzBdKynzPnTEuyuw4T+3JUicB
 qeK+asSR5FMrHnBCoNn56fifZsl8lSNavIuat+Do+n+U17LzTW8iVSSuMqwvIIq/1Nz4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Date:Subject:To:From:Message-ID:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=MxyClQiZFcCE4nEEtU68I34uJKjVT+G6JDHu74UWmUs=; b=c
 Q+8cjlJkHs0+c8wiGezHUCKkJX0EAyFVLK1qPzYdxTdTYpOUJ2/Py0dY3LOBP541HOlKqgjEulgtp
 wSM9Dmbu9ZuHQcqgQ3SLFqZdByKjBqkcnIMqXHUzCo6lfjjj3fpUe1AyIOvov5IIrt7tmFud73lyO
 daW3RgGR+ZeAdve8=;
Received: from ygqsnab.cn ([117.50.179.30] helo=mail.bbrjdj.cn)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nWnFk-0004zh-PR
 for v9fs-developer@lists.sourceforge.net; Tue, 22 Mar 2022 22:45:28 +0000
Received: from voj (unknown [58.62.32.207])
 by mail.bbrjdj.cn (Postfix) with ESMTPA id 4C1B8375D88
 for <v9fs-developer@lists.sourceforge.net>;
 Wed, 23 Mar 2022 06:16:44 +0800 (CST)
Message-ID: <657ACC05F6289D02C4750A58BC1C8FDE@voj>
To: v9fs-developer <v9fs-developer@lists.sourceforge.net>
Date: Wed, 23 Mar 2022 06:16:36 +0800
MIME-Version: 1.0
X-Priority: 3
X-Mailer: Supmailer 37.0.0
X-Spam-Score: 7.3 (+++++++)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has identified this incoming email as possible spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  96 * { box-sizing: border-box; } body { margin: 0; padding:
 0; } a[x-apple-data-detectors] { color: inherit !important; text-decoration:
 inherit !important; } #MessageViewBody a { color: inherit; text [...] 
 Content analysis details:   (7.3 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 3.6 RCVD_IN_SBL_CSS        RBL: Received via a relay in Spamhaus SBL-CSS
 [117.50.179.30 listed in zen.spamhaus.org]
 0.5 RCVD_IN_UCE1           RBL: IP Listed in UCEPROTECT Level 1
 [117.50.179.30 listed in dnsbl-1.uceprotect.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 HTML_MESSAGE           BODY: HTML included in message
 0.1 HTTPS_HTTP_MISMATCH    BODY: No description available.
 2.0 PYZOR_CHECK            Listed in Pyzor
 (https://pyzor.readthedocs.io/en/latest/)
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 1.2 FSL_BULK_SIG           Bulk signature with no Unsubscribe
X-Headers-End: 1nWnFk-0004zh-PR
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [V9fs-developer] =?utf-8?b?44CQ44Oh44Or44Kr44Oq44CRMzAwMOWGhg==?=
	=?utf-8?b?5YiG44Od44Kk44Oz44OI5b+F44Ga44KC44KJ44GI44KL77yB?=
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
From: =?utf-8?B?44Oh44Or44Kr44Oq?= via V9fs-developer
 <v9fs-developer@lists.sourceforge.net>
Reply-To: =?utf-8?B?44Oh44Or44Kr44Oq?= <no-reply7@bbrjdj.cn>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

OTYgKiB7IGJveC1zaXppbmc6IGJvcmRlci1ib3g7IH0gYm9keSB7IG1hcmdpbjogMDsgcGFkZGlu
ZzogMDsgfSBhW3gtYXBwbGUtZGF0YS1kZXRlY3RvcnNdIHsgY29sb3I6IGluaGVyaXQgIWltcG9y
dGFudDsgdGV4dC1kZWNvcmF0aW9uOiBpbmhlcml0ICFpbXBvcnRhbnQ7IH0gI01lc3NhZ2VWaWV3
Qm9keSBhIHsgY29sb3I6IGluaGVyaXQ7IHRleHQtZGVjb3JhdGlvbjogbm9uZTsgfSBwIHsgbGlu
ZS1oZWlnaHQ6IGluaGVyaXQgfSBAbWVkaWEgKG1heC13aWR0aDo1MjBweCkgeyAucm93LWNvbnRl
bnQgeyB3aWR0aDogMTAwJSAhaW1wb3J0YW50OyB9IC5jb2x1bW4gLmJvcmRlciB7IGRpc3BsYXk6
IG5vbmU7IH0gLnN0YWNrIC5jb2x1bW4geyB3aWR0aDogMTAwJTsgZGlzcGxheTogYmxvY2s7IH0g
fQ0K44GE44Gk44KC44Oh44Or44Kr44Oq44KS44GU5Yip55So44GE44Gf44Gg44GN44GC44KK44GM
44Go44GG44GU44GW44GE44G+44GZ44CCDQoNCg0K4peP5Lya5ZOhSUTvvIjjg6Hjg7zjg6vjgqLj
g4njg6zjgrnvvIkNCuOAgHY5ZnMtZGV2ZWxvcGVyQGxpc3RzLnNvdXJjZWZvcmdlLm5ldA0KDQrj
gZnjgZDjgaszMDAw5YaG44Gu44Od44Kk44Oz44OI44KS5Y+X44GR5Y+W44KK44G+44GZ44CCDQoN
CuKWvOS4i+iomFVSTOOCkuOCr+ODquODg+OCr+OBl+OBpuWPl+OBkeWPluOCiuOBvuOBmeOAgg0K
DQpodHRwczovL3d3dy5tZXJjYXJpLmNvbS9qcC8zMDAwSlBZL2NvZGU/PUFoY1dFd01KRlg5R2Qz
em1ZYkxrDQoNCg0K44Kt44Oj44Oz44Oa44O844Oz5pyf6ZaTDQoyMDIyLzMvNCjph5EpIDAwOjAw
IH4gMjAyMi8zLzI4KOaciCkgMjM6NTkNCg0KDQog44GK5b6X77ya5aOy5LiK6YeR44GM5a6f6LOq
5pyA5aSnM+WAjeOBq+OBquOCi++8ge+8nw0K5Ye65ZOB44GZ44KL44Gq44KJ5LuK44GM44OB44Oj
44Oz44K577yB44CA5pyf6ZaT5Lit44Gr5paw44Gf44Gr5Ye65ZOB44GX44Gm5aOy44KM44Gf5Lq6
44Gu5Lit44GL44KJ5oq96YG444Gn44Oh44Or44Kr44Oq44Od44Kk44Oz44OI44GM5b2T44Gf44KL
77yBDQoNCuOAkOS4gOetieOAgOWjsuS4iumHkeOBjOWun+izqjPlgI3jgIA1MDDlkI3jgJENCg0K
5pyf6ZaT5Lit44Gu5aOy5LiK6YeR57eP6aGN44GuMuWAjeWIhuOBruODneOCpOODs+ODiOOBjOOC
guOCieOBiOOCi+ODgeODo+ODs+OCue+8gQ0KDQrjgJDkuoznrYnjgIDlo7LkuIrph5HjgYzlrp/o
s6oy5YCN44CAMiw1MDDlkI3jgJENCg0K5pyf6ZaT5Lit44Gu5aOy5LiK6YeR57eP6aGN5YiG44Gu
44Od44Kk44Oz44OI44GM44KC44KJ44GI44KL44OB44Oj44Oz44K577yBDQoNCuKAu+OBiuS4gOS6
uuOBleOBvuOBq+S7mOS4juOBmeOCi+ODneOCpOODs+ODiOOBr+OBqeOBoeOCieOCguS4iumZkFAx
MDAsMDAw44Gn44GZDQoNCuKAu+aKvemBuOOBiuOCiOOBs+ODneOCpOODs+ODiOS7mOS4juOBr+OC
reODo+ODs+ODmuODvOODs+e1guS6huW+jOOBq+ihjOOBhOOBvuOBmQ0KDQoNCuOBk+OBruODoeOD
vOODq+OBr+OAgemFjeS/oeWwgueUqOOBruOCouODieODrOOCueOBp+mFjeS/oeOBleOCjOOBpuOB
hOOBvuOBmeOAgg0KIMKpMjAyMSBNZXJjYXJpLCBJbmMuDQoNCg0KDQoNCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpWOWZzLWRldmVsb3BlciBtYWlsaW5n
IGxpc3QKVjlmcy1kZXZlbG9wZXJAbGlzdHMuc291cmNlZm9yZ2UubmV0Cmh0dHBzOi8vbGlzdHMu
c291cmNlZm9yZ2UubmV0L2xpc3RzL2xpc3RpbmZvL3Y5ZnMtZGV2ZWxvcGVyCg==
