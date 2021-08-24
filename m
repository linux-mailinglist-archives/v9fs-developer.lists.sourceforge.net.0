Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B60F3F5F0F
	for <lists+v9fs-developer@lfdr.de>; Tue, 24 Aug 2021 15:25:44 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1mIWQw-0002jo-LM; Tue, 24 Aug 2021 13:25:42 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <dhowells@redhat.com>) id 1mIWQv-0002jb-PF
 for v9fs-developer@lists.sourceforge.net; Tue, 24 Aug 2021 13:25:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=sLQB5n+AnIYMH/u7Qjukm8iw3igEGc4LWVMg63C75vI=; b=iVs2MiOua5MRU3cbhJog44Yvvm
 XqA+dRR0Z+8RuBmdfq22iTs6MSHrN0C1lDCjc/ICMk9w8krUaH7t2joICpPtSD4OeBAPOm/zGeiX6
 Hc7rSJywvX9TINHoGfmP7oMEO3BMv27OwJXG4Z/o1E19sB/3s/KZXcHvcNrHT5JdRDKM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=sLQB5n+AnIYMH/u7Qjukm8iw3igEGc4LWVMg63C75vI=; b=KAmydJRdV5AOmfQ037x1XosG9c
 3YDWjv4u6GNHD8EghtY7VRmpjEzMpA9SdHk77zhC+vyoVe2RhrnslLP6f/1qixxud9AhaWeVKFHCN
 Czz2WJyCX6jltPF8mp5Y4DfS1x4uzHXm0nhj/VfFIDNM8v/3H60dq2FV6/nv3dUVRkcc=;
Received: from us-smtp-delivery-124.mimecast.com ([216.205.24.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mIWQt-0001WD-Qe
 for v9fs-developer@lists.sourceforge.net; Tue, 24 Aug 2021 13:25:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1629811533;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=sLQB5n+AnIYMH/u7Qjukm8iw3igEGc4LWVMg63C75vI=;
 b=eARvzIDZreFlaZMilDySPEz12M37XOUsHb/IU8By9tBNYWoZ+YnMKshBUH1yr+UpOnsuFR
 SUf6cBJ1rZ9yfUSQcyf8sIM+zbPBjip7vwWV+uobFHEfcUNN5JnMAxK6csUmhQVEy6xJtf
 e0A082FS6725o+oYzW9lI/Jzgm94B9k=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-437-EI8GHJILOPa4mSfNkEDMcA-1; Tue, 24 Aug 2021 09:25:32 -0400
X-MC-Unique: EI8GHJILOPa4mSfNkEDMcA-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 484348015C7;
 Tue, 24 Aug 2021 13:25:30 +0000 (UTC)
Received: from warthog.procyon.org.uk (unknown [10.33.36.86])
 by smtp.corp.redhat.com (Postfix) with ESMTP id ACDE360854;
 Tue, 24 Aug 2021 13:25:23 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
To: "Matthew Wilcox (Oracle)" <willy@infradead.org>
Date: Tue, 24 Aug 2021 14:25:22 +0100
Message-ID: <162981152280.1901565.2264055504466731917.stgit@warthog.procyon.org.uk>
In-Reply-To: <162981147473.1901565.1455657509200944265.stgit@warthog.procyon.org.uk>
References: <162981147473.1901565.1455657509200944265.stgit@warthog.procyon.org.uk>
User-Agent: StGit/0.23
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Spam-Score: -0.8 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [216.205.24.124 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1mIWQt-0001WD-Qe
Subject: [V9fs-developer] [PATCH 4/6] afs: Sort out symlink reading
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
Link: https://lore.kernel.org/r/162687508008.276387.6418924257569297305.stgit@warthog.procyon.org.uk
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
