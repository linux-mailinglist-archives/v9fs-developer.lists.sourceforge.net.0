Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D41E69B6EC
	for <lists+v9fs-developer@lfdr.de>; Sat, 18 Feb 2023 01:34:38 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1pTBBV-0008Hg-SJ;
	Sat, 18 Feb 2023 00:34:37 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <ericvh@kernel.org>) id 1pTBBH-0008Gr-EX
 for v9fs-developer@lists.sourceforge.net;
 Sat, 18 Feb 2023 00:34:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=fljFV7VThIWvGg9YGEMXmL5GRBoFbMTuiom63QhKsw0=; b=bj0qGRJVSdBRI7YQQTj2dHDqA+
 kToBqlxN+wkbevl7umBCqlYtEMcHRY2QpwESM6ISxVpqwe7jBhzG4WRmDdZ/YdFYilDHCgCdop4Xe
 GFrZoBkvP3zqMKPNoBs6gTXE2X5uWMtiY0NAAojSfs70wwWoKFdizj/NrLVwWccvi//A=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=fljFV7VThIWvGg9YGEMXmL5GRBoFbMTuiom63QhKsw0=; b=JKd40VxunOWYuJIpH2bJTpzkAt
 Oot+8nBalz4OYMx8JIECFjycqRGbjEhtOPTJhB8Ee/EfThQ3WM24Pe6wtOa7SwBDzkBZ+9b7sdkG7
 3nt+7tg5Ki6fWERrujAym0DU33pBtfnpwh3yqCsRBASfcnCVrMEd1hvI7wOOKysV1lr8=;
Received: from ams.source.kernel.org ([145.40.68.75])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1pTBB2-0004Kj-Rm for v9fs-developer@lists.sourceforge.net;
 Sat, 18 Feb 2023 00:34:15 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id 874ABB82ED5;
 Sat, 18 Feb 2023 00:34:02 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 54E37C433D2;
 Sat, 18 Feb 2023 00:34:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1676680441;
 bh=cW3tqr7Wz1/+iCrGEv007ARmFZP9bjEOtTw2DUtSkXU=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=n66eBIPF5VOPlydJO6o1F9Id9ahHIQmnpN9qb9pfpbH2CclkG8oyade30qFmGYJHc
 IkNEcigIpm9Y/Zk6c0an3pmtrIf93u6e9mKMpaQ7ROqpkAN9p6+TWZxSOoGtn1GEsl
 qMARtGiDDlKjmJOUEqJtvKAjUahxqFbIHqf4kjlDvYueYDzZ5qqygu9fGUe1wobML8
 JaSTrVbi1pGfB2C8zeD9slAWsW39qcybUL1TwF8ZtrKB9WyIS2P9Sr3J0npQgsfUTH
 r2oG9P+csiuyYPLQKnAo0fwOg5jXFwYauD+0V5i7nALf/3S8dUGbE1BFAFyD1ysu5O
 X/SFmxVdZ2vGg==
From: Eric Van Hensbergen <ericvh@kernel.org>
To: v9fs-developer@lists.sourceforge.net, asmadeus@codewreck.org,
 rminnich@gmail.com, lucho@ionkov.net
Date: Sat, 18 Feb 2023 00:33:19 +0000
Message-Id: <20230218003323.2322580-8-ericvh@kernel.org>
X-Mailer: git-send-email 2.37.2
In-Reply-To: <20230218003323.2322580-1-ericvh@kernel.org>
References: <20230124023834.106339-1-ericvh@kernel.org>
 <20230218003323.2322580-1-ericvh@kernel.org>
MIME-Version: 1.0
X-Spam-Score: -5.9 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Add some additional debug flags to assist with debugging
 cache
 changes. Also add some additional open modes so we can track cache state
 in fids more directly. Signed-off-by: Eric Van Hensbergen <ericvh@kernel.org>
 --- include/net/9p/9p.h | 5 +++++ 1 file changed, 5 insertions(+) 
 Content analysis details:   (-5.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [145.40.68.75 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1pTBB2-0004Kj-Rm
Subject: [V9fs-developer] [PATCH v4 07/11] 9p: Add additional debug flags
 and open modes
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
Cc: linux-fsdevel@vger.kernel.org, Eric Van Hensbergen <ericvh@kernel.org>,
 linux_oss@crudebyte.com, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Add some additional debug flags to assist with debugging
cache changes.  Also add some additional open modes so we
can track cache state in fids more directly.

Signed-off-by: Eric Van Hensbergen <ericvh@kernel.org>
---
 include/net/9p/9p.h | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/include/net/9p/9p.h b/include/net/9p/9p.h
index 429adf6be29c..61c20b89becd 100644
--- a/include/net/9p/9p.h
+++ b/include/net/9p/9p.h
@@ -42,6 +42,8 @@ enum p9_debug_flags {
 	P9_DEBUG_PKT =		(1<<10),
 	P9_DEBUG_FSC =		(1<<11),
 	P9_DEBUG_VPKT =		(1<<12),
+	P9_DEBUG_CACHE =	(1<<13),
+	P9_DEBUG_MMAP =		(1<<14),
 };
 
 #ifdef CONFIG_NET_9P_DEBUG
@@ -213,6 +215,9 @@ enum p9_open_mode_t {
 	P9_ORCLOSE = 0x40,
 	P9_OAPPEND = 0x80,
 	P9_OEXCL = 0x1000,
+	P9L_DIRECT = 0x2000, /* cache disabled */
+	P9L_NOWRITECACHE = 0x4000, /* no write caching  */
+	P9L_LOOSE = 0x8000, /* loose cache */
 };
 
 /**
-- 
2.37.2



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
