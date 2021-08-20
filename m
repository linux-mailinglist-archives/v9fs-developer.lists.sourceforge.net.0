Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 870B33F31A8
	for <lists+v9fs-developer@lfdr.de>; Fri, 20 Aug 2021 18:42:19 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1mH7b0-00042p-BW; Fri, 20 Aug 2021 16:42:18 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jlayton@kernel.org>) id 1mH7YL-0003zH-6l
 for v9fs-developer@lists.sourceforge.net; Fri, 20 Aug 2021 16:39:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=3QeEfHu4SOScfcJmdvDgF5vD+8K9b7WbBudtf/9OEN4=; b=eAiZo6G5CaAf4xLxNK2aDQPMJE
 9Gsx8kivU7J87oxL6jRjeEpphK9eYV8SVSdH0NnvYb20RaDoOlQj47A8EdiOiII7pVvqonCGh99Tr
 hBE3ALngjvQ3nBmzk3xu/b4i6fy56ODjp+cBBPBP2VZCzlo4DpvZFlj0FW3rwM4WRImM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=3QeEfHu4SOScfcJmdvDgF5vD+8K9b7WbBudtf/9OEN4=; b=AcxbFY5ZKppn4BqNuzoEuPvxIn
 CVx7dAiu0pB4/owqkQQDjKD8X1igIfGsIOfDq0ph7S5rwHLE2LqPdNMA1REIM7Kf5MFKBEcnSuuLR
 ankopN3Gl9J6gafBiUtd45ggj4m+TelLHI13zTgA8zCY7bPrrqlkMoy3LiJQb3dZtH6Y=;
Received: from mail.kernel.org ([198.145.29.99])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mH7YG-00CwQS-R5
 for v9fs-developer@lists.sourceforge.net; Fri, 20 Aug 2021 16:39:33 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id DCCF86113B;
 Fri, 20 Aug 2021 16:39:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1629477563;
 bh=AQp3LFjVqKf+6JCOVIRxYIEow6Xf7ZVVgy0fQLP+rqs=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=klDFyswU0boWi00o6qUlSahmi0csj5mCM8t6hXOT7WFWvkJjCI6/fvT1e4LIFg+NP
 w/gpXH6t+ho1dN5rgnSMFVG+KtnPoF8x4gevB5zkkcihq3FHZF/ZfUuTG8Qf6bUtRd
 M2glGFTawn8h9sJkUXKrUPfGky7SfkCm5IwBFI1Mq5KdPAvdzQX9HM2TZ38hJvLjCl
 IE7V1B/lQuQZB4UPlh74b1BoESZKCKEZwDeZaa2Y/+CTZlxXGYOz5neUK16BiA0UGF
 b86XwnJO1mYOUZxuUhjWwm8TAVr8x3pW64Scv4WrEGwmZEf5xwGhO82Adjj5g1SNzs
 IoMprsQc5PY2g==
From: Jeff Layton <jlayton@kernel.org>
To: torvalds@linux-foundation.org, linux-fsdevel@vger.kernel.org,
 linux-kernel@vger.kernel.org
Date: Fri, 20 Aug 2021 12:39:18 -0400
Message-Id: <20210820163919.435135-2-jlayton@kernel.org>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210820163919.435135-1-jlayton@kernel.org>
References: <20210820163919.435135-1-jlayton@kernel.org>
MIME-Version: 1.0
X-Spam-Score: -5.9 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: We've had CONFIG_MANDATORY_FILE_LOCKING since 2015 and a lot
 of distros have disabled it. Warn the stragglers that still use "-o mand"
 that we'll be dropping support for that mount option. Cc:
 stable@vger.kernel.org
 Signed-off-by: Jeff Layton <jlayton@kernel.org> --- fs/namespace.c | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-) 
 Content analysis details:   (-5.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1mH7YG-00CwQS-R5
Subject: [V9fs-developer] [PATCH v3 1/2] fs: warn about impending
 deprecation of mandatory locks
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
Cc: bfields@fieldses.org, linux-nfs@vger.kernel.org, linux-doc@vger.kernel.org,
 david@redhat.com, stable@vger.kernel.org, willy@infradead.org,
 cluster-devel@redhat.com, linux-mm@kvack.org, rostedt@goodmis.org,
 viro@zeniv.linux.org.uk, luto@kernel.org, v9fs-developer@lists.sourceforge.net,
 linux-afs@lists.infradead.org, ocfs2-devel@oss.oracle.com,
 ebiederm@xmission.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

We've had CONFIG_MANDATORY_FILE_LOCKING since 2015 and a lot of distros
have disabled it. Warn the stragglers that still use "-o mand" that
we'll be dropping support for that mount option.

Cc: stable@vger.kernel.org
Signed-off-by: Jeff Layton <jlayton@kernel.org>
---
 fs/namespace.c | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/fs/namespace.c b/fs/namespace.c
index ab4174a3c802..2279473d0d6f 100644
--- a/fs/namespace.c
+++ b/fs/namespace.c
@@ -1716,8 +1716,12 @@ static inline bool may_mount(void)
 }
 
 #ifdef	CONFIG_MANDATORY_FILE_LOCKING
-static inline bool may_mandlock(void)
+static bool may_mandlock(void)
 {
+	pr_warn_once("======================================================\n"
+		     "WARNING: the mand mount option is being deprecated and\n"
+		     "         will be removed in v5.15!\n"
+		     "======================================================\n");
 	return capable(CAP_SYS_ADMIN);
 }
 #else
-- 
2.31.1



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
