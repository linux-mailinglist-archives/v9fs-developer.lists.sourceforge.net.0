Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EF9326DF3A
	for <lists+v9fs-developer@lfdr.de>; Thu, 17 Sep 2020 17:11:21 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1kIvZ9-000277-VV; Thu, 17 Sep 2020 15:11:19 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <willy@infradead.org>) id 1kIvZ3-000261-K2
 for v9fs-developer@lists.sourceforge.net; Thu, 17 Sep 2020 15:11:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=7bp7tBDREj0/quRwoGKFhcM4IA6X+ak+6znUWRbIy7w=; b=Ybf6azUKeX44wV5ntWxbhyBtel
 FQmqw9n0Jk1a2evgUNE/mMP3M7UgW+gW6K90lrovGKkUHiVcTnH3vewFRzVU2RmwPsjGd0zDHw/qy
 5OkjpXcIeV3zUURMXm58HMf1FDN+dTC2OHoaz/6ZeNBpB3RuFW2vV16UW5QbFOqz0Fxw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=7bp7tBDREj0/quRwoGKFhcM4IA6X+ak+6znUWRbIy7w=; b=KMH/iBQ9LB0wJmigMDifI0sK7W
 MKDaVI4Sc0Q3vcOBnts0f+qDZFqYvwyA1J9YTpcluRYojn4q0TzaKB/8qFVgVSyubgeLjI8vccbVA
 Um+wmLrwtCko05wt4CgXdPB0pa1MuVXwIzeB5BqmZNxrjgD5c3gcufBEsBZj3Xm7wEg0=;
Received: from casper.infradead.org ([90.155.50.34])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kIvZ1-00EHfh-Mq
 for v9fs-developer@lists.sourceforge.net; Thu, 17 Sep 2020 15:11:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description;
 bh=7bp7tBDREj0/quRwoGKFhcM4IA6X+ak+6znUWRbIy7w=; b=Ab937xavvtVmodPI2thUSGdAlk
 XIba4t3pVWHQS6GXPdgChNV++4m2pWszb+TrwGgDuHl9lLSuinZjp2hFDRXec+62BpUjm82laGwbh
 JN/W0bXPQaaE0Q5jmTXDfMNCxo+N33xx38Z5TH1Ekmq6LWsMu3AaAKlJNv2F36kXaJ1bzo4y69HPF
 L+XH8pTHAvL0tRdG4imOcEeu6JMtw6zPlA/0bm/X/VAPExraituJ0c+ceD9lLq4MB6OiwXHjnFLZM
 JeoXS++sD/pEEDMkBpD7WdUDOHe1HIUOdAEJpCDDg19BRjFTtuPDBSOja8O+dcKYbSjRiBIs5WHms
 Nj8/IOiw==;
Received: from willy by casper.infradead.org with local (Exim 4.92.3 #3 (Red
 Hat Linux)) id 1kIvYl-0001Qv-Jz; Thu, 17 Sep 2020 15:10:55 +0000
From: "Matthew Wilcox (Oracle)" <willy@infradead.org>
To: linux-fsdevel@vger.kernel.org
Date: Thu, 17 Sep 2020 16:10:50 +0100
Message-Id: <20200917151050.5363-14-willy@infradead.org>
X-Mailer: git-send-email 2.21.3
In-Reply-To: <20200917151050.5363-1-willy@infradead.org>
References: <20200917151050.5363-1-willy@infradead.org>
MIME-Version: 1.0
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1kIvZ1-00EHfh-Mq
Subject: [V9fs-developer] [PATCH 13/13] vboxsf: Tell the VFS that readpage
 was synchronous
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
Cc: linux-cifs@vger.kernel.org, Richard Weinberger <richard@nod.at>,
 ecryptfs@vger.kernel.org, linux-um@lists.infradead.org,
 linux-kernel@vger.kernel.org,
 "Matthew Wilcox \(Oracle\)" <willy@infradead.org>, linux-mm@kvack.org,
 linux-mtd@lists.infradead.org, v9fs-developer@lists.sourceforge.net,
 ceph-devel@vger.kernel.org, linux-afs@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

The vboxsf inline data readpage implementation was already synchronous,
so use AOP_UPDATED_PAGE to avoid cycling the page lock.

Signed-off-by: Matthew Wilcox (Oracle) <willy@infradead.org>
---
 fs/vboxsf/file.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/fs/vboxsf/file.c b/fs/vboxsf/file.c
index c4ab5996d97a..c2a144e5cb5a 100644
--- a/fs/vboxsf/file.c
+++ b/fs/vboxsf/file.c
@@ -228,6 +228,8 @@ static int vboxsf_readpage(struct file *file, struct page *page)
 	}
 
 	kunmap(page);
+	if (!err)
+		return AOP_UPDATED_PAGE;
 	unlock_page(page);
 	return err;
 }
-- 
2.28.0



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
