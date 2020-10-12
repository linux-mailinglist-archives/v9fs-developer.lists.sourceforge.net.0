Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id DB8C028ACC8
	for <lists+v9fs-developer@lfdr.de>; Mon, 12 Oct 2020 06:24:51 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1kRpOD-0003J5-Jr; Mon, 12 Oct 2020 04:24:49 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <anant.thazhemadam@gmail.com>) id 1kRpOA-0003Iw-AK
 for v9fs-developer@lists.sourceforge.net; Mon, 12 Oct 2020 04:24:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=tGGjPH4vRcWgaIyBvIwbuR8WDhMxPW1JkVrUAJH4wsw=; b=ZH2n2QsoQNMQ7Fsn+3ILpDmTCE
 sLBKwGYpqPzj8RB1HiuQ6tgHhPcE3XMRFpZP9hBOBxRuJNmqaTytxE2vjOIB8VyNMSDMn4QXSFu2p
 +FWFwsHMYSHIqX2e6lD1kzXdl3RUht3/PY1txRvx3NqDJcUS+MHY8azVtA8jVAPC2SlY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=tGGjPH4vRcWgaIyBvIwbuR8WDhMxPW1JkVrUAJH4wsw=; b=M
 A/trohCTo9wDAwgbaohvu7msMSqUHoXECjdrb5tWkyGk5vfthlQNBKpWkrB1GFRoGvsnrArq1rClK
 4ODbIU4Tnv8IqdsX5FC5tYLAWFCxdYvTwmedGg/TR2M0CP6aULbGoFPBo/XiEPNKr+vHrKcdgXQDv
 8PVvZm0DlKxv0uGo=;
Received: from mail-pf1-f193.google.com ([209.85.210.193])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1kRpNs-00Bbzo-Qc
 for v9fs-developer@lists.sourceforge.net; Mon, 12 Oct 2020 04:24:45 +0000
Received: by mail-pf1-f193.google.com with SMTP id n14so12365627pff.6
 for <v9fs-developer@lists.sourceforge.net>;
 Sun, 11 Oct 2020 21:24:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=tGGjPH4vRcWgaIyBvIwbuR8WDhMxPW1JkVrUAJH4wsw=;
 b=HVFLCVrJ9e/R18ofzZLeou3umzwT5fdPgRN+4LEas2eE+jBqseaUGv3FhBZk+khqI+
 5mZoEdAKnTgukkl0I4m5od9383+CT8FO/EW/+8PrsIx7gScnYEWOi7VM11l5TpIfHXYW
 viON4q9nrl+25CgwiOMJPUxxnb0fI8/LN+UQNLiclRpHfAjNZtm3b1/ssZd4l4VkRfSd
 6BQ1gpvAUfsndFgH+cFETq+OsAPplgexzPWrgEcv8vgke+38nK7Q7Db65iSFnYIP0ZpZ
 hcTynQ4e4vIH0HvGOKjR4A/ddjHJJDM+n5GiP23JNcACLzMQS9/3N+RuyHCH3TpSd+Wy
 5Lxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=tGGjPH4vRcWgaIyBvIwbuR8WDhMxPW1JkVrUAJH4wsw=;
 b=s35zZJ1bR3SOpFtr9UqV9mG3yvI2DFu3ZLL7mzipSnl8qLXWKk7CzDXBVnutgALbXh
 gyP+iQygJ1h6Nrv8OT9/E53INQ1uu8g29Bl2PV6hl4W3zB5CtsdN/8R2G4Dy9scdneSp
 XgGJBXdc59tkRX0myowf/ditVbWnrRleqVb3Up4xktuWpfQUQgSGIHFpTA76BjMlKWql
 LHhv2y4ocO1ZQL434PQHfyz5jyQus5B0/fSkby7hM+4L312gXbOCZF4PnmMrXCwF58uL
 u3dETzdFurnTefeKnOEIFD3Pa/4xEjPTtOENwl3SDQFGgC5fFAivmgrS7hZ4C/S0T+xC
 vvzw==
X-Gm-Message-State: AOAM531ENvRHguQC1ZnRIkRoqn0KaHVPs68S9BiCmvRswXqq5HJ7TZZ0
 Ui4jsG9ZMEIP6giC/si2Prc=
X-Google-Smtp-Source: ABdhPJzZRPX105i1KB5YPC6MVCCPOxq7CKb10XSNAcjI+7RWRlEQZdWUkpBRYMRarueOXCGcZlpXdQ==
X-Received: by 2002:a65:6858:: with SMTP id q24mr11849299pgt.10.1602476663055; 
 Sun, 11 Oct 2020 21:24:23 -0700 (PDT)
Received: from localhost.localdomain ([49.207.200.2])
 by smtp.gmail.com with ESMTPSA id ck21sm21348723pjb.56.2020.10.11.21.24.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 11 Oct 2020 21:24:22 -0700 (PDT)
From: Anant Thazhemadam <anant.thazhemadam@gmail.com>
To: ericvh@gmail.com, lucho@ionkov.net, asmadeus@codewreck.org,
 davem@davemloft.net, kuba@kernel.org
Date: Mon, 12 Oct 2020 09:54:04 +0530
Message-Id: <20201012042404.2508-1-anant.thazhemadam@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (anant.thazhemadam[at]gmail.com)
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.193 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.210.193 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1kRpNs-00Bbzo-Qc
Subject: [V9fs-developer] [PATCH net] net: 9p: initialize
 sun_server.sun_path to have addr's value only when addr is valid
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
Cc: Anant Thazhemadam <anant.thazhemadam@gmail.com>,
 syzbot+75d51fe5bf4ebe988518@syzkaller.appspotmail.com, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, v9fs-developer@lists.sourceforge.net,
 linux-kernel-mentees@lists.linuxfoundation.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

In p9_fd_create_unix, checking is performed to see if the addr (passed
as an argument) is NULL or not.
However, no check is performed to see if addr is a valid address, i.e.,
it doesn't entirely consist of only 0's.
The initialization of sun_server.sun_path to be equal to this faulty
addr value leads to an uninitialized variable, as detected by KMSAN.
Checking for this (faulty addr) and returning a negative error number
appropriately, resolves this issue.

Reported-by: syzbot+75d51fe5bf4ebe988518@syzkaller.appspotmail.com
Tested-by: syzbot+75d51fe5bf4ebe988518@syzkaller.appspotmail.com
Signed-off-by: Anant Thazhemadam <anant.thazhemadam@gmail.com>
---
 net/9p/trans_fd.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/net/9p/trans_fd.c b/net/9p/trans_fd.c
index c0762a302162..8f528e783a6c 100644
--- a/net/9p/trans_fd.c
+++ b/net/9p/trans_fd.c
@@ -1023,7 +1023,7 @@ p9_fd_create_unix(struct p9_client *client, const char *addr, char *args)
 
 	csocket = NULL;
 
-	if (addr == NULL)
+	if (!addr || !strlen(addr))
 		return -EINVAL;
 
 	if (strlen(addr) >= UNIX_PATH_MAX) {
-- 
2.25.1



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
