Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 43CA847DB05
	for <lists+v9fs-developer@lfdr.de>; Thu, 23 Dec 2021 00:27:48 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1n0B1O-0000yr-IV; Wed, 22 Dec 2021 23:27:46 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <dhowells@redhat.com>) id 1n0B1N-0000yb-BB
 for v9fs-developer@lists.sourceforge.net; Wed, 22 Dec 2021 23:27:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Merh4RMERuLdh/dNpFgNG8aV0+XsfCm0vO1TgYpHo3w=; b=lnjJN11jAdVK2SKyrH6rbAZ+bg
 NA4d0wCusnZqnsg11oA/GqPKA813LvL/YVkQWihHNXMmSXO6FO5DZtLE3+LTUa8w2TZN0ee1z5Sry
 /WdJk4r0tYeiFFSCvJUX+d9puxh0+iEW6qWq1KZB+zAqViCznL5hoOK4FhZBDG7nT7Vw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Merh4RMERuLdh/dNpFgNG8aV0+XsfCm0vO1TgYpHo3w=; b=QUZaBrtnv9o3zU7+zFLvGxVmq9
 TkYDmK8j+oq8coT3VP7My6l968M1BA5wL0iBmsQxjw6Vqn7/63cw/HvCpAebsRwOxM4fu/e1s9AiM
 KIYxdJj+PC6Rf9mvyDwvupGygUbtoV97yFSavM0i/kJO1WXF8fSLIcO8Uhp6xgWTdEIU=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1n0B18-006iCV-1H
 for v9fs-developer@lists.sourceforge.net; Wed, 22 Dec 2021 23:27:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1640215644;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=Merh4RMERuLdh/dNpFgNG8aV0+XsfCm0vO1TgYpHo3w=;
 b=J0H72owHb1Rpf0Mh1kjLpCPB8RUnCWdW1evNHTnBlsjv6o5GINn+CRzfpvWiqIz9y6LHVw
 hFCL0dOfO0r9l26R3UoW7DCje2jgpSq4vUYVpbC/v+ByZzslgH+mUfOmnY7YtwN2tgzey6
 nrYGNj4loQDgTjeoMiFhxwEAo0KEVIA=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-589-Ee1QD8cWNT-KJ6vsCREdEQ-1; Wed, 22 Dec 2021 18:27:21 -0500
X-MC-Unique: Ee1QD8cWNT-KJ6vsCREdEQ-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 8B51B1030C20;
 Wed, 22 Dec 2021 23:27:18 +0000 (UTC)
Received: from warthog.procyon.org.uk (unknown [10.33.36.165])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 4596379A23;
 Wed, 22 Dec 2021 23:27:12 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
To: linux-cachefs@redhat.com
Date: Wed, 22 Dec 2021 23:27:11 +0000
Message-ID: <164021563138.640689.15851092065380543119.stgit@warthog.procyon.org.uk>
In-Reply-To: <164021479106.640689.17404516570194656552.stgit@warthog.procyon.org.uk>
References: <164021479106.640689.17404516570194656552.stgit@warthog.procyon.org.uk>
User-Agent: StGit/0.23
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Spam-Score: -1.6 (-)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Store the volume coherency data in an xattr and check it when
 we rebind the volume. If it doesn't match the cache volume is moved to the
 graveyard and rebuilt anew. Changes ======= ver #4: - Remove a couple of
 debugging prints. 
 Content analysis details:   (-1.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [170.10.129.124 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [170.10.129.124 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1n0B18-006iCV-1H
Subject: [V9fs-developer] [PATCH v4 52/68] fscache,
 cachefiles: Store the volume coherency data
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
Cc: Steve French <sfrench@samba.org>, linux-nfs@vger.kernel.org,
 linux-cifs@vger.kernel.org, linux-fsdevel@vger.kernel.org,
 Jeff Layton <jlayton@kernel.org>, linux-kernel@vger.kernel.org,
 Matthew Wilcox <willy@infradead.org>, linux-afs@lists.infradead.org,
 dhowells@redhat.com, v9fs-developer@lists.sourceforge.net,
 Alexander Viro <viro@zeniv.linux.org.uk>,
 Trond Myklebust <trondmy@hammerspace.com>,
 JeffleXu <jefflexu@linux.alibaba.com>, ceph-devel@vger.kernel.org,
 Omar Sandoval <osandov@osandov.com>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 Anna Schumaker <anna.schumaker@netapp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Store the volume coherency data in an xattr and check it when we rebind the
volume.  If it doesn't match the cache volume is moved to the graveyard and
rebuilt anew.

Changes
=======
ver #4:
 - Remove a couple of debugging prints.

Signed-off-by: David Howells <dhowells@redhat.com>
Link: https://lore.kernel.org/r/163967164397.1823006.2950539849831291830.stgit@warthog.procyon.org.uk/ # v3
---

 fs/cachefiles/internal.h          |    2 +
 fs/cachefiles/volume.c            |   25 +++++++++++-
 fs/cachefiles/xattr.c             |   78 +++++++++++++++++++++++++++++++++++++
 fs/fscache/volume.c               |   14 ++++++-
 include/linux/fscache.h           |    2 +
 include/trace/events/cachefiles.h |   42 +++++++++++++++++++-
 6 files changed, 157 insertions(+), 6 deletions(-)

diff --git a/fs/cachefiles/internal.h b/fs/cachefiles/internal.h
index d5868f5514d3..abdd1b66f6b9 100644
--- a/fs/cachefiles/internal.h
+++ b/fs/cachefiles/internal.h
@@ -270,6 +270,8 @@ extern int cachefiles_remove_object_xattr(struct cachefiles_cache *cache,
 					  struct cachefiles_object *object,
 					  struct dentry *dentry);
 extern void cachefiles_prepare_to_write(struct fscache_cookie *cookie);
+extern bool cachefiles_set_volume_xattr(struct cachefiles_volume *volume);
+extern int cachefiles_check_volume_xattr(struct cachefiles_volume *volume);
 
 /*
  * Error handling
diff --git a/fs/cachefiles/volume.c b/fs/cachefiles/volume.c
index 4a14f5e72764..89df0ba8ba5e 100644
--- a/fs/cachefiles/volume.c
+++ b/fs/cachefiles/volume.c
@@ -22,7 +22,8 @@ void cachefiles_acquire_volume(struct fscache_volume *vcookie)
 	struct dentry *vdentry, *fan;
 	size_t len;
 	char *name;
-	int n_accesses, i;
+	bool is_new = false;
+	int ret, n_accesses, i;
 
 	_enter("");
 
@@ -43,11 +44,29 @@ void cachefiles_acquire_volume(struct fscache_volume *vcookie)
 	memcpy(name + 1, vcookie->key + 1, len);
 	name[len + 1] = 0;
 
-	vdentry = cachefiles_get_directory(cache, cache->store, name, NULL);
+retry:
+	vdentry = cachefiles_get_directory(cache, cache->store, name, &is_new);
 	if (IS_ERR(vdentry))
 		goto error_name;
 	volume->dentry = vdentry;
 
+	if (is_new) {
+		if (!cachefiles_set_volume_xattr(volume))
+			goto error_dir;
+	} else {
+		ret = cachefiles_check_volume_xattr(volume);
+		if (ret < 0) {
+			if (ret != -ESTALE)
+				goto error_dir;
+			inode_lock_nested(d_inode(cache->store), I_MUTEX_PARENT);
+			cachefiles_bury_object(cache, NULL, cache->store, vdentry,
+					       FSCACHE_VOLUME_IS_WEIRD);
+			cachefiles_put_directory(volume->dentry);
+			cond_resched();
+			goto retry;
+		}
+	}
+	
 	for (i = 0; i < 256; i++) {
 		sprintf(name, "@%02x", i);
 		fan = cachefiles_get_directory(cache, vdentry, name, NULL);
@@ -74,6 +93,7 @@ void cachefiles_acquire_volume(struct fscache_volume *vcookie)
 error_fan:
 	for (i = 0; i < 256; i++)
 		cachefiles_put_directory(volume->fanout[i]);
+error_dir:
 	cachefiles_put_directory(volume->dentry);
 error_name:
 	kfree(name);
@@ -114,5 +134,6 @@ void cachefiles_free_volume(struct fscache_volume *vcookie)
 void cachefiles_withdraw_volume(struct cachefiles_volume *volume)
 {
 	fscache_withdraw_volume(volume->vcookie);
+	cachefiles_set_volume_xattr(volume);
 	__cachefiles_free_volume(volume);
 }
diff --git a/fs/cachefiles/xattr.c b/fs/cachefiles/xattr.c
index 0601c46a22ef..83f41bd0c3a9 100644
--- a/fs/cachefiles/xattr.c
+++ b/fs/cachefiles/xattr.c
@@ -179,3 +179,81 @@ void cachefiles_prepare_to_write(struct fscache_cookie *cookie)
 		cachefiles_end_secure(cache, saved_cred);
 	}
 }
+
+/*
+ * Set the state xattr on a volume directory.
+ */
+bool cachefiles_set_volume_xattr(struct cachefiles_volume *volume)
+{
+	unsigned int len = volume->vcookie->coherency_len;
+	const void *p = volume->vcookie->coherency;
+	struct dentry *dentry = volume->dentry;
+	int ret;
+
+	_enter("%x,#%d", volume->vcookie->debug_id, len);
+
+	ret = cachefiles_inject_write_error();
+	if (ret == 0)
+		ret = vfs_setxattr(&init_user_ns, dentry, cachefiles_xattr_cache,
+				   p, len, 0);
+	if (ret < 0) {
+		trace_cachefiles_vfs_error(NULL, d_inode(dentry), ret,
+					   cachefiles_trace_setxattr_error);
+		trace_cachefiles_vol_coherency(volume, d_inode(dentry)->i_ino,
+					       cachefiles_coherency_vol_set_fail);
+		if (ret != -ENOMEM)
+			cachefiles_io_error(
+				volume->cache, "Failed to set xattr with error %d", ret);
+	} else {
+		trace_cachefiles_vol_coherency(volume, d_inode(dentry)->i_ino,
+					       cachefiles_coherency_vol_set_ok);
+	}
+
+	_leave(" = %d", ret);
+	return ret == 0;
+}
+
+/*
+ * Check the consistency between the backing cache and the volume cookie.
+ */
+int cachefiles_check_volume_xattr(struct cachefiles_volume *volume)
+{
+	struct cachefiles_xattr *buf;
+	struct dentry *dentry = volume->dentry;
+	unsigned int len = volume->vcookie->coherency_len;
+	const void *p = volume->vcookie->coherency;
+	enum cachefiles_coherency_trace why;
+	ssize_t xlen;
+	int ret = -ESTALE;
+
+	_enter("");
+
+	buf = kmalloc(len, GFP_KERNEL);
+	if (!buf)
+		return -ENOMEM;
+
+	xlen = cachefiles_inject_read_error();
+	if (xlen == 0)
+		xlen = vfs_getxattr(&init_user_ns, dentry, cachefiles_xattr_cache, buf, len);
+	if (xlen != len) {
+		if (xlen < 0) {
+			trace_cachefiles_vfs_error(NULL, d_inode(dentry), xlen,
+						   cachefiles_trace_getxattr_error);
+			if (xlen == -EIO)
+				cachefiles_io_error(
+					volume->cache,
+					"Failed to read xattr with error %zd", xlen);
+		}
+		why = cachefiles_coherency_vol_check_xattr;
+	} else if (memcmp(buf->data, p, len) != 0) {
+		why = cachefiles_coherency_vol_check_cmp;
+	} else {
+		why = cachefiles_coherency_vol_check_ok;
+		ret = 0;
+	}
+
+	trace_cachefiles_vol_coherency(volume, d_inode(dentry)->i_ino, why);
+	kfree(buf);
+	_leave(" = %d", ret);
+	return ret;
+}
diff --git a/fs/fscache/volume.c b/fs/fscache/volume.c
index e1a8e92a6adb..a57c6cbee858 100644
--- a/fs/fscache/volume.c
+++ b/fs/fscache/volume.c
@@ -205,15 +205,22 @@ static struct fscache_volume *fscache_alloc_volume(const char *volume_key,
 	size_t klen, hlen;
 	char *key;
 
+	if (!coherency_data)
+		coherency_len = 0;
+
 	cache = fscache_lookup_cache(cache_name, false);
 	if (IS_ERR(cache))
 		return NULL;
 
-	volume = kzalloc(sizeof(*volume), GFP_KERNEL);
+	volume = kzalloc(struct_size(volume, coherency, coherency_len),
+			 GFP_KERNEL);
 	if (!volume)
 		goto err_cache;
 
 	volume->cache = cache;
+	volume->coherency_len = coherency_len;
+	if (coherency_data)
+		memcpy(volume->coherency, coherency_data, coherency_len);
 	INIT_LIST_HEAD(&volume->proc_link);
 	INIT_WORK(&volume->work, fscache_create_volume_work);
 	refcount_set(&volume->ref, 1);
@@ -421,8 +428,11 @@ void __fscache_relinquish_volume(struct fscache_volume *volume,
 	if (WARN_ON(test_and_set_bit(FSCACHE_VOLUME_RELINQUISHED, &volume->flags)))
 		return;
 
-	if (invalidate)
+	if (invalidate) {
 		set_bit(FSCACHE_VOLUME_INVALIDATE, &volume->flags);
+	} else if (coherency_data) {
+		memcpy(volume->coherency, coherency_data, volume->coherency_len);
+	}
 
 	fscache_put_volume(volume, fscache_volume_put_relinquish);
 }
diff --git a/include/linux/fscache.h b/include/linux/fscache.h
index 86b1c0db1de5..7bd35f60d19a 100644
--- a/include/linux/fscache.h
+++ b/include/linux/fscache.h
@@ -87,6 +87,8 @@ struct fscache_volume {
 #define FSCACHE_VOLUME_COLLIDED_WITH	2	/* Volume was collided with */
 #define FSCACHE_VOLUME_ACQUIRE_PENDING	3	/* Volume is waiting to complete acquisition */
 #define FSCACHE_VOLUME_CREATING		4	/* Volume is being created on disk */
+	u8				coherency_len;	/* Length of the coherency data */
+	u8				coherency[];	/* Coherency data */
 };
 
 /*
diff --git a/include/trace/events/cachefiles.h b/include/trace/events/cachefiles.h
index ab1376ebc3ab..1172529b5b49 100644
--- a/include/trace/events/cachefiles.h
+++ b/include/trace/events/cachefiles.h
@@ -40,6 +40,7 @@ enum fscache_why_object_killed {
 	FSCACHE_OBJECT_NO_SPACE,
 	FSCACHE_OBJECT_WAS_RETIRED,
 	FSCACHE_OBJECT_WAS_CULLED,
+	FSCACHE_VOLUME_IS_WEIRD,
 };
 
 enum cachefiles_coherency_trace {
@@ -53,6 +54,11 @@ enum cachefiles_coherency_trace {
 	cachefiles_coherency_check_xattr,
 	cachefiles_coherency_set_fail,
 	cachefiles_coherency_set_ok,
+	cachefiles_coherency_vol_check_cmp,
+	cachefiles_coherency_vol_check_ok,
+	cachefiles_coherency_vol_check_xattr,
+	cachefiles_coherency_vol_set_fail,
+	cachefiles_coherency_vol_set_ok,
 };
 
 enum cachefiles_trunc_trace {
@@ -103,7 +109,8 @@ enum cachefiles_error_trace {
 	EM(FSCACHE_OBJECT_INVALIDATED,	"inval")		\
 	EM(FSCACHE_OBJECT_NO_SPACE,	"no_space")		\
 	EM(FSCACHE_OBJECT_WAS_RETIRED,	"was_retired")		\
-	E_(FSCACHE_OBJECT_WAS_CULLED,	"was_culled")
+	EM(FSCACHE_OBJECT_WAS_CULLED,	"was_culled")		\
+	E_(FSCACHE_VOLUME_IS_WEIRD,	"volume_weird")
 
 #define cachefiles_obj_ref_traces					\
 	EM(cachefiles_obj_get_ioreq,		"GET ioreq")		\
@@ -129,7 +136,12 @@ enum cachefiles_error_trace {
 	EM(cachefiles_coherency_check_type,	"BAD type")		\
 	EM(cachefiles_coherency_check_xattr,	"BAD xatt")		\
 	EM(cachefiles_coherency_set_fail,	"SET fail")		\
-	E_(cachefiles_coherency_set_ok,		"SET ok  ")
+	EM(cachefiles_coherency_set_ok,		"SET ok  ")		\
+	EM(cachefiles_coherency_vol_check_cmp,	"VOL BAD cmp ")		\
+	EM(cachefiles_coherency_vol_check_ok,	"VOL OK      ")		\
+	EM(cachefiles_coherency_vol_check_xattr,"VOL BAD xatt")		\
+	EM(cachefiles_coherency_vol_set_fail,	"VOL SET fail")		\
+	E_(cachefiles_coherency_vol_set_ok,	"VOL SET ok  ")
 
 #define cachefiles_trunc_traces						\
 	EM(cachefiles_trunc_dio_adjust,		"DIOADJ")		\
@@ -365,6 +377,32 @@ TRACE_EVENT(cachefiles_coherency,
 		      __entry->content)
 	    );
 
+TRACE_EVENT(cachefiles_vol_coherency,
+	    TP_PROTO(struct cachefiles_volume *volume,
+		     ino_t ino,
+		     enum cachefiles_coherency_trace why),
+
+	    TP_ARGS(volume, ino, why),
+
+	    /* Note that obj may be NULL */
+	    TP_STRUCT__entry(
+		    __field(unsigned int,			vol	)
+		    __field(enum cachefiles_coherency_trace,	why	)
+		    __field(u64,				ino	)
+			     ),
+
+	    TP_fast_assign(
+		    __entry->vol	= volume->vcookie->debug_id;
+		    __entry->why	= why;
+		    __entry->ino	= ino;
+			   ),
+
+	    TP_printk("V=%08x %s i=%llx",
+		      __entry->vol,
+		      __print_symbolic(__entry->why, cachefiles_coherency_traces),
+		      __entry->ino)
+	    );
+
 TRACE_EVENT(cachefiles_prep_read,
 	    TP_PROTO(struct netfs_read_subrequest *sreq,
 		     enum netfs_read_source source,




_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
