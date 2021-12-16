Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B16BE47786A
	for <lists+v9fs-developer@lfdr.de>; Thu, 16 Dec 2021 17:21:11 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1mxtVF-000459-3c; Thu, 16 Dec 2021 16:21:10 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <dhowells@redhat.com>) id 1mxtVD-00044h-Lc
 for v9fs-developer@lists.sourceforge.net; Thu, 16 Dec 2021 16:21:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=e+iGRLDbEa+SF2KgOzldUhFU8lIJiDS/NtFbSdv7JK0=; b=fRNCzyx5WX9zEgB2OCh3CtmiFb
 jHIx3vamFDhOuWWAwklIJsX2PnB0RgRvSjTflOFdTNyEaxKUTizWeigPmdPXi1Gus2hkKryFKQJz1
 h3Y0wrej42jQDew4Kef62Wh6HJqqXDwL69vwmdOeh+svGXXclJ7aH27Y3FrF1NT2/eLo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=e+iGRLDbEa+SF2KgOzldUhFU8lIJiDS/NtFbSdv7JK0=; b=kFZSqLKnVSEJq5UAXpCq91GzPW
 a2kIZc24lMT4N8jLuvl8MTBXE8czhQOH+CYRRXVx+w0e7eTbQj3dRVbV5UyS2PQLZX2ZAbwkimHI/
 i1TIM/fWSWpZWS4f8OvPIpg47yRse4NhTFNzkm6skUZgyEOn8dBvuIGyUaUsexq7uOho=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mxtV7-0004jt-RX
 for v9fs-developer@lists.sourceforge.net; Thu, 16 Dec 2021 16:21:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1639671656;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=e+iGRLDbEa+SF2KgOzldUhFU8lIJiDS/NtFbSdv7JK0=;
 b=IW9UFnf5aPrZnGO6Mw/+zKiUGSmvu06p91S88Ylkk4JgBLTPawoakvtAjr2l74TYzQx4sK
 CDPiBkY3R/+KOmbzrz3SjRsksowFYDv0hoZVUhkMyerKDWc8+IxwANmIEgeNiwzFScn4NR
 EeFp4a+gI1DoXF70XfbaLhIGx6xicic=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-30-52tVd8dbNT-l04EaDIbUzQ-1; Thu, 16 Dec 2021 11:20:50 -0500
X-MC-Unique: 52tVd8dbNT-l04EaDIbUzQ-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 7DA6F801B31;
 Thu, 16 Dec 2021 16:20:48 +0000 (UTC)
Received: from warthog.procyon.org.uk (unknown [10.33.36.122])
 by smtp.corp.redhat.com (Postfix) with ESMTP id DCBB4795AE;
 Thu, 16 Dec 2021 16:20:44 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
To: linux-cachefs@redhat.com
Date: Thu, 16 Dec 2021 16:20:43 +0000
Message-ID: <163967164397.1823006.2950539849831291830.stgit@warthog.procyon.org.uk>
In-Reply-To: <163967073889.1823006.12237147297060239168.stgit@warthog.procyon.org.uk>
References: <163967073889.1823006.12237147297060239168.stgit@warthog.procyon.org.uk>
User-Agent: StGit/0.23
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Spam-Score: -1.6 (-)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Store the volume coherency data in an xattr and check it when
 we rebind the volume. If it doesn't match the cache volume is moved to the
 graveyard and rebuilt anew. Signed-off-by: David Howells <dhowells@redhat.com>
 --- Content analysis details:   (-1.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [170.10.133.124 listed in wl.mailspike.net]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [170.10.133.124 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1mxtV7-0004jt-RX
Subject: [V9fs-developer] [PATCH v3 52/68] fscache,
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

Signed-off-by: David Howells <dhowells@redhat.com>
---

 fs/cachefiles/internal.h          |    2 +
 fs/cachefiles/volume.c            |   25 ++++++++++-
 fs/cachefiles/xattr.c             |   82 +++++++++++++++++++++++++++++++++++++
 fs/fscache/volume.c               |   14 +++++-
 include/linux/fscache.h           |    2 +
 include/trace/events/cachefiles.h |   42 ++++++++++++++++++-
 6 files changed, 161 insertions(+), 6 deletions(-)

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
index 0601c46a22ef..4881da2c189a 100644
--- a/fs/cachefiles/xattr.c
+++ b/fs/cachefiles/xattr.c
@@ -179,3 +179,85 @@ void cachefiles_prepare_to_write(struct fscache_cookie *cookie)
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
+	kdebug("COOK %*phN", (int)len, p);
+
+	xlen = cachefiles_inject_read_error();
+	if (xlen == 0)
+		xlen = vfs_getxattr(&init_user_ns, dentry, cachefiles_xattr_cache, buf, len);
+	if (xlen >= 0)
+		kdebug("DISK %*phN", (int)xlen, buf);
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
index 0bdd5166d20b..9ad3e44418d2 100644
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
