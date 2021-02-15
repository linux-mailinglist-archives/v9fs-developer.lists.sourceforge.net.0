Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D52531BD5E
	for <lists+v9fs-developer@lfdr.de>; Mon, 15 Feb 2021 16:47:33 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1lBg60-0001jp-6Q; Mon, 15 Feb 2021 15:47:32 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <dhowells@redhat.com>) id 1lBg3p-0001VH-Ij
 for v9fs-developer@lists.sourceforge.net; Mon, 15 Feb 2021 15:45:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=eRjZtsA5zhSS/WW5VYasjVbQdw0rYUOiOpY9AmwMNHQ=; b=caQDj4zIVV45JbxDjmmy1/U35K
 8eGmfUtcH5s4Zrg6RaVeOUeyiTGenlqA+u7XyXDI7Qx0Kfd2IVSpSwJE9T4yJp5hyg3LiHmd6ugQy
 daNK8twGhf4U/9lT9gf3rexhoOTVJVyutugg/XJqWPiRciIY9BKQf91mieRh/SF2DQpU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=eRjZtsA5zhSS/WW5VYasjVbQdw0rYUOiOpY9AmwMNHQ=; b=Wf0jiHyxRWixowEOEscgNO5YdL
 RHPRc+bhSOoyY5vSlE07MOg5BXjtvBYU5+2US6cZ0hE9s7uz0sLlGb4oj8lyRtEbA3DWoDjV5WXV0
 E0jYalzDefbJuqtigleWsdKzg4dzavec9U1R21jMlU5o0i9OrtLf9J+7j4F7r9E1cPbg=;
Received: from us-smtp-delivery-124.mimecast.com ([63.128.21.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.3)
 id 1lBg3U-0006Rr-Sq
 for v9fs-developer@lists.sourceforge.net; Mon, 15 Feb 2021 15:45:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1613403890;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=eRjZtsA5zhSS/WW5VYasjVbQdw0rYUOiOpY9AmwMNHQ=;
 b=i47rPONr3SPATkRDe9UWHj5Z1nez118tvZzzo6Y4u1GBA8bySc46UekOr3CUQVNCmgB+go
 ai+CGTZvzhrgudImHTTH7+g2HmL+KPPzHOOtYnxg5U49mpp7SfiV/fyD4mAnaITEqIlRaw
 +ePfve4w7ULA6m8I2ARVv8UVz1sqXK4=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-448-MqlpGAkWNeC56cKekoPN7Q-1; Mon, 15 Feb 2021 10:44:49 -0500
X-MC-Unique: MqlpGAkWNeC56cKekoPN7Q-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id BFEF1107ACC7;
 Mon, 15 Feb 2021 15:44:46 +0000 (UTC)
Received: from warthog.procyon.org.uk (ovpn-119-68.rdu2.redhat.com
 [10.10.119.68])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 462C060CEF;
 Mon, 15 Feb 2021 15:44:40 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
To: Trond Myklebust <trondmy@hammerspace.com>,
 Anna Schumaker <anna.schumaker@netapp.com>, Steve French <sfrench@samba.org>, 
 Dominique Martinet <asmadeus@codewreck.org>
Date: Mon, 15 Feb 2021 15:44:39 +0000
Message-ID: <161340387944.1303470.7944159520278177652.stgit@warthog.procyon.org.uk>
In-Reply-To: <161340385320.1303470.2392622971006879777.stgit@warthog.procyon.org.uk>
References: <161340385320.1303470.2392622971006879777.stgit@warthog.procyon.org.uk>
User-Agent: StGit/0.23
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1lBg3U-0006Rr-Sq
Subject: [V9fs-developer] [PATCH 02/33] mm: Add an unlock function for
 PG_private_2/PG_fscache
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
 linux-afs@lists.infradead.org, dhowells@redhat.com, linux-mm@kvack.org,
 linux-cachefs@redhat.com, Alexander Viro <viro@zeniv.linux.org.uk>,
 linux-fsdevel@vger.kernel.org, v9fs-developer@lists.sourceforge.net,
 ceph-devel@vger.kernel.org, Linus Torvalds <torvalds@linux-foundation.org>,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Add a function, unlock_page_private_2(), to unlock PG_private_2 analogous
to that of PG_lock.  Add a kerneldoc banner to that indicating the example
usage case.

A wrapper will need to be placed in the netfs header in the patch that adds
that.

[This implements a suggestion by Linus to not mix the terminology of
 PG_private_2 and PG_fscache in the mm core function]

Suggested-by: Linus Torvalds <torvalds@linux-foundation.org>
Signed-off-by: David Howells <dhowells@redhat.com>
cc: Linus Torvalds <torvalds@linux-foundation.org>
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
Link: https://lore.kernel.org/linux-fsdevel/1330473.1612974547@warthog.procyon.org.uk/
Link: https://lore.kernel.org/linux-fsdevel/CAHk-=wjgA-74ddehziVk=XAEMTKswPu1Yw4uaro1R3ibs27ztw@mail.gmail.com/
---

 include/linux/pagemap.h |    1 +
 mm/filemap.c            |   20 ++++++++++++++++++++
 2 files changed, 21 insertions(+)

diff --git a/include/linux/pagemap.h b/include/linux/pagemap.h
index d5570deff400..365a28ece763 100644
--- a/include/linux/pagemap.h
+++ b/include/linux/pagemap.h
@@ -591,6 +591,7 @@ extern int __lock_page_async(struct page *page, struct wait_page_queue *wait);
 extern int __lock_page_or_retry(struct page *page, struct mm_struct *mm,
 				unsigned int flags);
 extern void unlock_page(struct page *page);
+extern void unlock_page_private_2(struct page *page);
 
 /*
  * Return true if the page was successfully locked
diff --git a/mm/filemap.c b/mm/filemap.c
index 5c9d564317a5..7d321152d579 100644
--- a/mm/filemap.c
+++ b/mm/filemap.c
@@ -1466,6 +1466,26 @@ void unlock_page(struct page *page)
 }
 EXPORT_SYMBOL(unlock_page);
 
+/**
+ * unlock_page_private_2 - Unlock a page that's locked with PG_private_2
+ * @page: The page
+ *
+ * Unlocks a page that's locked with PG_private_2 and wakes up sleepers in
+ * wait_on_page_private_2().
+ *
+ * This is, for example, used when a netfs page is being written to a local
+ * disk cache, thereby allowing writes to the cache for the same page to be
+ * serialised.
+ */
+void unlock_page_private_2(struct page *page)
+{
+	page = compound_head(page);
+	VM_BUG_ON_PAGE(!PagePrivate2(page), page);
+	clear_bit_unlock(PG_private_2, &page->flags);
+	wake_up_page_bit(page, PG_private_2);
+}
+EXPORT_SYMBOL(unlock_page_private_2);
+
 /**
  * end_page_writeback - end writeback against a page
  * @page: the page




_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
