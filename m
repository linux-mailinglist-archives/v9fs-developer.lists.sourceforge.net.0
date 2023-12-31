Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id F112F8209A8
	for <lists+v9fs-developer@lfdr.de>; Sun, 31 Dec 2023 05:03:42 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1rJn35-0003hH-PT;
	Sun, 31 Dec 2023 04:03:39 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <cat6_cable@vip.163.com>) id 1rJn34-0003hB-DZ
 for v9fs-developer@lists.sourceforge.net;
 Sun, 31 Dec 2023 04:03:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-ID:MIME-Version:Content-Type:Subject:To:
 From:Date:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=YrutZoBJ/cDxUZbwMZUZdyMnxokARD2SYr89/whdSKM=; b=LkpC2ZS72LYLZR2p/ihd3PtSFQ
 LtWJT3t9jLvx4E2KMTvs6SjWnEo9VRYDM0xBz5gRnCaukxHmpvysWuMWPxIKCKjJ/rUqTe4Iyd1r6
 1lznLnObK2vqsH5I9E1EyxTM39HDEH9Dm+/D5WZsH/FVaWB7CHARYtYwSUYwUVY2THd8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-ID:MIME-Version:Content-Type:Subject:To:From:Date:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=YrutZoBJ/cDxUZbwMZUZdyMnxokARD2SYr89/whdSKM=; b=Z
 0+44rDBVExl7RaxSel9MOtuVozXB0cAKuPRDyPMNwhKJFoxmp3X4btltwhC4QdijtSgkSmBpxOyJ3
 NyHuMj5DWLQnSCrn7gLm4Bieu7wuk+hncYZ9qCuA7MfzvD9vAmpOih8F3/0IA7EOVuBfKSsVqBL+i
 yyMlsRaVBxpVoPsY=;
Received: from proxy85-167.mail.163.com ([123.58.178.167])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtp (Exim 4.95)
 id 1rJn32-0000HW-9U for v9fs-developer@lists.sourceforge.net;
 Sun, 31 Dec 2023 04:03:38 +0000
Received: from localhost (unknown [127.0.0.1])
 by wmsvr4 (Coremail) with SMTP id TSWEB_0000000000000A826590E086;
 Sun, 31 Dec 2023 11:31:18 +0800 (CST)
Received: from cat6_cable$vip.163.com ( [39.185.215.204] ) by
 ajax-webmail-wmsvr3 (Coremail) ; Tue, 19 Dec 2023 17:22:34 +0800 (CST)
X-Originating-IP: [39.185.215.204]
Date: Sun, 31 Dec 2023 11:31:00 +0800 (CST)
From: "CAT6 CAT6A CAT7 Cable" <cat6_cable@vip.163.com>
To: v9fs-developer@lists.sourceforge.net
X-Priority: 3
X-Mailer: Coremail Webmail Server Version XT5.0.14 build 20230109(dcb5de15)
 Copyright (c) 2002-2023 www.mailtech.cn 163vip
X-NTES-SC: AL_Qu2bAPWcuE8u4iWfbekXkkwbhOY3X8C2u/kv2YRQO500tCnpyi4fXGV8L3//6O+GCyewqgK+cTNf78RIZYRZWLqOVufF464ldoIe85kx9wDg
MIME-Version: 1.0
Message-ID: <19d77a9c.31aa.18c816255d8.Coremail.cat6_cable@vip.163.com>
X-Coremail-Locale: zh_CN
X-CM-TRANSID: rmZ4CgAXTOW34JBl1MobAA--.60517W
X-CM-SenderInfo: xfdwlsxfdezvg6yl1hqrwthudrp/1tbiJApLAl6YKZKKDAAOsS
X-Coremail-Antispam: 1U5529EdanIXcx71UUUUU7vcSsGvfC2KfnxnUU==
X-Spam-Score: 2.3 (++)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Dear Customer, From 24AWG to 32AWG, we supply rotating cables
 suited for every install. Free samples exhibit flexibility that accelerates
 deployment. Save time onsite by equipping technicians with our complete cable
 line. Content analysis details:   (2.3 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 1.0 RCVD_IN_UCE1           RBL: IP Listed in UCEPROTECT Level 1
 [123.58.178.167 listed in dnsbl-1.uceprotect.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [cat6_cable[at]vip.163.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 1.3 HTML_IMAGE_ONLY_24     BODY: HTML: images with 2000-2400 bytes of
 words 0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 0.0 T_REMOTE_IMAGE         Message contains an external image
X-Headers-End: 1rJn32-0000HW-9U
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [V9fs-developer] Outfit Jobs with Our Full Range of Rotation Cables
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

Dear Customer,


From 24AWG to 32AWG, we supply rotating cables suited for every install.


Free samples exhibit flexibility that accelerates deployment. Save time onsite by equipping technicians with our complete cable line.


Let's connect!


Thank you 
Jack
_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
