Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 49F7B437E30
	for <lists+v9fs-developer@lfdr.de>; Fri, 22 Oct 2021 21:11:07 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1mdzwY-0004o8-06; Fri, 22 Oct 2021 19:11:06 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <dhowells@redhat.com>) id 1mdzwX-0004nx-1R
 for v9fs-developer@lists.sourceforge.net; Fri, 22 Oct 2021 19:11:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=BPzkenlSMZ4WvBIKJBhgwjdCFCU11esjTHjWw0tWK7E=; b=Ft/qfEPkNW1brF8JMOS81UgFNb
 MQAZlJP0iB1UElbBRHE/kDebcycuQlqTZmgTdykfoygBvzjQvclMKLx5gyYU9e5F5ur8x7CQ4CqjK
 Mxl/lUaUc9/Nd2crO6Ns8OEhiFhCwQ1H5jhis3UfQwna1wtplgvkeovVavlZpNKLwEdY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=BPzkenlSMZ4WvBIKJBhgwjdCFCU11esjTHjWw0tWK7E=; b=HKXd6CqDTm0yaHAL+DxMZoQ7uO
 +XZm/4RxKXLf43HBD3un2dP2CwfySh0Dlb4HEumF/TIKqegZHP0z99MLIbfVrVKxlX3CmVGgPoPCS
 6z6VbNo2bo/569X5EeYum3tELIFvOrJT8JnFY4rgFatstajhzC0h2gbDuLjx8xJY8Sbk=;
Received: from us-smtp-delivery-124.mimecast.com ([216.205.24.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mdzwV-00CIAu-Ru
 for v9fs-developer@lists.sourceforge.net; Fri, 22 Oct 2021 19:11:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1634929858;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=BPzkenlSMZ4WvBIKJBhgwjdCFCU11esjTHjWw0tWK7E=;
 b=eR3CneQgVFA9jOysz9HFw3fCMtA4TOuh4HdVtplI1/Mh/vdBegPA3clIEFwLxAYvKpbQdM
 BHBJwQplwTaMftNoAL/hh0OENOe/L+23LQ2XrXNu5JydPkB0QgEVTJ2whUJW6Htz9+hAGz
 DRDbQ1FfOCEFzcAlNB1E+EA2UXtPxeo=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-18-yOM6dMl6NA2FN6-oY2aZqg-1; Fri, 22 Oct 2021 15:04:32 -0400
X-MC-Unique: yOM6dMl6NA2FN6-oY2aZqg-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id EE13418D6A2A;
 Fri, 22 Oct 2021 19:04:29 +0000 (UTC)
Received: from warthog.procyon.org.uk (unknown [10.33.36.19])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 63F7BADF9;
 Fri, 22 Oct 2021 19:04:23 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
To: linux-cachefs@redhat.com
Date: Fri, 22 Oct 2021 20:04:22 +0100
Message-ID: <163492946261.1038219.9752426868408291186.stgit@warthog.procyon.org.uk>
In-Reply-To: <163492911924.1038219.13107463173777870713.stgit@warthog.procyon.org.uk>
References: <163492911924.1038219.13107463173777870713.stgit@warthog.procyon.org.uk>
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
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [216.205.24.124 listed in wl.mailspike.net]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [216.205.24.124 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1mdzwV-00CIAu-Ru
Subject: [V9fs-developer] [PATCH v2 23/53] fscache: Provide a function to
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
 linux-cifs@vger.kernel.org, ceph-devel@vger.kernel.org,
 linux-kernel@vger.kernel.org, Matthew Wilcox <willy@infradead.org>,
 linux-afs@lists.infradead.org, dhowells@redhat.com,
 Jeff Layton <jlayton@kernel.com>, Alexander Viro <viro@zeniv.linux.org.uk>,
 Trond Myklebust <trondmy@hammerspace.com>, linux-fsdevel@vger.kernel.org,
 v9fs-developer@lists.sourceforge.net, Omar Sandoval <osandov@osandov.com>,
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
cc: linux-cachefs@redhat.com
---

 include/linux/fscache.h |   22 ++++++++++++++++++++++
 1 file changed, 22 insertions(+)

diff --git a/include/linux/fscache.h b/include/linux/fscache.h
index ba55717f81ca..f24604f0f818 100644
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
