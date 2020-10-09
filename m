Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A392288AEF
	for <lists+v9fs-developer@lfdr.de>; Fri,  9 Oct 2020 16:31:36 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1kQtQk-0002iQ-QE; Fri, 09 Oct 2020 14:31:34 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <willy@infradead.org>) id 1kQtQf-0002gw-J2
 for v9fs-developer@lists.sourceforge.net; Fri, 09 Oct 2020 14:31:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ck7tjnyWrUbu2fgU3wEmHKO8ECkKRvYNOzxLe93kaKs=; b=EHdXFgErnP5l2dt6ZJiBXRvMKt
 IqPq1oxzdpDsKSoBNMVYe5T714duqg32NnN8L/IEV+D8oEiPfW6CAI6XgKcgvGfQjQ2hgT9dcXQRk
 JiWj5voEOq23UO8d7cMkoSZBlb34j9i0y2M95hQfIa6R3ZzckeCHQVPDBGRaMfLZZI4A=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=ck7tjnyWrUbu2fgU3wEmHKO8ECkKRvYNOzxLe93kaKs=; b=TkePQAXlJMhrHxXxUWc9NMPMLm
 CclKGvgLUoj5WCwsSYMesslYUh3rH1AtLitbJdRlh7YOPIQ+tX5PQNg9gzlROzizkn8ymWLEZFYKP
 Hwnaq5uROvxpL4o8354blnzLQCnwSBDF7xADG6R8E8n4pNinu82IEdQhvCNOxYsoa72s=;
Received: from casper.infradead.org ([90.155.50.34])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kQtQW-008YK0-Vi
 for v9fs-developer@lists.sourceforge.net; Fri, 09 Oct 2020 14:31:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description;
 bh=ck7tjnyWrUbu2fgU3wEmHKO8ECkKRvYNOzxLe93kaKs=; b=BiC282mRNnUukNWWTqgtbnhsqu
 2W6Gbvyh9SISCymJu5kFXw5QdqjGbdQzamuQbRf1rL8tiIeP0p40GR7yl2ar7Eb+6xSyY8upJelEN
 ntmagHzfaNWfBwLcJVs3aeWLtV3tJpfcnnVa/yp99qw7rtgUWxNDXTTwII/m5GhJ7TlS+CpNQSQhq
 wA1CvIYl0LWqu3b5YY0VMcEG1BR4mSICeWJ+Ox/QHS1wPbDG6jm7ZN6TzE2IVH0Yu8DWdd5pc6FLh
 yslfa5C0Y3/JNM4OSc4GK5KFNVIm0ZICpAtFs9Hxnm8fI9rz5cJBc/h+X0blwHudPVU8k6vDV6Cvz
 t42dWX/g==;
Received: from willy by casper.infradead.org with local (Exim 4.92.3 #3 (Red
 Hat Linux)) id 1kQtQI-0005uT-Hr; Fri, 09 Oct 2020 14:31:06 +0000
From: "Matthew Wilcox (Oracle)" <willy@infradead.org>
To: linux-fsdevel@vger.kernel.org
Date: Fri,  9 Oct 2020 15:30:49 +0100
Message-Id: <20201009143104.22673-2-willy@infradead.org>
X-Mailer: git-send-email 2.21.3
In-Reply-To: <20201009143104.22673-1-willy@infradead.org>
References: <20201009143104.22673-1-willy@infradead.org>
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
X-Headers-End: 1kQtQW-008YK0-Vi
Subject: [V9fs-developer] [PATCH v2 01/16] mm: Add AOP_UPDATED_PAGE return
 value
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
 "Matthew Wilcox \(Oracle\)" <willy@infradead.org>, linux-xfs@vger.kernel.org,
 linux-mm@kvack.org, linux-mtd@lists.infradead.org,
 v9fs-developer@lists.sourceforge.net, ceph-devel@vger.kernel.org,
 linux-afs@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Allow synchronous ->readpage implementations to execute more
efficiently by skipping the re-locking of the page.

Signed-off-by: Matthew Wilcox (Oracle) <willy@infradead.org>
---
 Documentation/filesystems/locking.rst |  7 ++++---
 Documentation/filesystems/vfs.rst     | 21 ++++++++++++++-------
 include/linux/fs.h                    |  5 +++++
 mm/filemap.c                          | 15 +++++++++++++--
 4 files changed, 36 insertions(+), 12 deletions(-)

diff --git a/Documentation/filesystems/locking.rst b/Documentation/filesystems/locking.rst
index 64f94a18d97e..06a7a8bf2362 100644
--- a/Documentation/filesystems/locking.rst
+++ b/Documentation/filesystems/locking.rst
@@ -269,7 +269,7 @@ locking rules:
 ops			PageLocked(page)	 i_rwsem
 ======================	======================== =========
 writepage:		yes, unlocks (see below)
-readpage:		yes, unlocks
+readpage:		yes, may unlock
 writepages:
 set_page_dirty		no
 readahead:		yes, unlocks
@@ -294,8 +294,9 @@ swap_deactivate:	no
 ->write_begin(), ->write_end() and ->readpage() may be called from
 the request handler (/dev/loop).
 
-->readpage() unlocks the page, either synchronously or via I/O
-completion.
+->readpage() may return AOP_UPDATED_PAGE if the page is now Uptodate
+or 0 if the page will be unlocked asynchronously by I/O completion.
+If it returns -errno, it should unlock the page.
 
 ->readahead() unlocks the pages that I/O is attempted on like ->readpage().
 
diff --git a/Documentation/filesystems/vfs.rst b/Documentation/filesystems/vfs.rst
index ca52c82e5bb5..16248c299aaa 100644
--- a/Documentation/filesystems/vfs.rst
+++ b/Documentation/filesystems/vfs.rst
@@ -643,7 +643,7 @@ set_page_dirty to write data into the address_space, and writepage and
 writepages to writeback data to storage.
 
 Adding and removing pages to/from an address_space is protected by the
-inode's i_mutex.
+inode's i_rwsem held exclusively.
 
 When data is written to a page, the PG_Dirty flag should be set.  It
 typically remains set until writepage asks for it to be written.  This
@@ -757,12 +757,19 @@ cache in your filesystem.  The following members are defined:
 
 ``readpage``
 	called by the VM to read a page from backing store.  The page
-	will be Locked when readpage is called, and should be unlocked
-	and marked uptodate once the read completes.  If ->readpage
-	discovers that it needs to unlock the page for some reason, it
-	can do so, and then return AOP_TRUNCATED_PAGE.  In this case,
-	the page will be relocated, relocked and if that all succeeds,
-	->readpage will be called again.
+	will be Locked and !Uptodate when readpage is called.  Ideally,
+	the filesystem will bring the page Uptodate and return
+	AOP_UPDATED_PAGE.  If the filesystem encounters an error, it
+	should unlock the page and return a negative errno without marking
+	the page Uptodate.  It does not need to mark the page as Error.
+	If the filesystem returns 0, this means the page will be unlocked
+	asynchronously by I/O completion.  The VFS will wait for the
+	page to be unlocked, so there is no advantage to executing this
+	operation asynchronously.
+
+	The filesystem can also return AOP_TRUNCATED_PAGE to indicate
+	that it had to unlock the page to avoid a deadlock.  The caller
+	will re-check the page cache and call ->readpage again.
 
 ``writepages``
 	called by the VM to write out pages associated with the
diff --git a/include/linux/fs.h b/include/linux/fs.h
index 7519ae003a08..badf80e133fd 100644
--- a/include/linux/fs.h
+++ b/include/linux/fs.h
@@ -273,6 +273,10 @@ struct iattr {
  *  			reference, it should drop it before retrying.  Returned
  *  			by readpage().
  *
+ * @AOP_UPDATED_PAGE: The readpage method has brought the page Uptodate
+ * without releasing the page lock.  This is suitable for synchronous
+ * implementations of readpage.
+ *
  * address_space_operation functions return these large constants to indicate
  * special semantics to the caller.  These are much larger than the bytes in a
  * page to allow for functions that return the number of bytes operated on in a
@@ -282,6 +286,7 @@ struct iattr {
 enum positive_aop_returns {
 	AOP_WRITEPAGE_ACTIVATE	= 0x80000,
 	AOP_TRUNCATED_PAGE	= 0x80001,
+	AOP_UPDATED_PAGE	= 0x80002,
 };
 
 #define AOP_FLAG_CONT_EXPAND		0x0001 /* called from cont_expand */
diff --git a/mm/filemap.c b/mm/filemap.c
index 1aaea26556cc..95b68ec1f22c 100644
--- a/mm/filemap.c
+++ b/mm/filemap.c
@@ -2254,8 +2254,13 @@ ssize_t generic_file_buffered_read(struct kiocb *iocb,
 		 * PG_error will be set again if readpage fails.
 		 */
 		ClearPageError(page);
-		/* Start the actual read. The read will unlock the page. */
+		/* Start the actual read. The read may unlock the page. */
 		error = mapping->a_ops->readpage(filp, page);
+		if (error == AOP_UPDATED_PAGE) {
+			unlock_page(page);
+			error = 0;
+			goto page_ok;
+		}
 
 		if (unlikely(error)) {
 			if (error == AOP_TRUNCATED_PAGE) {
@@ -2619,7 +2624,7 @@ vm_fault_t filemap_fault(struct vm_fault *vmf)
 	 */
 	if (unlikely(!PageUptodate(page)))
 		goto page_not_uptodate;
-
+page_ok:
 	/*
 	 * We've made it this far and we had to drop our mmap_lock, now is the
 	 * time to return to the upper layer and have it re-find the vma and
@@ -2654,6 +2659,8 @@ vm_fault_t filemap_fault(struct vm_fault *vmf)
 	ClearPageError(page);
 	fpin = maybe_unlock_mmap_for_io(vmf, fpin);
 	error = mapping->a_ops->readpage(file, page);
+	if (error == AOP_UPDATED_PAGE)
+		goto page_ok;
 	if (!error) {
 		wait_on_page_locked(page);
 		if (!PageUptodate(page))
@@ -2867,6 +2874,10 @@ static struct page *do_read_cache_page(struct address_space *mapping,
 			err = filler(data, page);
 		else
 			err = mapping->a_ops->readpage(data, page);
+		if (err == AOP_UPDATED_PAGE) {
+			unlock_page(page);
+			goto out;
+		}
 
 		if (err < 0) {
 			put_page(page);
-- 
2.28.0



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
