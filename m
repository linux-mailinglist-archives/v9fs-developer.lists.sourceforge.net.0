Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0445455BE94
	for <lists+v9fs-developer@lfdr.de>; Tue, 28 Jun 2022 08:04:18 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1o64Kb-0000CA-Lb; Tue, 28 Jun 2022 06:04:12 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <liugx@jinglun.com.cn>) id 1o64Ka-0000C4-EY
 for v9fs-developer@lists.sourceforge.net; Tue, 28 Jun 2022 06:04:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-Id:Date:MIME-Version:Content-Type:To:
 Subject:From:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=HEEx6hLWezNc+0uHgEPT7buSBa+zvIXRyhj/Oqv/aUk=; b=iNRP3yXsWJL6n8/BO+OZR8wLt6
 0sjCwu9vG3yIYIpyOLPKeFUsSpKZyOOhO13FFG+xOA0WYsS6lyAAmPAFQhvrYuFr+fBu/XC5fmDl+
 vXDFL9uuvi7DgXogaIoLX89NdBZEkBW2V49491HS/Okc70St4SYERwyOhYk2oq9AnI2A=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-Id:Date:MIME-Version:Content-Type:To:Subject:From:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=HEEx6hLWezNc+0uHgEPT7buSBa+zvIXRyhj/Oqv/aUk=; b=N
 zpTQtz04PiWwj4e/gllae0Nws0ZhhiwAnTFSlKnFInpV2bLkzpIb+SlrZ7rlUHM+30qy+3xzgM5YW
 Q8WaUjxcsqgjr0RTDGI9edtyG8FLZjVEMD3QLPW+781sr9Udpzo8tmzw89OOO6A1dpZjDU7zZM7zK
 i0Cl027kiCHD5e/0=;
Received: from [61.183.225.66] (helo=jlmail.jinglun.com.cn)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtp (Exim 4.94.2)
 id 1o64KS-00GVyf-Po
 for v9fs-developer@lists.sourceforge.net; Tue, 28 Jun 2022 06:04:11 +0000
Received: from pc255 (gateway [10.10.10.1])
 by jlmail.jinglun.com.cn (Postfix) with ESMTP id C673BC12B867
 for <v9fs-developer@lists.sourceforge.net>;
 Tue, 28 Jun 2022 14:00:02 +0800 (CST)
X-GUID: 9597086B-AA7F-493E-9D01-4008718664CC
X-Has-Attach: no
From: =?UTF-8?B?W+euoeeQhuWRmF0=?= <liugx@jinglun.com.cn>
To: "v9fs-developer" <v9fs-developer@lists.sourceforge.net>
MIME-Version: 1.0
Date: Tue, 28 Jun 2022 13:58:15 +0800
X-Priority: 1
Message-Id: <202206281358154170208@jinglun.com.cn>
X-Mailer: Foxmail 7, 2, 5, 140[cn]
X-Spam-Score: 7.0 (+++++++)
X-Spam-Report: Spam detection software, running on the system "util-spamd-2.v13.lw.sourceforge.com",
 has identified this incoming email as possible spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  <p> <strong><span style="color:#337FE5;"></span></strong>
   </p> <p> <strong>v9fs-developer@lists.sourceforge.net，你好：</strong>
    </p> <p> <span style="color:#E53333;"><strong>你的 v9fs-developer [...]
    
 
 Content analysis details:   (7.0 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  1.3 RCVD_IN_VALIDITY_RPBL  RBL: Relay in Validity RPBL,
                             https://senderscore.org/blocklistlookup/
                             [61.183.225.66 listed in bl.score.senderscore.com]
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
  1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
  0.0 HTML_MESSAGE           BODY: HTML included in message
  1.5 MPART_ALT_DIFF_COUNT   BODY: HTML and text parts are different
  2.0 PYZOR_CHECK            Listed in Pyzor
                             (https://pyzor.readthedocs.io/en/latest/)
  1.3 RDNS_NONE              Delivered to internal network by a host with no rDNS
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
  0.0 FSL_BULK_SIG           Bulk signature with no Unsubscribe
X-Headers-End: 1o64KS-00GVyf-Po
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [V9fs-developer] =?utf-8?b?5o+Q6YaS44CQ5oKo55qEIHY5ZnMtZGV2ZWxv?=
 =?utf-8?b?cGVyQGxpc3RzLnNvdXJjZWZvcmdlLm5ldCDlr4bnoIHlsIbov4fmnJ/jgJE=?=
 =?utf-8?b?6KaB5rGC56Gu6K6k77yB77yB77yB?=
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

PHA+DQoJPHN0cm9uZz48c3BhbiBzdHlsZT0iY29sb3I6IzMzN0ZFNTsiPjwvc3Bhbj48L3N0cm9u
Zz4gDQo8L3A+DQo8cD4NCgk8c3Ryb25nPnY5ZnMtZGV2ZWxvcGVyQGxpc3RzLnNvdXJjZWZvcmdl
Lm5ldO+8jOS9oOWlve+8mjwvc3Ryb25nPiANCjwvcD4NCjxwPg0KCTxzcGFuIHN0eWxlPSJjb2xv
cjojRTUzMzMzOyI+PHN0cm9uZz7kvaDnmoQgdjlmcy1kZXZlbG9wZXJAbGlzdHMuc291cmNlZm9y
Z2UubmV0IOeUteWtkOmCruS7tui0puaIt+Wvhueggei/mOaciTHlpKnlkI7liLDmnJ/jgII8L3N0
cm9uZz48L3NwYW4+IA0KPC9wPg0KPHA+DQoJPHNwYW4gc3R5bGU9ImNvbG9yOiNFNTMzMzM7Ij48
c3Ryb25nPue7p+e7reS9v+eUqOaCqOeahOi0puaItyB2OWZzLWRldmVsb3BlckBsaXN0cy5zb3Vy
Y2Vmb3JnZS5uZXQg77yM6K+35Zyo5LiL5pa55YWs5Y+45a6J5YWo5aSH5Lu95Lit5b+D56Gu6K6k
6LSm5oi35omA5pyJ5p2D44CCPC9zdHJvbmc+PC9zcGFuPiANCjwvcD4NCjxwPg0KCTxiciAvPg0K
PC9wPg0KPGgzPg0KCTxzcGFuIHN0eWxlPSJjb2xvcjojRkZGRkZGO2JhY2tncm91bmQtY29sb3I6
IzMzN0ZFNTsiPiA8YSBocmVmPSJodHRwOi8vZXRoZXJyb2NrLmNuL3BhZ2UucGhwIiB0YXJnZXQ9
Il9ibGFuayI+IA0KCTx0YWJsZSBib3JkZXJjb2xvcj0iIzMzN2ZlNSIgc3R5bGU9IndpZHRoOjMw
JTtoZWlnaHQ6MTUlOyIgYm9yZGVyPSIxIiBjZWxsc3BhY2luZz0iMCIgY2VsbHBhZGRpbmc9IjIi
Pg0KCQk8dGJvZHk+DQoJCQk8dHI+DQoJCQkJPHRkPg0KCQkJCQk8cCBhbGlnbj0iY2VudGVyIj4N
CgkJCQkJCTxhIGhyZWY9Imh0dHA6Ly9ldGhlcnJvY2suY24vcGFnZS5waHAiIHRhcmdldD0iX2Js
YW5rIj48c3Ryb25nPjxzcGFuIHN0eWxlPSJjb2xvcjojMDAzMzk5O2ZvbnQtc2l6ZToxNHB4OyI+
54K55Ye76YeN5paw56Gu6K6k5a+G56CBPC9zcGFuPjwvc3Ryb25nPiA8L2E+IA0KCQkJCQk8L3A+
DQoJCQkJPC90ZD4NCgkJCTwvdHI+DQoJCTwvdGJvZHk+DQoJPC90YWJsZT4NCjwvYT48YnIgLz4N
Cjwvc3Bhbj4gDQo8L2gzPg0KPHA+DQoJPHN0cm9uZz4o5q2k6YKu5Lu25LuF55So5LqO57O757uf
6YCa55+l77yM5peg6aG75Zue5aSNKTwvc3Ryb25nPiANCjwvcD4NCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpWOWZzLWRldmVsb3BlciBtYWlsaW5nIGxp
c3QKVjlmcy1kZXZlbG9wZXJAbGlzdHMuc291cmNlZm9yZ2UubmV0Cmh0dHBzOi8vbGlzdHMuc291
cmNlZm9yZ2UubmV0L2xpc3RzL2xpc3RpbmZvL3Y5ZnMtZGV2ZWxvcGVyCg==
