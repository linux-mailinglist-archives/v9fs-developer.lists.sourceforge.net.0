Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 58B5E282C52
	for <lists+v9fs-developer@lfdr.de>; Sun,  4 Oct 2020 20:05:27 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1kP8Ny-0003ra-5m; Sun, 04 Oct 2020 18:05:26 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <willy@infradead.org>) id 1kP8Nx-0003rN-49
 for v9fs-developer@lists.sourceforge.net; Sun, 04 Oct 2020 18:05:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=OeP+UYbpor66DMaW4dlQOBaRsqMPKoK+SZyjuLcZuzs=; b=hDpoHpPSHC1KRNKtdn/XCPaCxr
 amgB/yQ4brfi7CGIMaeyajCRU3q1SUYOQ7lvsIQq6ZTfxfa2bNMC4GsTckW6ruwdB0ErlzAm2mwDZ
 rh+CFsM86dzNcC7U+Qqs/yhtvoPci+ORx3J08rd88tGUvGlg+yA+5Uak/iG1EQwN99fc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=OeP+UYbpor66DMaW4dlQOBaRsqMPKoK+SZyjuLcZuzs=; b=F3K/xDNDMOzcy/CUoWSiqSABaJ
 K1idvR0ZXJ78Q4blP6bcFCvxa/hMi/r/NXyiHUB2aYqttI92EZIc6/K8h2xXE376aZ4ak4M0Rs59Y
 0TycApLBSEi96uho8bNXHYsRZ18Lc40BrweP3IQ0IhP334FuFGG7l/d/Tw6Tdh02XCw8=;
Received: from casper.infradead.org ([90.155.50.34])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kP8Nn-002Tah-UW
 for v9fs-developer@lists.sourceforge.net; Sun, 04 Oct 2020 18:05:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description;
 bh=OeP+UYbpor66DMaW4dlQOBaRsqMPKoK+SZyjuLcZuzs=; b=qmpfmOl3qTJbpxI7uNRkLqzkX+
 o71mA9C5U9VRYEWc5KEwJBkP9Y97+/NQU162gn9znTiYisHqdCdn4VuiXZwCAIGB587PaeLQy3FXp
 XC8xOv3dJ3fROxKoPixtR8p35Z0mviJUJp+cs6gAHSUfmJcXl8S4+TkJ6KZjWs3se8xwZf6/yzktZ
 T4LacZutqbncYoL1xQoZ2f0D9GvWC+LdYt3zXAtz/qee9YC+fQIX0+9EzCgcH/bz3ScYQPgLSc0OU
 DShVL8PPkfWDLQb1ihe5zYa87QYdS91QEjq1/VJKAoQfE8Ji5VtkljNvyANJ7SyZJfQThLV1TxIic
 SSXtL4bg==;
Received: from willy by casper.infradead.org with local (Exim 4.92.3 #3 (Red
 Hat Linux)) id 1kP8N5-0003mc-D3; Sun, 04 Oct 2020 18:04:31 +0000
From: "Matthew Wilcox (Oracle)" <willy@infradead.org>
To: linux-fsdevel@vger.kernel.org
Date: Sun,  4 Oct 2020 19:04:23 +0100
Message-Id: <20201004180428.14494-3-willy@infradead.org>
X-Mailer: git-send-email 2.21.3
In-Reply-To: <20201004180428.14494-1-willy@infradead.org>
References: <20201004180428.14494-1-willy@infradead.org>
MIME-Version: 1.0
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: infradead.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1kP8Nn-002Tah-UW
Subject: [V9fs-developer] [PATCH 2/7] buffer: Promote to unsigned long long
 before shifting
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
Cc: lucho@ionkov.net, stable@vger.kernel.org, clm@fb.com, ericvh@gmail.com,
 linux-btrfs@vger.kernel.org, mark@fasheh.com, jlayton@kernel.org,
 linux-kernel@vger.kernel.org,
 "Matthew Wilcox \(Oracle\)" <willy@infradead.org>, josef@toxicpanda.com,
 joseph.qi@linux.alibaba.com, viro@zeniv.linux.org.uk, dsterba@suse.com,
 v9fs-developer@lists.sourceforge.net, idryomov@gmail.com,
 ceph-devel@vger.kernel.org, ocfs2-devel@oss.oracle.com, jlbec@evilplan.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On 32-bit systems, this shift will overflow for files larger than 4GB.

Cc: stable@vger.kernel.org
Fixes: 5417169026c3 ("[FS] Implement block_page_mkwrite.")
Signed-off-by: Matthew Wilcox (Oracle) <willy@infradead.org>
---
 fs/buffer.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/fs/buffer.c b/fs/buffer.c
index 50bbc99e3d96..66f4765e60ee 100644
--- a/fs/buffer.c
+++ b/fs/buffer.c
@@ -2515,7 +2515,7 @@ int block_page_mkwrite(struct vm_area_struct *vma, struct vm_fault *vmf,
 	}
 
 	/* page is wholly or partially inside EOF */
-	if (((page->index + 1) << PAGE_SHIFT) > size)
+	if (((page->index + 1ULL) << PAGE_SHIFT) > size)
 		end = size & ~PAGE_MASK;
 	else
 		end = PAGE_SIZE;
-- 
2.28.0



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
