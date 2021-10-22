Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D16F7437DDD
	for <lists+v9fs-developer@lfdr.de>; Fri, 22 Oct 2021 21:08:14 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1mdztl-0004AG-IN; Fri, 22 Oct 2021 19:08:13 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <dhowells@redhat.com>) id 1mdztk-0004A2-Cq
 for v9fs-developer@lists.sourceforge.net; Fri, 22 Oct 2021 19:08:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=0FNAZqHV+9loKM6DOr8EgJ4Vdd0ANZRxxJWFLeXiMmw=; b=cRjEJkAIyP5v6htKzvn4Eqlvc4
 zfNjhDAzMAuzzOoLXbUfIAvU8JI2w65slETvWtJ8HtFu7VObAdJB+BZl6e8CFdgv+zNGLsPro2/kA
 Gdl52MNQPU+QLe/27VCRzfXogkxAe290LQ7Dxd2hdtEZjyfGxHkeKXeO1WqmeUE39IJ8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=0FNAZqHV+9loKM6DOr8EgJ4Vdd0ANZRxxJWFLeXiMmw=; b=QAxEnNwOyDJ7ZtegFULqSWEIzX
 8g/TXzQKNp1A07QcG1ioJVgB1Iklige/7HCgL0llLyNwvucaxcHciBYB/TnlnbkaLhoKTm4DnfVj8
 JQHTeFhUY8NpncPqAOAEnpwp05Uq4rHh9TG2s3Y1XQ347E99usmOixh8VHcjSs4Mds1M=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mdztj-00CHf7-C8
 for v9fs-developer@lists.sourceforge.net; Fri, 22 Oct 2021 19:08:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1634929685;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=0FNAZqHV+9loKM6DOr8EgJ4Vdd0ANZRxxJWFLeXiMmw=;
 b=PzELayPjC7MICSBUUCboohOS9v7d/pbvHs8NAnldcOA+a/uZjvg8qgsrk+MaMvth6JWT8g
 AhHIYSMfREG2prKojZ3S+JJ/64ht+r5D8fEktsG/OG2Lh3mV8aTDKo+7uhD2e04lzT0Q+g
 cz8tqTcqaF6umPd82+AzbNCxe6Hbong=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-136-RwjIMXKIMcypyHTQiCX8MA-1; Fri, 22 Oct 2021 15:06:51 -0400
X-MC-Unique: RwjIMXKIMcypyHTQiCX8MA-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 7353A801FCE;
 Fri, 22 Oct 2021 19:06:49 +0000 (UTC)
Received: from warthog.procyon.org.uk (unknown [10.33.36.19])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 74DF060C04;
 Fri, 22 Oct 2021 19:06:43 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
To: linux-cachefs@redhat.com
Date: Fri, 22 Oct 2021 20:06:42 +0100
Message-ID: <163492960262.1038219.8002050280041934104.stgit@warthog.procyon.org.uk>
In-Reply-To: <163492911924.1038219.13107463173777870713.stgit@warthog.procyon.org.uk>
References: <163492911924.1038219.13107463173777870713.stgit@warthog.procyon.org.uk>
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
 Content preview: Add a couple of macros to report I/O errors and to tell
 fscache
 that the cache is in trouble. Signed-off-by: David Howells
 <dhowells@redhat.com>
 cc: linux-cachefs@redhat.com --- fs/cachefiles/internal.h | 20
 ++++++++++++++++++++ 1 file changed, 20 insertions(+) 
 Content analysis details:   (-1.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [170.10.133.124 listed in wl.mailspike.net]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [170.10.133.124 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1mdztj-00CHf7-C8
Subject: [V9fs-developer] [PATCH v2 33/53] cachefiles: Add I/O error
 reporting macros
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

Add a couple of macros to report I/O errors and to tell fscache that the
cache is in trouble.

Signed-off-by: David Howells <dhowells@redhat.com>
cc: linux-cachefs@redhat.com
---

 fs/cachefiles/internal.h |   20 ++++++++++++++++++++
 1 file changed, 20 insertions(+)

diff --git a/fs/cachefiles/internal.h b/fs/cachefiles/internal.h
index d615213a2fa1..230a1a2bf01d 100644
--- a/fs/cachefiles/internal.h
+++ b/fs/cachefiles/internal.h
@@ -153,6 +153,26 @@ static inline int cachefiles_inject_remove_error(void)
 	return cachefiles_error_injection_state & 2 ? -EIO : 0;
 }
 
+/*
+ * error handling
+ */
+
+#define cachefiles_io_error(___cache, FMT, ...)		\
+do {							\
+	pr_err("I/O Error: " FMT"\n", ##__VA_ARGS__);	\
+	fscache_io_error((___cache)->cache);		\
+	set_bit(CACHEFILES_DEAD, &(___cache)->flags);	\
+} while (0)
+
+#define cachefiles_io_error_obj(object, FMT, ...)			\
+do {									\
+	struct cachefiles_cache *___cache;				\
+									\
+	___cache = (object)->volume->cache;				\
+	cachefiles_io_error(___cache, FMT " [o=%08x]", ##__VA_ARGS__,	\
+			    (object)->debug_id);			\
+} while (0)
+
 
 /*
  * debug tracing




_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
