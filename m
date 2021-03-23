Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id DBE0F346BFF
	for <lists+v9fs-developer@lfdr.de>; Tue, 23 Mar 2021 23:18:15 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1lOpLq-0005Df-KD; Tue, 23 Mar 2021 22:18:14 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <dhowells@redhat.com>) id 1lOpLp-0005DX-4z
 for v9fs-developer@lists.sourceforge.net; Tue, 23 Mar 2021 22:18:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=wc1tHYEycG0FRmZQbIWHGSriJOssCKvxl09WyfLRD2g=; b=eUIs12UFiVdd98TU/A1KovmmE5
 EG00CDSr3il3C6U7KuuhmCO5tbIMqDU0FbQrFLOf/uQGDWQiLOLeI4lVpGTzzOm/38qvYXwQ9km7n
 qEdOmsGKUvSgciPNFBIGzsBt1mNtyHkSYB2ZNIW+ip+FdZcIBiV9k6i6jhhDD23wyLN8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=wc1tHYEycG0FRmZQbIWHGSriJOssCKvxl09WyfLRD2g=; b=J8fZ3zZ5xU8a92h5BRm6LijS4b
 rRbmO+x6dXJ+MKvYBnv7ZitBAXajhE1GvSeNLvNiAJ0obLaG1WjDpEbxvbhY83dyR7WH3DOKwkSjK
 SZZD1yZWTS6Bri9EqsyH6vLaN+69VzbP9ePCYQi8QN0on5WO7aS9P4rlWXboHutsHk98=;
Received: from us-smtp-delivery-124.mimecast.com ([63.128.21.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.3)
 id 1lOpLi-0006nB-53
 for v9fs-developer@lists.sourceforge.net; Tue, 23 Mar 2021 22:18:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1616537880;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=wc1tHYEycG0FRmZQbIWHGSriJOssCKvxl09WyfLRD2g=;
 b=h8dv70+4B0gyucjZ5A/ieDHgUWGbx9riuFJssaupopCPC1mAUKoUQv6TFpUMS6Sf0X/URp
 CxnUC7N3EPgW8OJet5AMhAgAAr8nOnEQLqnK2RDzn7ccntI3ZlfYR6IJgHp5r6Uvf54COk
 uYEwWs64/q03h/YC0uNlU5V7+dz++QI=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-460-UFUoV2jjOZ-xgD2r8roNeA-1; Tue, 23 Mar 2021 18:17:58 -0400
X-MC-Unique: UFUoV2jjOZ-xgD2r8roNeA-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id C47A71084D68;
 Tue, 23 Mar 2021 22:17:56 +0000 (UTC)
Received: from warthog.procyon.org.uk (ovpn-112-58.rdu2.redhat.com
 [10.10.112.58])
 by smtp.corp.redhat.com (Postfix) with ESMTP id ADF4460243;
 Tue, 23 Mar 2021 22:17:53 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
To: Trond Myklebust <trondmy@hammerspace.com>,
 Anna Schumaker <anna.schumaker@netapp.com>, Steve French <sfrench@samba.org>, 
 Dominique Martinet <asmadeus@codewreck.org>
Date: Tue, 23 Mar 2021 22:17:52 +0000
Message-ID: <161653787287.2770958.17679186162121211209.stgit@warthog.procyon.org.uk>
In-Reply-To: <161653784755.2770958.11820491619308713741.stgit@warthog.procyon.org.uk>
References: <161653784755.2770958.11820491619308713741.stgit@warthog.procyon.org.uk>
User-Agent: StGit/0.23
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: infradead.org]
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [63.128.21.124 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1lOpLi-0006nB-53
Subject: [V9fs-developer] [PATCH v5 02/28] mm: Add
 wait_on_page_writeback_killable()
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
 Jeff Layton <jlayton@redhat.com>, David Wysochanski <dwysocha@redhat.com>,
 linux-kernel@vger.kernel.org,
 "Matthew Wilcox \(Oracle\)" <willy@infradead.org>,
 Christoph Hellwig <hch@lst.de>, dhowells@redhat.com, linux-mm@kvack.org,
 linux-cachefs@redhat.com, Alexander Viro <viro@zeniv.linux.org.uk>,
 linux-fsdevel@vger.kernel.org, v9fs-developer@lists.sourceforge.net,
 ceph-devel@vger.kernel.org, linux-afs@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Add a function to wait killably on the PG_writeback page flag.

Signed-off-by: David Howells <dhowells@redhat.com>
cc: Matthew Wilcox (Oracle) <willy@infradead.org>
cc: Alexander Viro <viro@zeniv.linux.org.uk>
cc: Christoph Hellwig <hch@lst.de>
cc: linux-mm@kvack.org
cc: linux-cachefs@redhat.com
cc: linux-afs@lists.infradead.org
cc: linux-nfs@vger.kernel.org
cc: linux-cifs@vger.kernel.org
cc: ceph-devel@vger.kernel.org
cc: v9fs-developer@lists.sourceforge.net
cc: linux-fsdevel@vger.kernel.org
---

 include/linux/pagemap.h |    1 +
 mm/page-writeback.c     |   25 +++++++++++++++++++++++++
 2 files changed, 26 insertions(+)

diff --git a/include/linux/pagemap.h b/include/linux/pagemap.h
index 20225b067583..444155ae56c0 100644
--- a/include/linux/pagemap.h
+++ b/include/linux/pagemap.h
@@ -683,6 +683,7 @@ static inline int wait_on_page_locked_killable(struct page *page)
 
 int put_and_wait_on_page_locked(struct page *page, int state);
 void wait_on_page_writeback(struct page *page);
+int wait_on_page_writeback_killable(struct page *page);
 extern void end_page_writeback(struct page *page);
 void wait_for_stable_page(struct page *page);
 
diff --git a/mm/page-writeback.c b/mm/page-writeback.c
index eb34d204d4ee..b8bad275f94b 100644
--- a/mm/page-writeback.c
+++ b/mm/page-writeback.c
@@ -2833,6 +2833,31 @@ void wait_on_page_writeback(struct page *page)
 }
 EXPORT_SYMBOL_GPL(wait_on_page_writeback);
 
+/**
+ * Wait for a page to complete writeback
+ * @page: The page to wait on
+ *
+ * Wait for the writeback status of a page to clear or a fatal signal to occur.
+ *
+ * Return:
+ * - 0 on success.
+ * - -EINTR if a fatal signal was encountered.
+ */
+int wait_on_page_writeback_killable(struct page *page)
+{
+	int ret = 0;
+
+	while (PageWriteback(page)) {
+		trace_wait_on_page_writeback(page, page_mapping(page));
+		ret = wait_on_page_bit_killable(page, PG_writeback);
+		if (ret < 0)
+			break;
+	}
+
+	return ret;
+}
+EXPORT_SYMBOL(wait_on_page_writeback_killable);
+
 /**
  * wait_for_stable_page() - wait for writeback to finish, if necessary.
  * @page:	The page to wait on.




_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
