Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C43C1C44CE
	for <lists+v9fs-developer@lfdr.de>; Mon,  4 May 2020 20:10:42 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1jVfY8-00050f-V4; Mon, 04 May 2020 18:10:40 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <dhowells@redhat.com>) id 1jVfY8-00050G-5C
 for v9fs-developer@lists.sourceforge.net; Mon, 04 May 2020 18:10:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=g1czMXHet0svqVZIYYLyb3eRaMa9uG3FZ/GvDWtLRkw=; b=G3vUVxj5oF7XEYYLbm10pcZqAP
 ySnGm36klMY2cM5Z4b+Wx8y9TQLsc09S91R1426YHf8P1pXWdG7vj+fVO6sBO4MnXxx0ie4X9ob6c
 TZzx36PQhxzDSYomPxU7hb6XWyPb7WY1wTLbW1AaDBIonUfrF0IEbXSuJih/3KDfh5AU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=g1czMXHet0svqVZIYYLyb3eRaMa9uG3FZ/GvDWtLRkw=; b=bv2SxJI8PuSoUqc42mnXeboU3r
 EPMnjAkfNyxFbDiNZ04eKkzp2NbzweHERubbUbo3/sbt3f4Ia/5HAlTNN04+zfbM3rMt3YSW8RzL6
 Ke/DkzHaSjzcrgnWslShiSdUdCzemDqDRzYPkbc5QDLKiKBfZvpwyNN//V0NhagLdTBc=;
Received: from us-smtp-1.mimecast.com ([207.211.31.81]
 helo=us-smtp-delivery-1.mimecast.com)
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.2)
 id 1jVfY5-007FOi-IK
 for v9fs-developer@lists.sourceforge.net; Mon, 04 May 2020 18:10:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1588615831;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=g1czMXHet0svqVZIYYLyb3eRaMa9uG3FZ/GvDWtLRkw=;
 b=Zji24knS3ySJG69Sn2hRFtTHok7JJ02Bts9dxsIBcE4PKOz72pJenAT6bTbOSfOyWHW0tC
 TX5UOSVXODH/POT+yeWFTZAb4JHLrcRw+Ca/fyEefXPTm8NB5m3oCKYbamN0HcdpJ2V23L
 X+cCpevlRlbWLxGcLSP22fB5GYn9ntM=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-195-vBvn-v_3Od-m0gXjR-wPsg-1; Mon, 04 May 2020 13:07:58 -0400
X-MC-Unique: vBvn-v_3Od-m0gXjR-wPsg-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id C9BA3108BD1E;
 Mon,  4 May 2020 17:07:55 +0000 (UTC)
Received: from warthog.procyon.org.uk (ovpn-118-225.rdu2.redhat.com
 [10.10.118.225])
 by smtp.corp.redhat.com (Postfix) with ESMTP id A02CE62496;
 Mon,  4 May 2020 17:07:47 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
To: Trond Myklebust <trondmy@hammerspace.com>,
 Anna Schumaker <anna.schumaker@netapp.com>, Steve French <sfrench@samba.org>, 
 Jeff Layton <jlayton@redhat.com>
Date: Mon, 04 May 2020 18:07:46 +0100
Message-ID: <158861206682.340223.14897883495650401085.stgit@warthog.procyon.org.uk>
In-Reply-To: <158861203563.340223.7585359869938129395.stgit@warthog.procyon.org.uk>
References: <158861203563.340223.7585359869938129395.stgit@warthog.procyon.org.uk>
User-Agent: StGit/0.21
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Spam-Score: -0.3 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [207.211.31.81 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [207.211.31.81 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
 -0.2 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jVfY5-007FOi-IK
Subject: [V9fs-developer] [RFC PATCH 03/61] vm: Add wait/unlock functions
 for PG_fscache
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
Cc: linux-cifs@vger.kernel.org, linux-nfs@vger.kernel.org,
 linux-kernel@vger.kernel.org, Matthew Wilcox <willy@infradead.org>,
 dhowells@redhat.com, Alexander Viro <viro@zeniv.linux.org.uk>,
 linux-fsdevel@vger.kernel.org, v9fs-developer@lists.sourceforge.net,
 ceph-devel@vger.kernel.org, linux-afs@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Add functions to unlock and wait for unlock of PG_fscache analogously with
those for PG_lock.

Signed-off-by: David Howells <dhowells@redhat.com>
---

 include/linux/pagemap.h |   14 ++++++++++++++
 mm/filemap.c            |   18 ++++++++++++++++++
 2 files changed, 32 insertions(+)

diff --git a/include/linux/pagemap.h b/include/linux/pagemap.h
index a8f7bd8ea1c6..6b90226e6ef9 100644
--- a/include/linux/pagemap.h
+++ b/include/linux/pagemap.h
@@ -461,6 +461,7 @@ extern int __lock_page_killable(struct page *page);
 extern int __lock_page_or_retry(struct page *page, struct mm_struct *mm,
 				unsigned int flags);
 extern void unlock_page(struct page *page);
+extern void unlock_page_fscache(struct page *page);
 
 /*
  * Return true if the page was successfully locked
@@ -535,6 +536,19 @@ static inline int wait_on_page_locked_killable(struct page *page)
 	return wait_on_page_bit_killable(compound_head(page), PG_locked);
 }
 
+/**
+ * wait_on_page_fscache - Wait for PG_fscache to be cleared on a page
+ * @page: The page
+ *
+ * Wait for the fscache mark to be removed from a page, usually signifying the
+ * completion of a write from that page to the cache.
+ */
+static inline void wait_on_page_fscache(struct page *page)
+{
+	if (PagePrivate2(page))
+		wait_on_page_bit(compound_head(page), PG_fscache);
+}
+
 extern void put_and_wait_on_page_locked(struct page *page);
 
 void wait_on_page_writeback(struct page *page);
diff --git a/mm/filemap.c b/mm/filemap.c
index 23a051a7ef0f..609db7977687 100644
--- a/mm/filemap.c
+++ b/mm/filemap.c
@@ -1296,6 +1296,24 @@ void unlock_page(struct page *page)
 }
 EXPORT_SYMBOL(unlock_page);
 
+/**
+ * unlock_page_fscache - Unlock a page pinned with PG_fscache
+ * @page: The page
+ *
+ * Unlocks the page and wakes up sleepers in wait_on_page_fscache().  Also
+ * wakes those waiting for the lock and writeback bits because the wakeup
+ * mechanism is shared.  But that's OK - those sleepers will just go back to
+ * sleep.
+ */
+void unlock_page_fscache(struct page *page)
+{
+	page = compound_head(page);
+	VM_BUG_ON_PAGE(!PagePrivate2(page), page);
+	clear_bit_unlock(PG_fscache, &page->flags);
+	wake_up_page_bit(page, PG_fscache);
+}
+EXPORT_SYMBOL(unlock_page_fscache);
+
 /**
  * end_page_writeback - end writeback against a page
  * @page: the page




_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
