Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 82B1F3F2D83
	for <lists+v9fs-developer@lfdr.de>; Fri, 20 Aug 2021 15:57:20 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1mH51L-0000gw-BE; Fri, 20 Aug 2021 13:57:19 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jlayton@kernel.org>) id 1mH51K-0000gm-LT
 for v9fs-developer@lists.sourceforge.net; Fri, 20 Aug 2021 13:57:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Bv4GzQOJ2VRtT2SUVkAEzw4ngL0ceq9Cl3GB2PgMG1k=; b=F3agJAidsjudam8RXekVd8U0jW
 7XDkk94g5pRboexPL7vyNg7kzhVXHUdZhSumT4C3K4eDcDNN3Y3boasOcXn5Lrur7821ecJ5y7Il1
 8Awx7SqnU/RSoFyv+dHsokTR2OzzBFaPSwqlbMGy2qbf5OKk5Vt0bwQb+kuNA0BIaALM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Bv4GzQOJ2VRtT2SUVkAEzw4ngL0ceq9Cl3GB2PgMG1k=; b=WpvB1FZga0oDT9QWw8ouIY6wst
 5p7wTjpgS+LXIL/FwOIktIzIPSLtSV/cbqDiJP135PLOeAqTcHiqmr53PVU9skIPR6bcPc7JR/zXR
 Vv/HAq6COgsM/m+iPBiv18XwxxwymHulGRSZfuQrLCUIYuAgBKC+ea8gUzjGeQWeji7Q=;
Received: from mail.kernel.org ([198.145.29.99])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mH51J-00070n-H4
 for v9fs-developer@lists.sourceforge.net; Fri, 20 Aug 2021 13:57:18 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 8A4716113B;
 Fri, 20 Aug 2021 13:57:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1629467832;
 bh=K8+S905uGyASJbRSp6ojxzz8FSVJlwShMqh++FTbeUg=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=mzn3O26so+FuhVw9kHhMyXbJ5ZEiAo0PLzc8znPDyofGJr9WSUruQkDieoWUYaU0g
 5bKhOWsLm0DBeAbyngiuAJbN9y0xKY0sjzJtvpNBYLnAPfwY9cVgEEYvY3gIcxx1aG
 uglOfDqvS4n6ts6K6paZ1uIVdX0VHYlnRMdjUKDqmkiY4gBiZG7/Xb40VIUcxWLOp9
 cXBVs8kjfJgj75iIMaPHLo2zZhELKAv0XgIsvt23fO5qwLfZZmicS1SCpwaDMMvaFe
 zxr49yGgO9JZR7elr/JBfGxd+YVB7AjEWSD30wNOM3My7Dprk6gS2/Cx5Rf52Z6Gpj
 ouUDTAjvDHXgQ==
From: Jeff Layton <jlayton@kernel.org>
To: torvalds@linux-foundation.org, linux-fsdevel@vger.kernel.org,
 linux-kernel@vger.kernel.org
Date: Fri, 20 Aug 2021 09:57:06 -0400
Message-Id: <20210820135707.171001-2-jlayton@kernel.org>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210820135707.171001-1-jlayton@kernel.org>
References: <20210820135707.171001-1-jlayton@kernel.org>
MIME-Version: 1.0
X-Spam-Score: -0.8 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1mH51J-00070n-H4
Subject: [V9fs-developer] [PATCH v2 1/2] fs: warn about impending
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
 david@redhat.com, stable@vger.kernel.org, willy@infradead.org, w@1wt.eu,
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
 fs/namespace.c | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/fs/namespace.c b/fs/namespace.c
index ab4174a3c802..ffab0bb1e649 100644
--- a/fs/namespace.c
+++ b/fs/namespace.c
@@ -1716,8 +1716,16 @@ static inline bool may_mount(void)
 }
 
 #ifdef	CONFIG_MANDATORY_FILE_LOCKING
+static bool warned_mand;
 static inline bool may_mandlock(void)
 {
+	if (!warned_mand) {
+		warned_mand = true;
+		pr_warn("======================================================\n");
+		pr_warn("WARNING: the mand mount option is being deprecated and\n");
+		pr_warn("         will be removed in v5.15!\n");
+		pr_warn("======================================================\n");
+	}
 	return capable(CAP_SYS_ADMIN);
 }
 #else
-- 
2.31.1



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
