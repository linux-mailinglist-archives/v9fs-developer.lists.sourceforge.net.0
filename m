Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7961244B4C6
	for <lists+v9fs-developer@lfdr.de>; Tue,  9 Nov 2021 22:30:19 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1mkYh7-0001X7-W3; Tue, 09 Nov 2021 21:30:18 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <dhowells@redhat.com>) id 1mkYh6-0001X1-83
 for v9fs-developer@lists.sourceforge.net; Tue, 09 Nov 2021 21:30:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=BOSFjmze2lq+KCADzfQWnIbaZ/LmbdWfVW3/mH571yI=; b=IoZSpT3A8Y/YAy52IN0icXNhrj
 xiOMRwLd46fbaRjkLYVIWe/DbmmCqhy9+rm7XKWue4tAJKBK3iQo6Kpy0RRAj75zM0UAfSLOod+Ef
 EFRBPiZh/fQ10bNhvN1wtMnqFXww3S6zsKm1DzkOO0siAm4OXQ0P50JD+1BTi6GXnMfY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=BOSFjmze2lq+KCADzfQWnIbaZ/LmbdWfVW3/mH571yI=; b=U4Ii7ystYQ2fO21SU7vYabfaBO
 /PLl+SzEaewxGHckCcIPJyqqlknPBszJLDzYPtTjmPFT39CVb/AEL0BpDAhoMAuDAPoo+qFn7/ZFc
 Pi95yg1lBzO+DdPD2NzZxHFHo/tEkqET3R20cbgzKx3l/cXxL2rNJK6c/7Uzgri7yiH8=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mkYh5-0001IW-IX
 for v9fs-developer@lists.sourceforge.net; Tue, 09 Nov 2021 21:30:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1636493409;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=BOSFjmze2lq+KCADzfQWnIbaZ/LmbdWfVW3/mH571yI=;
 b=FGUt+g5+NiJGpi2oUMkTg/WkDywYxqxaTzY7+ZKSqfqTqwjcP5+hGOG0gMpVRgKD0VRa3R
 j5U5Wlm40qZ+LnZspbP66FOIkeyYeGbYv6x9vO7fjghXY9ITj/XdUzTQWKBGGcfOCMD/xK
 dTkP0kg7Mg+c9Da/DTFZhkXS9R36niM=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-280-tj2_vvt-PxSmzOnxbJoAxw-1; Tue, 09 Nov 2021 16:27:40 -0500
X-MC-Unique: tj2_vvt-PxSmzOnxbJoAxw-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id EE03787D54C;
 Tue,  9 Nov 2021 21:27:38 +0000 (UTC)
Received: from warthog.procyon.org.uk (unknown [10.33.37.68])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 23BB710016F4;
 Tue,  9 Nov 2021 21:27:35 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
To: "Matthew Wilcox (Oracle)" <willy@infradead.org>
Date: Tue, 09 Nov 2021 21:27:35 +0000
Message-ID: <163649325519.309189.15072332908703129455.stgit@warthog.procyon.org.uk>
In-Reply-To: <163649323416.309189.4637503793406396694.stgit@warthog.procyon.org.uk>
References: <163649323416.309189.4637503793406396694.stgit@warthog.procyon.org.uk>
User-Agent: StGit/0.23
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Spam-Score: -1.6 (-)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Add a convenience function, folio_inode() that will get the
 host inode from a folio's mapping. Changes: ver #3: - Fix mistake in function
 description[2]. ver #2: - Fix contradiction between doc and implementation
 by disallowing use with swap caches[1]. 
 Content analysis details:   (-1.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [170.10.129.124 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [170.10.129.124 listed in wl.mailspike.net]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1mkYh5-0001IW-IX
Subject: [V9fs-developer] [PATCH v4 2/5] folio: Add a function to get the
 host inode for a folio
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
 kafs-testing@auristor.com, Jeff Layton <jlayton@kernel.org>,
 linux-kernel@vger.kernel.org, dhowells@redhat.com, linux-mm@kvack.org,
 ceph-devel@vger.kernel.org, linux-cachefs@redhat.com,
 linux-fsdevel@vger.kernel.org, v9fs-developer@lists.sourceforge.net,
 Ilya Dryomov <idryomov@gmail.com>, linux-afs@lists.infradead.org,
 devel@lists.orangefs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Add a convenience function, folio_inode() that will get the host inode from
a folio's mapping.

Changes:
 ver #3:
  - Fix mistake in function description[2].
 ver #2:
  - Fix contradiction between doc and implementation by disallowing use
    with swap caches[1].

Signed-off-by: David Howells <dhowells@redhat.com>
Reviewed-by: Matthew Wilcox (Oracle) <willy@infradead.org>
Tested-by: Jeff Layton <jlayton@kernel.org>
Tested-by: Dominique Martinet <asmadeus@codewreck.org>
Tested-by: kafs-testing@auristor.com
Link: https://lore.kernel.org/r/YST8OcVNy02Rivbm@casper.infradead.org/ [1]
Link: https://lore.kernel.org/r/YYKLkBwQdtn4ja+i@casper.infradead.org/ [2]
Link: https://lore.kernel.org/r/162880453171.3369675.3704943108660112470.stgit@warthog.procyon.org.uk/ # rfc
Link: https://lore.kernel.org/r/162981151155.1901565.7010079316994382707.stgit@warthog.procyon.org.uk/
Link: https://lore.kernel.org/r/163005744370.2472992.18324470937328925723.stgit@warthog.procyon.org.uk/ # v2
Link: https://lore.kernel.org/r/163584184628.4023316.9386282630968981869.stgit@warthog.procyon.org.uk/ # v3
---

 include/linux/pagemap.h |   14 ++++++++++++++
 mm/page-writeback.c     |    2 +-
 2 files changed, 15 insertions(+), 1 deletion(-)

diff --git a/include/linux/pagemap.h b/include/linux/pagemap.h
index 1f560aecd9b5..1a0c646eb6ff 100644
--- a/include/linux/pagemap.h
+++ b/include/linux/pagemap.h
@@ -253,6 +253,20 @@ static inline struct address_space *page_mapping_file(struct page *page)
 	return folio_mapping(folio);
 }
 
+/**
+ * folio_inode - Get the host inode for this folio.
+ * @folio: The folio.
+ *
+ * For folios which are in the page cache, return the inode that this folio
+ * belongs to.
+ *
+ * Do not call this for folios which aren't in the page cache.
+ */
+static inline struct inode *folio_inode(struct folio *folio)
+{
+	return folio->mapping->host;
+}
+
 static inline bool page_cache_add_speculative(struct page *page, int count)
 {
 	VM_BUG_ON_PAGE(PageTail(page), page);
diff --git a/mm/page-writeback.c b/mm/page-writeback.c
index 2d498bb62248..a613f8ef6a02 100644
--- a/mm/page-writeback.c
+++ b/mm/page-writeback.c
@@ -2967,7 +2967,7 @@ EXPORT_SYMBOL_GPL(folio_wait_writeback_killable);
  */
 void folio_wait_stable(struct folio *folio)
 {
-	if (folio->mapping->host->i_sb->s_iflags & SB_I_STABLE_WRITES)
+	if (folio_inode(folio)->i_sb->s_iflags & SB_I_STABLE_WRITES)
 		folio_wait_writeback(folio);
 }
 EXPORT_SYMBOL_GPL(folio_wait_stable);




_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
