Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E6FF550902
	for <lists+v9fs-developer@lfdr.de>; Sun, 19 Jun 2022 08:44:52 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1o2ofv-0006yp-2e; Sun, 19 Jun 2022 06:44:47 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <admin@dlpar.com.cn>) id 1o2oft-0006yj-NQ
 for v9fs-developer@lists.sourceforge.net; Sun, 19 Jun 2022 06:44:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Date:Subject:To:From:
 Message-ID:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=fgNdrvnbqguWs8jDMr2zFDGlSR+34I1D7dHHgt2bi0Y=; b=Eo9DcPoAHz+beqshycMi/Vzty3
 NPCaz7n71aaiKLM44qbdFo1p9XNZdNgj1cykeCDZY1hd5wRx1kyE7pQuI0XDcBLqM9bDpD8X41y2s
 H4TyLdSZheCOHf1c2f3JKb2Flj7SHvCzqoFBTFLZUUVOc6h9lHiiIbIIwFQHtBPQnHzQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Date:Subject:To:From:Message-ID:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=fgNdrvnbqguWs8jDMr2zFDGlSR+34I1D7dHHgt2bi0Y=; b=d
 PXW/yUL5fzLyGiDqhsD3hK1Gm2sRj+l/x3qIZa1rF5pOAWKtr4kNYX5Ts4F42ZTbvl/bHzPN6v5rs
 7MBFkmKR2A/b5GoqX4d02piKuGZX/f8B9YvLwE3ax6AIIgGARvEVVGMZK+AGav8fSIop0xQ5/k13L
 hs8HOjoHW8619Yh0=;
Received: from [203.138.99.110] (helo=dlpar.com.cn)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1o2ofq-0076Hs-Ig
 for v9fs-developer@lists.sourceforge.net; Sun, 19 Jun 2022 06:44:46 +0000
Received: from juvvudxsj (unknown [137.220.242.51])
 by dlpar.com.cn (Postfix) with ESMTPA id D1C1C38B938
 for <v9fs-developer@lists.sourceforge.net>;
 Sun, 19 Jun 2022 14:44:06 +0800 (CST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dlpar.com.cn;
 s=default; t=1655621046;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type;
 bh=fgNdrvnbqguWs8jDMr2zFDGlSR+34I1D7dHHgt2bi0Y=;
 b=meWzufxAsSJPMsrS69mISXPd1TxL9Rc6OQlcMHibedIH6yJ0OSkma7QDbxmIbrXGj5mOdI
 DwnWsgoOHO2dTGvua8J3g+an594gj81PaV0YMTUcVmzu53uF/iYHjghPF5qYEQzTnJ/9nd
 eMsK31+Jm2Xajx4yMVCpwAFWZXwiydc=
Message-ID: <0AD23BE5FE0CCF2EFC0E157FE82EE55B@juvvudxsj>
To: v9fs-developer <v9fs-developer@lists.sourceforge.net>
Date: Sun, 19 Jun 2022 14:43:57 +0800
MIME-Version: 1.0
X-Priority: 3
X-Mailer: Supmailer 37.0.2
X-Spam: Yes
X-Spam-Score: 5.8 (+++++)
X-Spam-Report: Spam detection software, running on the system "util-spamd-2.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  v9fs-developer　様 「三越伊勢丹WEB会員」のアカウントは終了いたしますのでお知らせいたします。
    カード番号情報を確認してください。 
 
 Content analysis details:   (5.8 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  1.7 URIBL_BLACK            Contains an URL listed in the URIBL blacklist
                             [URIs: mistoeras--co-jp.top]
  1.0 RCVD_IN_UCE1           RBL: IP Listed in UCEPROTECT Level 1
                             [203.138.99.110 listed in dnsbl-1.uceprotect.net]
  2.0 PDS_OTHER_BAD_TLD      Untrustworthy TLDs
                             [URI: www.mistoeras--co-jp.top (top)]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
  0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
  1.3 RDNS_NONE              Delivered to internal network by a host with no rDNS
X-Headers-End: 1o2ofq-0076Hs-Ig
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [V9fs-developer] =?utf-8?b?44CQ6YeN6KaB44Gq44GK55+l44KJ44Gb44CR?=
 =?utf-8?b?44Ki44Kr44Km44Oz44OI5L2/55So5Yi26ZmQ77yB?=
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
From: =?utf-8?B?5LiJ6LaK5LyK5Yui5Li544Kq44Oz44Op44Kk44Oz44K544OI44KiIOOAkOWFrOW8j+OAkQ==?=
 via V9fs-developer <v9fs-developer@lists.sourceforge.net>
Reply-To: =?utf-8?B?5LiJ6LaK5LyK5Yui5Li544Kq44Oz44Op44Kk44Oz44K544OI44KiIOOAkOWFrOW8j+OAkQ==?=
 <admin@dlpar.com.cn>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

DQp2OWZzLWRldmVsb3BlcuOAgOanmA0KDQrjgIzkuInotorkvIrli6LkuLlXRULkvJrlk6HjgI3j
ga7jgqLjgqvjgqbjg7Pjg4jjga/ntYLkuobjgYTjgZ/jgZfjgb7jgZnjga7jgafjgYrnn6Xjgonj
gZvjgYTjgZ/jgZfjgb7jgZnjgIINCg0K44Kr44O844OJ55Wq5Y+35oOF5aCx44KS56K66KqN44GX
44Gm44GP44Gg44GV44GE44CCDQoNCg0KDQogDQoNCmh0dHBzOi8vd3d3Lm1pc3RvZXJhcy0tY28t
anAudG9wLw0KDQrigLvmnKzjg6Hjg7zjg6vjga/phY3kv6HlsILnlKjjg6Hjg7zjg6vjgqLjg4nj
g6zjgrnjgYvjgonphY3kv6HjgZfjgabjgYrjgorjgb7jgZnjgIINCuOAgOOBlOi/lOS/oeOBhOOB
n+OBoOOBhOOBpuOCguWvvuW/nOOBhOOBn+OBl+OBi+OBreOBvuOBmeOBruOBp+OAgeS6iOOCgeOB
lOS6huaJv+OBj+OBoOOBleOBhOOAgg0K4oC75pys44Oh44O844Or44Gv6YeN6KaB44Gq44GK55+l
44KJ44Gb44Gu44Gf44KB44CB44Oh44O844Or6YWN5L+h5YGc5q2i6Kit5a6a44KS44GV44KM44Gm
44GE44KL44GK5a6i44GV44G+44Gr44KC6YWN5L+h44GX44Gm44GK44KK44G+44GZ44CCDQoNCuag
quW8j+S8muekvuOAgOS4iei2iuS8iuWLouS4uQ0KKioqKioqKioqKioqKioqKioqKioqKioqKioq
KioqKioqKioNCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpWOWZzLWRldmVsb3BlciBtYWlsaW5nIGxpc3QKVjlmcy1kZXZlbG9wZXJAbGlzdHMuc291cmNl
Zm9yZ2UubmV0Cmh0dHBzOi8vbGlzdHMuc291cmNlZm9yZ2UubmV0L2xpc3RzL2xpc3RpbmZvL3Y5
ZnMtZGV2ZWxvcGVyCg==
