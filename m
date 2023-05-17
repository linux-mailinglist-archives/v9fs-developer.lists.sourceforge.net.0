Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 13E1E705E13
	for <lists+v9fs-developer@lfdr.de>; Wed, 17 May 2023 05:26:24 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1pz7nx-0005UG-Ll;
	Wed, 17 May 2023 03:26:21 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <cat6a_cable@vip.163.com>) id 1pz7nw-0005UA-Hv
 for v9fs-developer@lists.sourceforge.net;
 Wed, 17 May 2023 03:26:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-ID:MIME-Version:Content-Type:Subject:To:
 From:Date:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=JR8NVscBQ207ywb1EMvgjgb7VFhQCQrepFwhuvaRb1M=; b=derPG/fczQdbaomq6PX9fqY4Sh
 rU13W7j4QrZFng75n8vkRr4BZ3NCgdsNzlvJYb6MteWed1a3RFM25j0AcA3EBHTi+8QQsFwXzcXLu
 D46YfDja349IViKheXtZgj48SIdvDMHOakmX0czU8//e+40j+6M/7uXvZ5bevQN3IXcI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-ID:MIME-Version:Content-Type:Subject:To:From:Date:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=JR8NVscBQ207ywb1EMvgjgb7VFhQCQrepFwhuvaRb1M=; b=Y
 1zDqQ3xP60RkqPO2kN6+/AD3bqgpqZ61nGrXWExdV5mUljD5AtlLm8nrUve+WagOqkGGIWWO/ccm+
 FNPnn61dBy15XFMvTnelEBzRPldPnIzL1bCfFMwBA1BLJ6788MTJqeTsvG/ogE+7c1OC1RzZcj3Go
 AFJeGFT9a9NAWH00=;
Received: from proxy85-166.mail.163.com ([123.58.178.166])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtp (Exim 4.95)
 id 1pz7nv-00ASNv-7p for v9fs-developer@lists.sourceforge.net;
 Wed, 17 May 2023 03:26:20 +0000
Received: from localhost (unknown [127.0.0.1])
 by wmsvr4 (Coremail) with SMTP id TSWEB_000000000000568B6464486A;
 Wed, 17 May 2023 11:22:18 +0800 (CST)
Received: from cat6a_cable$vip.163.com ( [122.247.49.36] ) by
 ajax-webmail-wmsvr1 (Coremail) ; Mon, 15 May 2023 20:44:26 +0800 (CST)
X-Originating-IP: [122.247.49.36]
Date: Wed, 17 May 2023 11:22:00 +0800 (CST)
From: "CAT5E,CAT6,CAT6A,CAT7 Cable" <cat6a_cable@vip.163.com>
To: v9fs-developer@lists.sourceforge.net
X-Priority: 3
X-Mailer: Coremail Webmail Server Version XT5.0.14 build 20230109(dcb5de15)
 Copyright (c) 2002-2023 www.mailtech.cn 163vip
X-NTES-SC: AL_QuyTBv2eu04t4CWfbekXmU4Xgu08WsG5vf4h2oFUN500sinG4QcLfGZPM1jr0t6zCyaFqQGHUhpzxfpGbI5CW4zhDi/J7iUaH5ON1HRW9NVj
MIME-Version: 1.0
Message-ID: <5378654f.4c46.1881f70ce59.Coremail.cat6a_cable@vip.163.com>
X-Coremail-Locale: zh_CN
X-CM-TRANSID: rmZ4CgCXEV2SSGRkhqcyAA--.35219W
X-CM-SenderInfo: xfdwlthbfduznh6yx1iorwjhhfrp/1tbiJxlwr16YIrQ-GgAIsc
X-Coremail-Antispam: 1U5529EdanIXcx71UUUUU7vcSsGvfC2KfnxnUU==
X-Spam-Score: 2.1 (++)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Dear Customers,
 Glad to contact you. Will you interested Patch
 cables: CAT.5E CAT.6 CAT.6A CAT.7 Patch Cord If you are interested our cable,
 please contact us. 
 Content analysis details:   (2.1 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 1.0 RCVD_IN_UCE1           RBL: IP Listed in UCEPROTECT Level 1
 [123.58.178.166 listed in dnsbl-1.uceprotect.net]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [123.58.178.166 listed in wl.mailspike.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [cat6a_cable[at]vip.163.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 1.0 HTML_IMAGE_ONLY_16     BODY: HTML: images with 1200-1600 bytes of
 words 0.0 HTML_MESSAGE           BODY: HTML included in message
 0.0 T_REMOTE_IMAGE         Message contains an external image
X-Headers-End: 1pz7nv-00ASNv-7p
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [V9fs-developer] Category Cable-CAT.5E CAT.6 CAT.6A CAT.7 CAT.8
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Dear Customers,


Glad to contact you.
Will you interested Patch cables: CAT.5E CAT.6 CAT.6A CAT.7 Patch Cord




If you are interested our cable,please contact us.


Thank you 
Jack
_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
