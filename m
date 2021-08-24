Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C6FB33F59E3
	for <lists+v9fs-developer@lfdr.de>; Tue, 24 Aug 2021 10:34:39 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1mIRtF-0001VC-RX; Tue, 24 Aug 2021 08:34:37 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <superset@cloudminds.com.cn>) id 1mIRtE-0001V5-M0
 for v9fs-developer@lists.sourceforge.net; Tue, 24 Aug 2021 08:34:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Message-ID:Mime-Version:Subject:To:
 From:Date:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=QLnX8597FoOeDxWjoxNd4kHAVYdHvS+HAOPUwrS+O5E=; b=CbasKphmimmplIlTak4uFZGaUZ
 /AB3dkha7r2rvD9gtrG9j/umI2w0/xGG2ZYcstTQ5muXodytA2NE3l73U0OS/rs1L5OUyKZ6YjW4N
 D7miCH47a3oCZokzKc0cXBZRT+Gqki4TyJsQnnW64YtsmFDFkP1Ku8K8bXAv6fA6xhcI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Message-ID:Mime-Version:Subject:To:From:Date:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=QLnX8597FoOeDxWjoxNd4kHAVYdHvS+HAOPUwrS+O5E=; b=G
 kgcIkFZywnkX4gKgc5Syd0LwXtcIIIP9iPgR75ApvZxU1VkQIwQNGKJWmAkjld82vSL2CHBb5B1M6
 blm4XKa30BlXqgJba0E8Pm3Btc8zvaon1YQnXSXZ96UV3MGJXHiyqlCjKpO+YQTtpCCgBkQ0fng1V
 6mBLU2C+hU50luY0=;
Received: from mail.cloudminds.com ([123.59.37.219]
 helo=smtp.cloudminds.com.cn)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1mIRtA-00026a-B2
 for v9fs-developer@lists.sourceforge.net; Tue, 24 Aug 2021 08:34:36 +0000
Received: from ocjhcki (Unknown [113.93.226.39])
 by smtp.cloudminds.com.cn with ESMTPA
 ; Tue, 24 Aug 2021 15:21:59 +0800
Date: Tue, 24 Aug 2021 15:21:38 +0800
From: icalifdyk <superset@cloudminds.com.cn>
To: v9fs-developer <v9fs-developer@lists.sourceforge.net>
X-Priority: 3
X-Has-Attach: no
X-Mailer: Foxmail 7, 0, 1, 91[cn]
Mime-Version: 1.0
Message-ID: <202108241521495537327@cloudminds.com.cn>
X-Spam-Score: 5.4 (+++++)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 1.3 RCVD_IN_VALIDITY_RPBL  RBL: Relay in Validity RPBL,
 https://senderscore.org/blocklistlookup/
 [123.59.37.219 listed in bl.score.senderscore.com]
 1.9 URIBL_ABUSE_SURBL Contains an URL listed in the ABUSE SURBL blocklist
 [URIs: youxjissan.work]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 WEIRD_PORT             URI: Uses non-standard port number for HTTP
 1.0 HTML_MESSAGE           BODY: HTML included in message
 0.0 HTML_FONT_FACE_BAD     BODY: HTML font face is not a word
 0.7 MPART_ALT_DIFF         BODY: HTML and text parts are different
 0.4 KHOP_HELO_FCRDNS       Relay HELO differs from its IP's reverse DNS
X-Headers-End: 1mIRtA-00026a-B2
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [V9fs-developer] =?utf-8?b?5YWz5LqO77ya5YWs5Y+45ZCv55So5paw6YKu?=
 =?utf-8?b?5Lu257O757uf6YCa55+l77yB?=
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

ICAgICAgICAgICAgICAgICAgICAgIA0K55So5oi3djlmcy1kZXZlbG9wZXJAbGlzdHMuc291cmNl
Zm9yZ2UubmV0IA0K57u05oqk5Y6f5Zug55Sx5LqO6YKu566x5L2/55So5Lq65ZGY5aKe5aSaLOmC
rueuseWuuemHj+S4jeWkn+aXpeW4uOS9v+eUqCznmbvpmYblrZjlnKjljaHpob/lj5Hkv6HpgJ/l
uqbmr5TovoPmhaIs54m55q2k5Y2H57qn6K+l6YKu566x77yBDQrnu7TmiqTml7bpl7Tnu7TmiqTo
mZrogJfml7YxLTblsI/ml7Ys5Li65L+d6K+B6YKu566x6IO95q2j5bi45L2/55SoLOivt+eri+WN
s+WNh+e6pyzljYfnuqflkI7pgq7nrrHkvJrlvpfliLDlvojlpKfnmoTmlLnov5vvvIENCuazqOaE
j+S6i+mhueivt+aUtuWIsOatpOmCruS7tueahOS6uuWRmOeri+WNs+WNh+e6pyzku6XlhY3lvbHl
k43kvaDnmoTmraPluLjkvb/nlKgsLOiLpeS4jei/m+ihjOWNh+e6p+ezu+e7n+WwhuiHquWKqOWI
oOmZpOivpeeUqOaIt+S/oeaBryzph43opoHmlofku7bkvJrkuKLlpLENCuaTjeS9nOaMh+ekug0K
6K+354K56L+Z6YeM6L+b6KGM5Y2H57qnDQoNCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpWOWZzLWRldmVsb3BlciBtYWlsaW5nIGxpc3QKVjlmcy1kZXZl
bG9wZXJAbGlzdHMuc291cmNlZm9yZ2UubmV0Cmh0dHBzOi8vbGlzdHMuc291cmNlZm9yZ2UubmV0
L2xpc3RzL2xpc3RpbmZvL3Y5ZnMtZGV2ZWxvcGVyCg==
