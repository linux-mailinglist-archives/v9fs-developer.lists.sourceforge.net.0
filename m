Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FD223F976C
	for <lists+v9fs-developer@lfdr.de>; Fri, 27 Aug 2021 11:44:26 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1mJYPL-0000tl-UO; Fri, 27 Aug 2021 09:44:19 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <dhowells@redhat.com>) id 1mJYPI-0000sa-KW
 for v9fs-developer@lists.sourceforge.net; Fri, 27 Aug 2021 09:44:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=kUEWmlXwEslPWNc4ZD+ZKqsO8+ZWy5ojVzHcza3L6Og=; b=K06QOJFYYtE/cc/soFN3ndKASM
 vUNXxAhPdH/Po6aZplbkvFYi6KG3QrZZC9pVnvDS5s13BC3OUgj1WOOxJsRpixh8+UNGx4RnejCsC
 aYOMxbBEkb2mfxR6vGg1bvr4m/sdE/VPP5KzuvHIFyjxxtH/yB/dfUcL0FoHgtuehqUE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=kUEWmlXwEslPWNc4ZD+ZKqsO8+ZWy5ojVzHcza3L6Og=; b=IVpWtA9htU9aUtMWFNnmnmaOMV
 Ija75s/xaerAGF6ARlciLvfXd2ZNa6Vgu/y8CNTgFmMvVXsG0aEhcOZ8hQG9zoCjpGKcd6DPrWm6c
 kvV3BadFJ3H4iETp8FmKd2FC+6fWy0GwK+NCO9AQyrOfvFz01k7yosIfV83cbBuFou1M=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mJYPH-0032wl-Pa
 for v9fs-developer@lists.sourceforge.net; Fri, 27 Aug 2021 09:44:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1630057449;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=kUEWmlXwEslPWNc4ZD+ZKqsO8+ZWy5ojVzHcza3L6Og=;
 b=ROoen8sLe/UEd9ymKkEW7hldHDdFWbNktkt9uQ2P8xKrmUmdRd4YlR1qU06hTBqg9KX4fA
 1+TgAaGNsuml9uVFRbKFxbPWPxUZRBEIR+pVbWajiWjQc7IcMcReKQixdZpJSqVe4aXaUf
 qsnTtkRwCzUg0ahkpXxwWKMPPwSnE+0=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-586-pY8qYvOXPXqARqwH0J9bXw-1; Fri, 27 Aug 2021 05:44:08 -0400
X-MC-Unique: pY8qYvOXPXqARqwH0J9bXw-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 96A4D108EDF0;
 Fri, 27 Aug 2021 09:43:49 +0000 (UTC)
Received: from warthog.procyon.org.uk (unknown [10.33.36.36])
 by smtp.corp.redhat.com (Postfix) with ESMTP id A0D605D6B1;
 Fri, 27 Aug 2021 09:43:46 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
To: "Matthew Wilcox (Oracle)" <willy@infradead.org>
Date: Fri, 27 Aug 2021 10:43:45 +0100
Message-ID: <163005742570.2472992.7800423440314043178.stgit@warthog.procyon.org.uk>
In-Reply-To: <163005740700.2472992.12365214290752300378.stgit@warthog.procyon.org.uk>
References: <163005740700.2472992.12365214290752300378.stgit@warthog.procyon.org.uk>
User-Agent: StGit/0.23
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Spam-Score: -1.6 (-)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  afs_readpage() doesn't get a file pointer when called for
 a symlink, so separate it from regular file pointer handling. Signed-off-by:
 David Howells <dhowells@redhat.com> Reviewed-by: Jeff Layton
 <jlayton@redhat.com> Link:
 https://lore.kernel.org/r/162687508008.276387.6418924257569297305.stgit@warthog.procyon.org.uk/
 # [...] Content analysis details:   (-1.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [170.10.133.124 listed in wl.mailspike.net]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [170.10.133.124 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1mJYPH-0032wl-Pa
Subject: [V9fs-developer] [PATCH v2 2/6] afs: Sort out symlink reading
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
 Jeff Layton <jlayton@redhat.com>, Jeff Layton <jlayton@kernel.org>,
 linux-kernel@vger.kernel.org, dhowells@redhat.com, linux-mm@kvack.org,
 linux-cachefs@redhat.com, v9fs-developer@lists.sourceforge.net,
 linux-fsdevel@vger.kernel.org, ceph-devel@vger.kernel.org,
 Ilya Dryomov <idryomov@gmail.com>, linux-afs@lists.infradead.org,
 devel@lists.orangefs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

afs_readpage() doesn't get a file pointer when called for a symlink, so
separate it from regular file pointer handling.

Signed-off-by: David Howells <dhowells@redhat.com>
Reviewed-by: Jeff Layton <jlayton@redhat.com>
Link: https://lore.kernel.org/r/162687508008.276387.6418924257569297305.stgit@warthog.procyon.org.uk/ # rfc
Link: https://lore.kernel.org/r/162981152280.1901565.2264055504466731917.stgit@warthog.procyon.org.uk/
---

 fs/afs/file.c     |   14 +++++++++-----
 fs/afs/inode.c    |    6 +++---
 fs/afs/internal.h |    3 ++-
 3 files changed, 14 insertions(+), 9 deletions(-)

diff --git a/fs/afs/file.c b/fs/afs/file.c
index db035ae2a134..daa9106b9654 100644
--- a/fs/afs/file.c
+++ b/fs/afs/file.c
@@ -19,6 +19,7 @@
 
 static int afs_file_mmap(struct file *file, struct vm_area_struct *vma);
 static int afs_readpage(struct file *file, struct page *page);
+static int afs_symlink_readpage(struct file *file, struct page *page);
 static void afs_invalidatepage(struct page *page, unsigned int offset,
 			       unsigned int length);
 static int afs_releasepage(struct page *page, gfp_t gfp_flags);
@@ -45,7 +46,7 @@ const struct inode_operations afs_file_inode_operations = {
 	.permission	= afs_permission,
 };
 
-const struct address_space_operations afs_fs_aops = {
+const struct address_space_operations afs_file_aops = {
 	.readpage	= afs_readpage,
 	.readahead	= afs_readahead,
 	.set_page_dirty	= afs_set_page_dirty,
@@ -58,6 +59,12 @@ const struct address_space_operations afs_fs_aops = {
 	.writepages	= afs_writepages,
 };
 
+const struct address_space_operations afs_symlink_aops = {
+	.readpage	= afs_symlink_readpage,
+	.releasepage	= afs_releasepage,
+	.invalidatepage	= afs_invalidatepage,
+};
+
 static const struct vm_operations_struct afs_vm_ops = {
 	.fault		= filemap_fault,
 	.map_pages	= filemap_map_pages,
@@ -306,7 +313,7 @@ static void afs_req_issue_op(struct netfs_read_subrequest *subreq)
 	afs_fetch_data(fsreq->vnode, fsreq);
 }
 
-static int afs_symlink_readpage(struct page *page)
+static int afs_symlink_readpage(struct file *file, struct page *page)
 {
 	struct afs_vnode *vnode = AFS_FS_I(page->mapping->host);
 	struct afs_read *fsreq;
@@ -371,9 +378,6 @@ const struct netfs_read_request_ops afs_req_ops = {
 
 static int afs_readpage(struct file *file, struct page *page)
 {
-	if (!file)
-		return afs_symlink_readpage(page);
-
 	return netfs_readpage(file, page, &afs_req_ops, NULL);
 }
 
diff --git a/fs/afs/inode.c b/fs/afs/inode.c
index 80b6c8d967d5..0dc71b24859f 100644
--- a/fs/afs/inode.c
+++ b/fs/afs/inode.c
@@ -105,7 +105,7 @@ static int afs_inode_init_from_status(struct afs_operation *op,
 		inode->i_mode	= S_IFREG | (status->mode & S_IALLUGO);
 		inode->i_op	= &afs_file_inode_operations;
 		inode->i_fop	= &afs_file_operations;
-		inode->i_mapping->a_ops	= &afs_fs_aops;
+		inode->i_mapping->a_ops	= &afs_file_aops;
 		break;
 	case AFS_FTYPE_DIR:
 		inode->i_mode	= S_IFDIR |  (status->mode & S_IALLUGO);
@@ -123,11 +123,11 @@ static int afs_inode_init_from_status(struct afs_operation *op,
 			inode->i_mode	= S_IFDIR | 0555;
 			inode->i_op	= &afs_mntpt_inode_operations;
 			inode->i_fop	= &afs_mntpt_file_operations;
-			inode->i_mapping->a_ops	= &afs_fs_aops;
+			inode->i_mapping->a_ops	= &afs_symlink_aops;
 		} else {
 			inode->i_mode	= S_IFLNK | status->mode;
 			inode->i_op	= &afs_symlink_inode_operations;
-			inode->i_mapping->a_ops	= &afs_fs_aops;
+			inode->i_mapping->a_ops	= &afs_symlink_aops;
 		}
 		inode_nohighmem(inode);
 		break;
diff --git a/fs/afs/internal.h b/fs/afs/internal.h
index 5ed416f4ff33..beaef0387e85 100644
--- a/fs/afs/internal.h
+++ b/fs/afs/internal.h
@@ -1044,7 +1044,8 @@ extern void afs_dynroot_depopulate(struct super_block *);
 /*
  * file.c
  */
-extern const struct address_space_operations afs_fs_aops;
+extern const struct address_space_operations afs_file_aops;
+extern const struct address_space_operations afs_symlink_aops;
 extern const struct inode_operations afs_file_inode_operations;
 extern const struct file_operations afs_file_operations;
 extern const struct netfs_read_request_ops afs_req_ops;




_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
