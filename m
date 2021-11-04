Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 869E2445298
	for <lists+v9fs-developer@lfdr.de>; Thu,  4 Nov 2021 13:03:47 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1mibT6-0005rk-8k; Thu, 04 Nov 2021 12:03:44 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <asmadeus@codewreck.org>) id 1mibT4-0005re-Oi
 for v9fs-developer@lists.sourceforge.net; Thu, 04 Nov 2021 12:03:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=xEp8eFxtEqQ43xgpMlcvKwbaMDG5dHvhWTnvg8NkLBw=; b=ix2BpS01YINMVIKkSHRVOFDEch
 8UUZzTkoHxok62QOt66VHqQ+tCchX38mNmvNxhxxBTJ39eA5Chc4hKLQBUUVngXXL6CcKcQg5Rljn
 1Q6Kb0X3DBofGELhWUoAFL1Qj4muR5JFV1RFTksRYnhevht4zQNkEWVoCBrGfxMiGKDg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=xEp8eFxtEqQ43xgpMlcvKwbaMDG5dHvhWTnvg8NkLBw=; b=D
 w9tehfd7FjVj4Ku6OiRaCvKqu7TXDFTtJOlpd3h5LS72pBRXlL3kGvQOB2KmkBcRZqRCdESRE4HXA
 t7UruUSLejeWfsMdLrgFzJyvp3JYjP8AAOpuAYlI/NxyO1uGgMCFcmRPZGU5r/+RfRaI78L3JZh3j
 m3GSyS1wDe3U3GSU=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mibT2-0000FX-HR
 for v9fs-developer@lists.sourceforge.net; Thu, 04 Nov 2021 12:03:42 +0000
Received: by nautica.notk.org (Postfix, from userid 108)
 id A087FC01C; Thu,  4 Nov 2021 13:03:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1636027413; bh=xEp8eFxtEqQ43xgpMlcvKwbaMDG5dHvhWTnvg8NkLBw=;
 h=From:To:Cc:Subject:Date:From;
 b=DBioh2kBx6je4xU5+OgqXNFWzSjw79Xsx0zjPANwMBeA2Ng2KvVEf62E3GRbKHMYn
 aZgPaHFw/JJxOUfwpqdhrSJTEg7KC0K3tarzpjrwU9W9u//kTXKR6+wJ5IabYj9c05
 KFHm87wASIlDv+SNer4blwYIbBudpRnRYKGwiIngpQnyq0+xxToiXCBrL9dc66JGFI
 OeLCuZpUifIGL7IfkG8bt+L/BLT4YsXDdpR6HdBnuT/qydd7HfoNLwz1rTSQhD09ft
 s3q4Pc0GCiyEHq5sRz7h6Tq+Mu6BJrGEBEJBbrYSMyugLkaA8PxHpXnlaSTmBKqnMg
 d6igRQkCvyg3w==
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on nautica.notk.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=UNPARSEABLE_RELAY
 autolearn=unavailable version=3.3.2
Received: from odin.codewreck.org (localhost [127.0.0.1])
 by nautica.notk.org (Postfix) with ESMTPS id 2F842C009;
 Thu,  4 Nov 2021 13:03:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1636027412; bh=xEp8eFxtEqQ43xgpMlcvKwbaMDG5dHvhWTnvg8NkLBw=;
 h=From:To:Cc:Subject:Date:From;
 b=HiYHZzGwd0llRNmCIWnxzCGSuip8RAMEY2pKPvXvtE+nHShoQBGO5TKng2Ls+KWhA
 nj10x0d4LTLtGvpn819JD3JVlB6OXovKoZAUCueEY784x168gwJPX/mU2YIBO37MDb
 d8WOarI02Pb2G7lS6AgAOzAbU0lLss1aoxNh6r6rBA6Ph+2sN5Nrm6Ci9GJQ9QnH0X
 z0bmYtkRiZkcscOOwXx/n5eurvXu3kIptQaCxY9UwPFW4dcIqPeDjhnCNGTcDmwqJy
 ygqbmWKT5KyA8aXhbwyf6zRej+Hsi6w+goOCNv4oxN7QWNfor3poDIBcYLp4pBbM9t
 /HNuxPGK59LGg==
Received: from localhost (odin.codewreck.org [local])
 by odin.codewreck.org (OpenSMTPD) with ESMTPA id ffda33dd;
 Thu, 4 Nov 2021 12:03:27 +0000 (UTC)
From: Dominique Martinet <asmadeus@codewreck.org>
To: v9fs-developer@lists.sourceforge.net
Date: Thu,  4 Nov 2021 21:03:23 +0900
Message-Id: <20211104120323.2189376-1-asmadeus@codewreck.org>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: having a readahead of 128k with a msize of 128k (with
 overhead)
 lead to reading 124+4k everytime, making two roundtrips needlessly. tune
 readahead according to msize when cache is enabled for better performance 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: codewreck.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
X-Headers-End: 1mibT2-0000FX-HR
Subject: [V9fs-developer] [PATCH] 9p: set readahead and io size according to
 maxsize
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
Cc: Latchesar Ionkov <lucho@ionkov.net>, Eric Van Hensbergen <ericvh@gmail.com>,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

having a readahead of 128k with a msize of 128k (with overhead) lead to
reading 124+4k everytime, making two roundtrips needlessly.

tune readahead according to msize when cache is enabled for better
performance

Signed-off-by: Dominique Martinet <asmadeus@codewreck.org>
---
 fs/9p/vfs_super.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/fs/9p/vfs_super.c b/fs/9p/vfs_super.c
index c6028af51925..b0632f4e337f 100644
--- a/fs/9p/vfs_super.c
+++ b/fs/9p/vfs_super.c
@@ -79,6 +79,9 @@ v9fs_fill_super(struct super_block *sb, struct v9fs_session_info *v9ses,
 	if (!v9ses->cache) {
 		sb->s_bdi->ra_pages = 0;
 		sb->s_bdi->io_pages = 0;
+	} else {
+		sb->s_bdi->ra_pages = v9ses->maxdata >> PAGE_SHIFT;
+		sb->s_bdi->io_pages = v9ses->maxdata >> PAGE_SHIFT;
 	}
 
 	sb->s_flags |= SB_ACTIVE | SB_DIRSYNC;
-- 
2.31.1



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
