Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 451881C41E6
	for <lists+v9fs-developer@lfdr.de>; Mon,  4 May 2020 19:14:59 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1jVegE-0007r8-2m; Mon, 04 May 2020 17:14:58 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <dhowells@redhat.com>) id 1jVegD-0007qz-RH
 for v9fs-developer@lists.sourceforge.net; Mon, 04 May 2020 17:14:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=LsFescFgbJSA2iAFdjAnyfOhzdMBffHhgT2MMC4v/KQ=; b=OyOrcDrLlL9QYk0T332cDlKOzI
 Dbfw2HLqay7GClafdQdsIVRqQY+pVBhQaGHwXgyXZPD+Ki9v8fCoUk5O4CaPM27uff5NY+ecY7N/e
 mrOtI6hI98Exj6LcaTM4wp1UvOxOIvly2aLxyxS9rkTm3o1XITOTCH0KsBiD2DlGY7Oo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=LsFescFgbJSA2iAFdjAnyfOhzdMBffHhgT2MMC4v/KQ=; b=R3F7mmp/t3kx3q2VOWHajo+zqG
 hB6jkBLiUJeeqvqmkfC+AxQvCbKQ7M3Bk6wq8QWdjV+zKVlwtp/frTpruneZmN8c5kVslBEgwNRhy
 oivBbFg6mSmICfykrEWbVLXyX1pCf3GzKTGaXB1QrVi4d2tfvVVN0y4X/HvjTo0px1kQ=;
Received: from us-smtp-delivery-1.mimecast.com ([207.211.31.120]
 helo=us-smtp-1.mimecast.com)
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.2)
 id 1jVegC-007ABe-9c
 for v9fs-developer@lists.sourceforge.net; Mon, 04 May 2020 17:14:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1588612490;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=LsFescFgbJSA2iAFdjAnyfOhzdMBffHhgT2MMC4v/KQ=;
 b=CiiTfiUyKqBIT6F7emR5EB8uZY4tHWtk23hpRXYCWHsGDaIhSaCKZqV87vDk+WBU0sqxXM
 NtEiG65csApeTgMXDWhYwHC6+KOJWj8O0FEY/yMUqVYMzNvMZP10nclNmV9A0HhKjFq3IQ
 4SHVx1bpHEigBoc/slJJdyJdylDsBq0=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-311-u1v31251PlieW5aWzdnXPg-1; Mon, 04 May 2020 13:14:48 -0400
X-MC-Unique: u1v31251PlieW5aWzdnXPg-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id C447F8735C0;
 Mon,  4 May 2020 17:14:46 +0000 (UTC)
Received: from warthog.procyon.org.uk (ovpn-118-225.rdu2.redhat.com
 [10.10.118.225])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 3FA416248B;
 Mon,  4 May 2020 17:14:44 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
To: Trond Myklebust <trondmy@hammerspace.com>,
 Anna Schumaker <anna.schumaker@netapp.com>, Steve French <sfrench@samba.org>, 
 Jeff Layton <jlayton@redhat.com>
Date: Mon, 04 May 2020 18:14:43 +0100
Message-ID: <158861248336.340223.1851189950710196001.stgit@warthog.procyon.org.uk>
In-Reply-To: <158861203563.340223.7585359869938129395.stgit@warthog.procyon.org.uk>
References: <158861203563.340223.7585359869938129395.stgit@warthog.procyon.org.uk>
User-Agent: StGit/0.21
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Spam-Score: -0.3 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [207.211.31.120 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [207.211.31.120 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
 -0.2 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jVegC-007ABe-9c
Subject: [V9fs-developer] [RFC PATCH 48/61] afs: Move key to afs_read struct
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

Stash the key used to authenticate read operations in the afs_read struct.
This will be necessary to reissue the operation against the server if a
read from the cache fails in upcoming cache changes.

Signed-off-by: David Howells <dhowells@redhat.com>
---

 fs/afs/dir.c      |    3 ++-
 fs/afs/file.c     |   16 +++++++++-------
 fs/afs/internal.h |    3 ++-
 fs/afs/write.c    |   12 ++++++------
 4 files changed, 19 insertions(+), 15 deletions(-)

diff --git a/fs/afs/dir.c b/fs/afs/dir.c
index d1e1caa23c8b..9d8504885f6a 100644
--- a/fs/afs/dir.c
+++ b/fs/afs/dir.c
@@ -243,6 +243,7 @@ static struct afs_read *afs_read_dir(struct afs_vnode *dvnode, struct key *key)
 		return ERR_PTR(-ENOMEM);
 
 	refcount_set(&req->usage, 1);
+	req->key = key_get(key);
 	req->nr_pages = nr_pages;
 	req->actual_len = i_size; /* May change */
 	req->len = nr_pages * PAGE_SIZE; /* We can ask for more than there is */
@@ -308,7 +309,7 @@ static struct afs_read *afs_read_dir(struct afs_vnode *dvnode, struct key *key)
 
 	if (!test_bit(AFS_VNODE_DIR_VALID, &dvnode->flags)) {
 		trace_afs_reload_dir(dvnode);
-		ret = afs_fetch_data(dvnode, key, req);
+		ret = afs_fetch_data(dvnode, req);
 		if (ret < 0)
 			goto error_unlock;
 
diff --git a/fs/afs/file.c b/fs/afs/file.c
index 39db1e7b186d..834f47c4dc94 100644
--- a/fs/afs/file.c
+++ b/fs/afs/file.c
@@ -211,6 +211,7 @@ void afs_put_read(struct afs_read *req)
 			if (req->pages != req->array)
 				kfree(req->pages);
 		}
+		key_put(req->key);
 		kfree(req);
 	}
 }
@@ -218,7 +219,7 @@ void afs_put_read(struct afs_read *req)
 /*
  * Fetch file data from the volume.
  */
-int afs_fetch_data(struct afs_vnode *vnode, struct key *key, struct afs_read *req)
+int afs_fetch_data(struct afs_vnode *vnode, struct afs_read *req)
 {
 	struct afs_fs_cursor fc;
 	struct afs_status_cb *scb;
@@ -229,14 +230,14 @@ int afs_fetch_data(struct afs_vnode *vnode, struct key *key, struct afs_read *re
 	       vnode->fid.vid,
 	       vnode->fid.vnode,
 	       vnode->fid.unique,
-	       key_serial(key));
+	       key_serial(req->key));
 
 	scb = kzalloc(sizeof(struct afs_status_cb), GFP_KERNEL);
 	if (!scb)
 		return -ENOMEM;
 
 	ret = -ERESTARTSYS;
-	if (afs_begin_vnode_operation(&fc, vnode, key, true)) {
+	if (afs_begin_vnode_operation(&fc, vnode, req->key, true)) {
 		afs_dataversion_t data_version = vnode->status.data_version;
 
 		while (afs_select_fileserver(&fc)) {
@@ -289,6 +290,7 @@ int afs_page_filler(void *data, struct page *page)
 	 * unmarshalling code will clear the unfilled space.
 	 */
 	refcount_set(&req->usage, 1);
+	req->key = key_get(key);
 	req->pos = (loff_t)page->index << PAGE_SHIFT;
 	req->len = PAGE_SIZE;
 	req->nr_pages = 1;
@@ -298,7 +300,7 @@ int afs_page_filler(void *data, struct page *page)
 
 	/* read the contents of the file from the server into the
 	 * page */
-	ret = afs_fetch_data(vnode, key, req);
+	ret = afs_fetch_data(vnode, req);
 	afs_put_read(req);
 
 	if (ret < 0) {
@@ -383,7 +385,6 @@ static int afs_readpages_one(struct file *file, struct address_space *mapping,
 	struct afs_read *req;
 	struct list_head *p;
 	struct page *first, *page;
-	struct key *key = afs_file_key(file);
 	pgoff_t index;
 	int ret, n, i;
 
@@ -407,6 +408,7 @@ static int afs_readpages_one(struct file *file, struct address_space *mapping,
 
 	refcount_set(&req->usage, 1);
 	req->vnode = vnode;
+	req->key = key_get(afs_file_key(file));
 	req->page_done = afs_readpages_page_done;
 	req->pos = first->index;
 	req->pos <<= PAGE_SHIFT;
@@ -436,11 +438,11 @@ static int afs_readpages_one(struct file *file, struct address_space *mapping,
 	} while (req->nr_pages < n);
 
 	if (req->nr_pages == 0) {
-		kfree(req);
+		afs_put_read(req);
 		return 0;
 	}
 
-	ret = afs_fetch_data(vnode, key, req);
+	ret = afs_fetch_data(vnode, req);
 	if (ret < 0)
 		goto error;
 
diff --git a/fs/afs/internal.h b/fs/afs/internal.h
index 633c0f49bb55..68d3eb0dc367 100644
--- a/fs/afs/internal.h
+++ b/fs/afs/internal.h
@@ -227,6 +227,7 @@ struct afs_read {
 	loff_t			actual_len;	/* How much we're actually getting */
 	loff_t			remain;		/* Amount remaining */
 	loff_t			file_size;	/* File size returned by server */
+	struct key		*key;		/* The key to use to reissue the read */
 	afs_dataversion_t	data_version;	/* Version number returned by server */
 	refcount_t		usage;
 	unsigned int		index;		/* Which page we're reading into */
@@ -921,7 +922,7 @@ extern int afs_cache_wb_key(struct afs_vnode *, struct afs_file *);
 extern void afs_put_wb_key(struct afs_wb_key *);
 extern int afs_open(struct inode *, struct file *);
 extern int afs_release(struct inode *, struct file *);
-extern int afs_fetch_data(struct afs_vnode *, struct key *, struct afs_read *);
+extern int afs_fetch_data(struct afs_vnode *, struct afs_read *);
 extern int afs_page_filler(void *, struct page *);
 extern void afs_put_read(struct afs_read *);
 
diff --git a/fs/afs/write.c b/fs/afs/write.c
index 25786237485a..8473f9bc3548 100644
--- a/fs/afs/write.c
+++ b/fs/afs/write.c
@@ -25,9 +25,10 @@ int afs_set_page_dirty(struct page *page)
 /*
  * partly or wholly fill a page that's under preparation for writing
  */
-static int afs_fill_page(struct afs_vnode *vnode, struct key *key,
+static int afs_fill_page(struct file *file,
 			 loff_t pos, unsigned int len, struct page *page)
 {
+	struct afs_vnode *vnode = AFS_FS_I(file_inode(file));
 	struct afs_read *req;
 	size_t p;
 	void *data;
@@ -49,6 +50,7 @@ static int afs_fill_page(struct afs_vnode *vnode, struct key *key,
 		return -ENOMEM;
 
 	refcount_set(&req->usage, 1);
+	req->key = afs_file_key(file);
 	req->pos = pos;
 	req->len = len;
 	req->nr_pages = 1;
@@ -56,7 +58,7 @@ static int afs_fill_page(struct afs_vnode *vnode, struct key *key,
 	req->pages[0] = page;
 	get_page(page);
 
-	ret = afs_fetch_data(vnode, key, req);
+	ret = afs_fetch_data(vnode, req);
 	afs_put_read(req);
 	if (ret < 0) {
 		if (ret == -ENOENT) {
@@ -80,7 +82,6 @@ int afs_write_begin(struct file *file, struct address_space *mapping,
 {
 	struct afs_vnode *vnode = AFS_FS_I(file_inode(file));
 	struct page *page;
-	struct key *key = afs_file_key(file);
 	unsigned long priv;
 	unsigned f, from = pos & (PAGE_SIZE - 1);
 	unsigned t, to = from + len;
@@ -100,7 +101,7 @@ int afs_write_begin(struct file *file, struct address_space *mapping,
 		return -ENOMEM;
 
 	if (!PageUptodate(page) && len != PAGE_SIZE) {
-		ret = afs_fill_page(vnode, key, pos & PAGE_MASK, PAGE_SIZE, page);
+		ret = afs_fill_page(file, pos & PAGE_MASK, PAGE_SIZE, page);
 		if (ret < 0) {
 			unlock_page(page);
 			put_page(page);
@@ -183,7 +184,6 @@ int afs_write_end(struct file *file, struct address_space *mapping,
 		  struct page *page, void *fsdata)
 {
 	struct afs_vnode *vnode = AFS_FS_I(file_inode(file));
-	struct key *key = afs_file_key(file);
 	loff_t i_size, maybe_i_size;
 	int ret;
 
@@ -207,7 +207,7 @@ int afs_write_end(struct file *file, struct address_space *mapping,
 			 * unmarshalling routine will take care of clearing any
 			 * bits that are beyond the EOF.
 			 */
-			ret = afs_fill_page(vnode, key, pos + copied,
+			ret = afs_fill_page(file, pos + copied,
 					    len - copied, page);
 			if (ret < 0)
 				goto out;




_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
