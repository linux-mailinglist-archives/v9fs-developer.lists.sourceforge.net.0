Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 432CC95C3BB
	for <lists+v9fs-developer@lfdr.de>; Fri, 23 Aug 2024 05:31:54 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1shL1k-0006Tq-GV;
	Fri, 23 Aug 2024 03:31:51 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <cat7_cable@vip.163.com>) id 1shL1f-0006Te-8m
 for v9fs-developer@lists.sourceforge.net;
 Fri, 23 Aug 2024 03:31:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-ID:MIME-Version:Content-Type:Subject:To:
 From:Date:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=qmMdtNKp8Jhs/9Nz1dawzN2oYLLKG/hwrycxwwLjZ6o=; b=W+V5Rk+SbTvcY6PjN2xyw8xbaZ
 0ABFASl5CjEgzije696z1ymd7TGSMFRfjwkSXTtpw5k/ZjbIzyOMvZ4QBr+fLG/HhOXiELTZc8ySQ
 g7BB6vy8Y9w0NcjMvjVnuBD5JwPQivlVQ1FW6Tmhcbj+FsqYHL3CkELNMzbyrp0BBOg0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-ID:MIME-Version:Content-Type:Subject:To:From:Date:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=qmMdtNKp8Jhs/9Nz1dawzN2oYLLKG/hwrycxwwLjZ6o=; b=M
 TiSf0fPb+55C8hztOcqQWWW9+x4utNXSCeEkzNgIlgHrXTU5S0iKF/IKsq334f7OO3hDW9/po81+h
 3Des9/XyZ+nkXgLTngIE28w1/bTikFFKVrZxQaib5QcEn6/9qdRuQ54B6kDn1VkIvKvQ7tb6bNKGY
 mRq5J/fY/RfOXPmA=;
Received: from mail-proxy50253.vip.163.com ([45.254.50.253])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtp (Exim 4.95)
 id 1shL1c-0003rM-Il for v9fs-developer@lists.sourceforge.net;
 Fri, 23 Aug 2024 03:31:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=vip.163.com; s=s110527; h=Date:From:Subject:Content-Type:
 MIME-Version:Message-ID; bh=qmMdtNKp8Jhs/9Nz1dawzN2oYLLKG/hwrycx
 wwLjZ6o=; b=cx1ixc9yKaC7rxJ7xDqja4x0kofjzEspSXwczVfweJKhk0xRRWd6
 JHNPqWlUC4YuZy9HBgnx/Iwl2rJnl64sboHQO9dN7Z3RnN3zIrCEbimrsJ66pFum
 NhByKcqXlza87/LQT4zeJd3l4/JJbIgQXnhgKd/N3lEvd6sDb1PYf4c=
Received: from localhost (unknown [127.0.0.1])
 by gzsmtp1 (Coremail) with SMTP id TSWEB_0000000000004BD466C7E1B0;
 Fri, 23 Aug 2024 09:11:12 +0800 (CST)
Received: from cat7_cable$vip.163.com ( [39.185.218.63] ) by
 ajax-webmail-wmsvr-207-13 (Coremail) ; Wed, 21 Aug 2024 11:23:59 +0800
 (CST)
X-Originating-IP: [39.185.218.63]
Date: Fri, 23 Aug 2024 09:11:00 +0800 (CST)
From: "Cat5E CAT6 CAT7 Cable" <cat7_cable@vip.163.com>
To: v9fs-developer@lists.sourceforge.net
X-Priority: 3
X-Mailer: Coremail Webmail Server Version XT5.0.14 build 20230109(dcb5de15)
 Copyright (c) 2002-2024 www.mailtech.cn 163vip
X-CM-CTRLMSGS: 6oE1PHRyYWNlS2V5PXByZV82MmM0OWVlZmFjZTY2Nzk5ZDE3ODRkNzFmYTE1M
 DEzNw==
X-NTES-SC: AL_Qu2ZBv6av04o7ymQZ+kfm0oageo+WMO2svov3IBWOpF8jBDk+iwSUHJONkPPwduoAS+pjBWaSClRxPtYYplDZqUnL64lhmODrztFG8uHuSgZBw==
MIME-Version: 1.0
Message-ID: <6692ba75.25f9.19172f67478.Coremail.cat7_cable@vip.163.com>
X-Coremail-Locale: zh_CN
X-CM-TRANSID: Ac8vCgCX3o_i4cdmAyEQAg--.42261W
X-CM-SenderInfo: 5fdwlsxfdezvg6yl1hqrwthudrp/1tbiBRFCz2aRAo1R-AAGsK
X-Coremail-Antispam: 1U5529EdanIXcx71UUUUU7vcSsGvfC2KfnxnUU==
X-Spam-Score: 6.3 (++++++)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has identified this incoming email as possible spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hello Manager,
 Discover the ultimate solution for your networking
 challenges with our high-quality CAT5E CAT6 C AT6A CAT7 CAT8 patch cords
 and network cables. Each cable is a testament to our commitment to quality,
 [...] Content analysis details:   (6.3 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: loli.net]
 0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE:
 The query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [45.254.50.253 listed in sa-accredit.habeas.com]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [45.254.50.253 listed in bl.score.senderscore.com]
 0.3 RCVD_IN_MSPIKE_L3      RBL: Low reputation (-3)
 [45.254.50.253 listed in bl.mailspike.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [cat7_cable[at]vip.163.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 HTML_MESSAGE           BODY: HTML included in message
 1.0 HTML_IMAGE_ONLY_16     BODY: HTML: images with 1200-1600 bytes of
 words
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 5.0 RCVD_IN_MSPIKE_BL      Mailspike blocklisted
 0.0 T_REMOTE_IMAGE         Message contains an external image
X-Headers-End: 1shL1c-0003rM-Il
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [V9fs-developer] Connect with Confidence: Exclusive Offer Inside!
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
Content-Type: text/plain; charset="gbk"
Content-Transfer-Encoding: base64
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

SGVsbG8gTWFuYWdlciwKCgoKCkRpc2NvdmVyIHRoZSB1bHRpbWF0ZSBzb2x1dGlvbiBmb3IgeW91
ciBuZXR3b3JraW5nIGNoYWxsZW5nZXMgd2l0aCBvdXIgaGlnaC1xdWFsaXR5IENBVDVFIENBVDYg
QyBBVDZBIENBVDcgQ0FUOCBwYXRjaCBjb3JkcyBhbmQgbmV0d29yayBjYWJsZXMuIEVhY2ggY2Fi
bGUgaXMgYSB0ZXN0YW1lbnQgdG8gb3VyIGNvbW1pdG1lbnQgdG8gcXVhbGl0eSwgbWVldGluZyBy
aWdvcm91cyBpbnRlcm5hdGlvbmFsIHN0YW5kYXJkcy4KCgoKCkZvciBhIGxpbWl0ZWQgdGltZSwg
d2Whr3JlIG9mZmVyaW5nIGFuIGV4Y2x1c2l2ZSBkaXNjb3VudCBvbiBidWxrIG9yZGVycy4gSW50
ZXJlc3RlZD8gU2ltcGx5IHJlc3BvbmQgd2l0aCChsE9LobEgdG8gbGVhcm4gbW9yZSBhbmQgcmVj
ZWl2ZSB5b3VyIGZyZWUgc2FtcGxlIGtpdC4KCldhcm0gcmVnYXJkcywgCkphY2sKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KVjlmcy1kZXZlbG9wZXIgbWFp
bGluZyBsaXN0ClY5ZnMtZGV2ZWxvcGVyQGxpc3RzLnNvdXJjZWZvcmdlLm5ldApodHRwczovL2xp
c3RzLnNvdXJjZWZvcmdlLm5ldC9saXN0cy9saXN0aW5mby92OWZzLWRldmVsb3Blcgo=
