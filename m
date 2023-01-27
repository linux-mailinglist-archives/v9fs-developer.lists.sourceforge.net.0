Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id DFC8367F11F
	for <lists+v9fs-developer@lfdr.de>; Fri, 27 Jan 2023 23:31:13 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1pLXFZ-0005tQ-0M;
	Fri, 27 Jan 2023 22:31:11 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <notice@webtrn.cn>) id 1pLXFV-0005tF-IZ
 for v9fs-developer@lists.sourceforge.net;
 Fri, 27 Jan 2023 22:31:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Message-ID:Date:Subject:
 To:From:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=f1mFj9qmumHAaNA+6mU1iU1FIzB293MnKkdqGz2aAUc=; b=SAMXgsCV5ehATimvSVzMb1Z4U5
 3wWVDBtJ8A56Sdf/bu/a+I64FtoCWULJ2YkMBkMbP22NXrWi4G/cmt71quFtNMUwIIB7bLqdFYJl0
 RHQGmLgFgqPT5IFZu0tGc+NOEnF/kU6oyF3IbZWZkN0osBcKF1/KjIkom373yUHvOR8M=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Message-ID:Date:Subject:To:From:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=f1mFj9qmumHAaNA+6mU1iU1FIzB293MnKkdqGz2aAUc=; b=F
 E4aDwHaHUnBjMd5baMOYTLz1zUs7T9ccoA3VWhHWc0jfyIbAZbW3A1QUXQ34JxwXucsCNkH/xEvC0
 ht1Fu2w+b19bJ9DNuHm26bEMqhNjhnBYh0mk4Uk86wzYk726iIMkngGQ40xUr+6TKQfYQABgJfTI9
 t16cgFiAy9CjFTKA=;
Received: from [210.14.133.66] (helo=mail.webtrn.cn)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtp (Exim 4.95)
 id 1pLXFP-000yr0-R1 for v9fs-developer@lists.sourceforge.net;
 Fri, 27 Jan 2023 22:31:06 +0000
Received: from ojd (unknown [113.123.0.81])
 by mail.webtrn.cn ((whatymail)) with ESMTPA id 5FB2E1933183
 for <v9fs-developer@lists.sourceforge.net>;
 Sat, 28 Jan 2023 06:28:42 +0800 (CST)
From: hqouvj <notice@webtrn.cn>
To: v9fs-developer <v9fs-developer@lists.sourceforge.net>
Date: Sat, 28 Jan 2023 06:29:31 +0800
Message-ID: <0016d37121fc$d4484684$0469066a$@ojd>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
X-Spam-Score: 1.8 (+)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Notice of safety certificate Dear user: [RECEIVER ADDRESS]
 To further enhance the security of the email system 
 Content analysis details:   (1.8 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.5 URI_NOVOWEL            URI: URI hostname has long non-vowel sequence
 0.0 HTML_MESSAGE           BODY: HTML included in message
 1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
X-Headers-End: 1pLXFP-000yr0-R1
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [V9fs-developer] =?utf-8?q?Update_result_notice=3A=EF=BC=9Av9fs-d?=
	=?utf-8?q?eveloper=40lists=2Esourceforge=2Enet?=
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net


Notice of safety certificate

Dear user: [RECEIVER ADDRESS]

To further enhance the security of the email system

Recently, our department has updated the security certificates of each email system.

Please move the new certificate in time,

All the e-mail accounts that hadn't updated the security certificate in time would be suspended from receiving and sending messages.

If they needed to recover, they had to apply for it through OA.

[Click to log in]

_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
