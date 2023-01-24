Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A9C17678E4E
	for <lists+v9fs-developer@lfdr.de>; Tue, 24 Jan 2023 03:39:22 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1pK9DV-0000h5-DA;
	Tue, 24 Jan 2023 02:39:20 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <ericvh@kernel.org>) id 1pK9DU-0000gs-4R
 for v9fs-developer@lists.sourceforge.net;
 Tue, 24 Jan 2023 02:39:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Fw9lpMcRlQ98cMWAJ6yr69bVmkSt3U+zp7vHa9aUgRs=; b=QG5UPvGid5iBnqduV6RgN0qDAr
 MzPnrU8UIAC/fEdiTVxgiJg1vgWIOmipayjOYohUyqpLCtEEpYZgj+Z5DCsHNYr/GX+cQAp/D/Gpi
 AiqgPUugcE697JfeemZ1j1HF771qabkOoByGqonTJNE3YNJUvCwKQdQYo4jzmr3DZP3I=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Fw9lpMcRlQ98cMWAJ6yr69bVmkSt3U+zp7vHa9aUgRs=; b=EtdcmgSNHj9GqLers7GG9z7m5P
 vKgp+2QEa8zvrj8StLSthwLvvWGZZ26N3uBA9Y9LFgCJqF48wiHvqTrFAql5hjUufo5A+FwKLVqk8
 Yvld74Yl8U3jtL5+WOm/GUpOZYTZOA2tsU4BX/rti0J/CrbH35XYAlCtWC41JEErlwTA=;
Received: from dfw.source.kernel.org ([139.178.84.217])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1pK9DO-00Dv6h-K0 for v9fs-developer@lists.sourceforge.net;
 Tue, 24 Jan 2023 02:39:19 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 1AADC611AC;
 Tue, 24 Jan 2023 02:39:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AB2AEC4339C;
 Tue, 24 Jan 2023 02:39:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1674527948;
 bh=PwWjKgBCrFlHwrWRE5cwXvsrY7AklcLgKZPzMWv8M98=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=JS6jD+RgGGbUubzXvH6A68+919GJ3rSiQnnhqsc+tyKxmcasyjQTcoGGs2Vf5LJIC
 GvTxhwJvFKg3oEnIsdFQx0xJEONh7r4YAEkjuOrmytD6TrYgNjgvYBDQyQrBVK+so7
 87Nxw/8JkegNoigWo1wiPvVLuO6Ji6g5DZHuOxzWXEaHRHGoR7mRDr1EcYhx3RYyz8
 JhRtODX5+XTlRuJs5jEaBONXZt4a6Hn7rq5GBbHRZlegWqLWv6nRkHwd66O7pkpRFy
 l6KMbbQUvCJ9MWjWFBrHxWNMTEusdLjpaWCwhEV0grRv1xf5B2C7lDCDqk4KxOwQF9
 Weal6JaTo/frA==
From: Eric Van Hensbergen <ericvh@kernel.org>
To: v9fs-developer@lists.sourceforge.net, asmadeus@codewreck.org,
 rminnich@gmail.com, lucho@ionkov.net
Date: Tue, 24 Jan 2023 02:38:24 +0000
Message-Id: <20230124023834.106339-2-ericvh@kernel.org>
X-Mailer: git-send-email 2.37.2
In-Reply-To: <20230124023834.106339-1-ericvh@kernel.org>
References: <20221218232217.1713283-1-evanhensbergen@icloud.com>
 <20230124023834.106339-1-ericvh@kernel.org>
MIME-Version: 1.0
X-Spam-Score: -5.2 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Add maximum p9 header size to MSIZE to make sure we can have
 page aligned data. Signed-off-by: Eric Van Hensbergen <ericvh@kernel.org>
 --- net/9p/client.c | 6 +++++- 1 file changed, 5 insertions(+), 1 deletion(-)
 Content analysis details:   (-5.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [139.178.84.217 listed in list.dnswl.org]
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1pK9DO-00Dv6h-K0
Subject: [V9fs-developer] [PATCH v3 01/11] Adjust maximum MSIZE to account
 for p9 header
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

Add maximum p9 header size to MSIZE to make sure we can
have page aligned data.

Signed-off-by: Eric Van Hensbergen <ericvh@kernel.org>
---
 net/9p/client.c | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/net/9p/client.c b/net/9p/client.c
index 622ec6a586ee..6c2a768a6ab1 100644
--- a/net/9p/client.c
+++ b/net/9p/client.c
@@ -28,7 +28,11 @@
 #define CREATE_TRACE_POINTS
 #include <trace/events/9p.h>
 
-#define DEFAULT_MSIZE (128 * 1024)
+/* DEFAULT MSIZE = 32 pages worth of payload + P9_HDRSZ +
+ * room for write (16 extra) or read (11 extra) operands.
+ */
+
+#define DEFAULT_MSIZE ((128 * 1024) + P9_IOHDRSZ)
 
 /* Client Option Parsing (code inspired by NFS code)
  *  - a little lazy - parse all client options
-- 
2.37.2



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
