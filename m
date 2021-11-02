Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 280C9442964
	for <lists+v9fs-developer@lfdr.de>; Tue,  2 Nov 2021 09:30:12 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1mhpBK-0005UN-Ko; Tue, 02 Nov 2021 08:30:10 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <dhowells@redhat.com>) id 1mhpBB-0005UD-L0
 for v9fs-developer@lists.sourceforge.net; Tue, 02 Nov 2021 08:30:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=lQPkiNSWXgrpKMkaTxerDBq1oEdjGsBfJnCiF8FyuWs=; b=d/IMNM220/eVYL0j0QxG41inyW
 ak0qkxDoKiskXe7F5gb+Em8SL8sNsQ5+CCWTLMiOq3v4xtfRiGvKP/h4END+bBngdyT20Adj5pO9C
 TKdUL0WpQp//AFVHnrOoGWYVWLTX4AgEd1Jv1Ej8JvatnjmFm3hIOMFoi/1MNAmAlNyI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=lQPkiNSWXgrpKMkaTxerDBq1oEdjGsBfJnCiF8FyuWs=; b=Djry38VCZjSegvRRFE/jY0X3qw
 ga7IWVG578iQHZiWg8l3Mm65unRz1QfME4PcghIIfDvEcT9sPLVhIFQFKtplpWsmat3FVg1gttfNw
 dZKV24myzTdkkKphT/zOr7l4jvA4XK2wStaUrda8sf4RiNf4P3ewV518lnsTw3HYjCks=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mhpBA-0002xW-UG
 for v9fs-developer@lists.sourceforge.net; Tue, 02 Nov 2021 08:30:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1635841795;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=lQPkiNSWXgrpKMkaTxerDBq1oEdjGsBfJnCiF8FyuWs=;
 b=F9W3AHaDEfJf8ZWWw4nLu1/msSHgNowr+UDSOAPKa21cTcgEkhA7+WhstaOdMKwBelUwyv
 6HBs04lMDFzO41khEmtZbh/nmVm/aV2FK4vwuSXwLK6CrY7rjutW9dkcrAbnO0+X1v3YyF
 bCUUIj0+Fr6f/kwo7fJ0HmvIctwSeyI=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-554-_CntGU-xPAO57MhKlo83Uw-1; Tue, 02 Nov 2021 04:29:52 -0400
X-MC-Unique: _CntGU-xPAO57MhKlo83Uw-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 583C61808304;
 Tue,  2 Nov 2021 08:29:50 +0000 (UTC)
Received: from warthog.procyon.org.uk (unknown [10.33.36.19])
 by smtp.corp.redhat.com (Postfix) with ESMTP id EC40D60C0F;
 Tue,  2 Nov 2021 08:29:34 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
To: "Matthew Wilcox (Oracle)" <willy@infradead.org>
Date: Tue, 02 Nov 2021 08:29:34 +0000
Message-ID: <163584177409.4023316.13393356761592464422.stgit@warthog.procyon.org.uk>
In-Reply-To: <163584174921.4023316.8927114426959755223.stgit@warthog.procyon.org.uk>
References: <163584174921.4023316.8927114426959755223.stgit@warthog.procyon.org.uk>
User-Agent: StGit/0.23
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
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
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [170.10.133.124 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [170.10.133.124 listed in wl.mailspike.net]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1mhpBA-0002xW-UG
Subject: [V9fs-developer] [PATCH v3 1/6] afs: Sort out symlink reading
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
 ceph-devel@vger.kernel.org, linux-cachefs@redhat.com,
 linux-fsdevel@vger.kernel.org, v9fs-developer@lists.sourceforge.net,
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
Link: https://lore.kernel.org/r/163005742570.2472992.7800423440314043178.stgit@warthog.procyon.org.uk/ # v2
---

 fs/afs/file.c     |   14 +++++++++-----
 fs/afs/inode.c    |    6 +++---
 fs/afs/internal.h |    3 ++-
 3 files changed, 14 insertions(+), 9 deletions(-)

diff --git a/fs/afs/file.c b/fs/afs/file.c
index e6c447ae91f3..eb11d047c0ae 100644
--- a/fs/afs/file.c
+++ b/fs/afs/file.c
@@ -19,6 +19,7 @@
 
 static int afs_file_mmap(struct file *file, struct vm_area_struct *vma);
 static int afs_readpage(struct file *file, struct page *page);
+static int afs_symlink_readpage(struct file *file, struct page *page);
 static void afs_invalidatepage(struct page *page, unsigned int offset,
 			       unsigned int length);
 static int afs_releasepage(struct page *page, gfp_t gfp_flags);
@@ -49,7 +50,7 @@ const struct inode_operations afs_file_inode_operations = {
 	.permission	= afs_permission,
 };
 
-const struct address_space_operations afs_fs_aops = {
+const struct address_space_operations afs_file_aops = {
 	.readpage	= afs_readpage,
 	.readahead	= afs_readahead,
 	.set_page_dirty	= afs_set_page_dirty,
@@ -62,6 +63,12 @@ const struct address_space_operations afs_fs_aops = {
 	.writepages	= afs_writepages,
 };
 
+const struct address_space_operations afs_symlink_aops = {
+	.readpage	= afs_symlink_readpage,
+	.releasepage	= afs_releasepage,
+	.invalidatepage	= afs_invalidatepage,
+};
+
 static const struct vm_operations_struct afs_vm_ops = {
 	.open		= afs_vm_open,
 	.close		= afs_vm_close,
@@ -313,7 +320,7 @@ static void afs_req_issue_op(struct netfs_read_subrequest *subreq)
 	afs_put_read(fsreq);
 }
 
-static int afs_symlink_readpage(struct page *page)
+static int afs_symlink_readpage(struct file *file, struct page *page)
 {
 	struct afs_vnode *vnode = AFS_FS_I(page->mapping->host);
 	struct afs_read *fsreq;
@@ -378,9 +385,6 @@ const struct netfs_read_request_ops afs_req_ops = {
 
 static int afs_readpage(struct file *file, struct page *page)
 {
-	if (!file)
-		return afs_symlink_readpage(page);
-
 	return netfs_readpage(file, page, &afs_req_ops, NULL);
 }
 
diff --git a/fs/afs/inode.c b/fs/afs/inode.c
index 8fcffea2daf5..16906eb592d9 100644
--- a/fs/afs/inode.c
+++ b/fs/afs/inode.c
@@ -95,7 +95,7 @@ static int afs_inode_init_from_status(struct afs_operation *op,
 		inode->i_mode	= S_IFREG | (status->mode & S_IALLUGO);
 		inode->i_op	= &afs_file_inode_operations;
 		inode->i_fop	= &afs_file_operations;
-		inode->i_mapping->a_ops	= &afs_fs_aops;
+		inode->i_mapping->a_ops	= &afs_file_aops;
 		break;
 	case AFS_FTYPE_DIR:
 		inode->i_mode	= S_IFDIR |  (status->mode & S_IALLUGO);
@@ -113,11 +113,11 @@ static int afs_inode_init_from_status(struct afs_operation *op,
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
index 0ad97a8fc0d4..9357c53faa69 100644
--- a/fs/afs/internal.h
+++ b/fs/afs/internal.h
@@ -1055,7 +1055,8 @@ extern void afs_dynroot_depopulate(struct super_block *);
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
