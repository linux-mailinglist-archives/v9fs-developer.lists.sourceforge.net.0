Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D79AD47DA2E
	for <lists+v9fs-developer@lfdr.de>; Thu, 23 Dec 2021 00:20:07 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1n0Aty-0005Af-GA; Wed, 22 Dec 2021 23:20:06 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <dhowells@redhat.com>) id 1n0Atx-0005AZ-6w
 for v9fs-developer@lists.sourceforge.net; Wed, 22 Dec 2021 23:20:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=b+zEm8F72kVP3O0me+Akj1zJ5UtfBhb4yJTcVBb+lE0=; b=BgWRqiukoyBqgi9m/d6+xhGTht
 Hyo8rGsGBXBlxn90UNFotob9DTe9cHydVefUvZCPAPdF+d7/YpNN6dWeT4TLNLdjnO9Vf96SUxzgo
 wYbO65fWIRrp+75FhY6Lg4aMm68vIm6YYPe0y3owSiJbv6S/1o2vFvk3rpSDkr2nIEZo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=b+zEm8F72kVP3O0me+Akj1zJ5UtfBhb4yJTcVBb+lE0=; b=B8mi/klqDHABDvtiKqVe1ci/WP
 f9kBSB+i02m4OVNMz5nVfIz48EqkPd7155e0ylQPZD/IGFG4wfAOdc+CwQmTAsQzRNfZgV5qvTrTu
 KNxWZzxAeClne0xGxGk8bjZwd1Yma1bJWQYYsJmCC/PWdNZjCy2NehPgqGVqET5c8rE0=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1n0Atw-0006tC-1V
 for v9fs-developer@lists.sourceforge.net; Wed, 22 Dec 2021 23:20:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1640215198;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=b+zEm8F72kVP3O0me+Akj1zJ5UtfBhb4yJTcVBb+lE0=;
 b=cTiAWQtYgxCaSDfP3cSrXI+05CWDMuGskLC5aT91Vuk2V94VQxrJkiHP4AIzaukaShfi5C
 Un/ZS+2tuNbijn40XxcAoQmgsEyo3qDnXnKJ+9T7CtrG7L/vvmblQIuu5A6ANYNuuOiXS3
 k1p7mbCmCV1Hr+9e8IIQT+C3SGkq8PE=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-257-sKbgO_PaPuul4LPtA0vnwQ-1; Wed, 22 Dec 2021 18:19:54 -0500
X-MC-Unique: sKbgO_PaPuul4LPtA0vnwQ-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 61E8A1800D50;
 Wed, 22 Dec 2021 23:19:52 +0000 (UTC)
Received: from warthog.procyon.org.uk (unknown [10.33.36.165])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 46E2C798BF;
 Wed, 22 Dec 2021 23:19:45 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
To: linux-cachefs@redhat.com
Date: Wed, 22 Dec 2021 23:19:44 +0000
Message-ID: <164021518440.640689.6369952464473039268.stgit@warthog.procyon.org.uk>
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
 Content preview: Provide a function to let the netfs update its coherency
 data:
 void fscache_update_cookie(struct fscache_cookie *cookie, const void *aux_data,
 const loff_t *object_size); This will update the auxiliary data and/or the
 size of the object attached to a cookie if either pointer is not-NULL and
 flag that the disk needs to be updated. 
 Content analysis details:   (-1.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [170.10.129.124 listed in wl.mailspike.net]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [170.10.129.124 listed in list.dnswl.org]
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
X-Headers-End: 1n0Atw-0006tC-1V
Subject: [V9fs-developer] [PATCH v4 23/68] fscache: Provide a function to
 let the netfs update its coherency data
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

Provide a function to let the netfs update its coherency data:

	void fscache_update_cookie(struct fscache_cookie *cookie,
				   const void *aux_data,
				   const loff_t *object_size);

This will update the auxiliary data and/or the size of the object attached
to a cookie if either pointer is not-NULL and flag that the disk needs to
be updated.

Note that fscache_unuse_cookie() also allows this to be done.

Signed-off-by: David Howells <dhowells@redhat.com>
Reviewed-by: Jeff Layton <jlayton@kernel.org>
cc: linux-cachefs@redhat.com
Link: https://lore.kernel.org/r/163819610438.215744.4223265964131424954.stgit@warthog.procyon.org.uk/ # v1
Link: https://lore.kernel.org/r/163906913530.143852.18150303220217653820.stgit@warthog.procyon.org.uk/ # v2
Link: https://lore.kernel.org/r/163967117795.1823006.7493373142653442595.stgit@warthog.procyon.org.uk/ # v3
---

 include/linux/fscache.h |   22 ++++++++++++++++++++++
 1 file changed, 22 insertions(+)

diff --git a/include/linux/fscache.h b/include/linux/fscache.h
index 7cdc63c4fe35..fc77648c8af6 100644
--- a/include/linux/fscache.h
+++ b/include/linux/fscache.h
@@ -338,6 +338,28 @@ void __fscache_update_cookie(struct fscache_cookie *cookie, const void *aux_data
 	set_bit(FSCACHE_COOKIE_NEEDS_UPDATE, &cookie->flags);
 }
 
+/**
+ * fscache_update_cookie - Request that a cache object be updated
+ * @cookie: The cookie representing the cache object
+ * @aux_data: The updated auxiliary data for the cookie (may be NULL)
+ * @object_size: The current size of the object (may be NULL)
+ *
+ * Request an update of the index data for the cache object associated with the
+ * cookie.  The auxiliary data on the cookie will be updated first if @aux_data
+ * is set and the object size will be updated and the object possibly trimmed
+ * if @object_size is set.
+ *
+ * See Documentation/filesystems/caching/netfs-api.rst for a complete
+ * description.
+ */
+static inline
+void fscache_update_cookie(struct fscache_cookie *cookie, const void *aux_data,
+			   const loff_t *object_size)
+{
+	if (fscache_cookie_enabled(cookie))
+		__fscache_update_cookie(cookie, aux_data, object_size);
+}
+
 /**
  * fscache_invalidate - Notify cache that an object needs invalidation
  * @cookie: The cookie representing the cache object




_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
