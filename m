Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C5DA4927BC
	for <lists+v9fs-developer@lfdr.de>; Tue, 18 Jan 2022 14:55:19 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1n9oxC-0003m2-Tt; Tue, 18 Jan 2022 13:55:17 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <dhowells@redhat.com>) id 1n9ox8-0003lv-M3
 for v9fs-developer@lists.sourceforge.net; Tue, 18 Jan 2022 13:55:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=VF4onKqMIrYu5mloBKsdeoO9FD6g9xK5Udf/2HJaEOo=; b=HcaZa1f/NC16p0LFNl09RLfdGu
 Xd+/iQofBbo0f3DtD25Y8goHf24SDKPDXxX+xFPi6JU1S9PpdyW6Zv1gMJWjceeFfvtEbYrBkkcX6
 /FCHFxd2Xgy5WdljbuwONy1FH1NPNgtQahSb+CJbJoA6J2oZ+CviBINDDU+P4wK3mjQk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=VF4onKqMIrYu5mloBKsdeoO9FD6g9xK5Udf/2HJaEOo=; b=ZV9Z5jf/ORy8oqq45DwSg4e+1k
 04j9WcCqq/sDW1OvPE69X2CeJKdpDtNUsInk2WacwT/9u/f6l1qdPp4fy3GfawHIQGKUS+C3M3G1+
 TEPWw6hJMWDQzwHc8zkrDuOwZFYOGc7RaKyaEwcI1w78zjkFVc12yaBftounx/QdHdGQ=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1n9ox6-0005xJ-PB
 for v9fs-developer@lists.sourceforge.net; Tue, 18 Jan 2022 13:55:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1642514106;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=VF4onKqMIrYu5mloBKsdeoO9FD6g9xK5Udf/2HJaEOo=;
 b=Ft/EeX36ihTrK+KY+x9utp711JR7zeYWwzDXdMP3184EcK1N/+t9EJY+F50vTna0vvIBWk
 PB9q599FC3bcfmW3iQn01ifdpYtWMR1B5+Cdfm0QffUoCwdq9N7Qj7uVw+yGak9kv5UkYO
 nD8JY0QyFMMeu4zSlSX93zm72uxLhuc=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-58-vgBLGJ2uORa7FAsl4Z7w7Q-1; Tue, 18 Jan 2022 08:55:03 -0500
X-MC-Unique: vgBLGJ2uORa7FAsl4Z7w7Q-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 3A5521090017;
 Tue, 18 Jan 2022 13:54:49 +0000 (UTC)
Received: from warthog.procyon.org.uk (unknown [10.33.36.165])
 by smtp.corp.redhat.com (Postfix) with ESMTP id AAE842DE92;
 Tue, 18 Jan 2022 13:54:45 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
To: linux-cachefs@redhat.com
Date: Tue, 18 Jan 2022 13:54:44 +0000
Message-ID: <164251408479.3435901.9540165422908194636.stgit@warthog.procyon.org.uk>
In-Reply-To: <164251396932.3435901.344517748027321142.stgit@warthog.procyon.org.uk>
References: <164251396932.3435901.344517748027321142.stgit@warthog.procyon.org.uk>
User-Agent: StGit/0.23
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Spam-Score: -1.6 (-)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Add a comment into fscache_note_page_release() to explain
 how the page-release optimisation logic works[1]. It's not entirely obvious
 as it has nothing to do with whether or not the netfs file contain [...] 
 Content analysis details:   (-1.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
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
X-Headers-End: 1n9ox6-0005xJ-PB
Subject: [V9fs-developer] [PATCH 08/11] fscache: Add a comment explaining
 how page-release optimisation works
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
 linux-fsdevel@vger.kernel.org, Jeff Layton <jlayton@kernel.org>,
 linux-kernel@vger.kernel.org, Matthew Wilcox <willy@infradead.org>,
 linux-afs@lists.infradead.org, dhowells@redhat.com,
 Steve French <smfrench@gmail.com>, Alexander Viro <viro@zeniv.linux.org.uk>,
 Trond Myklebust <trondmy@hammerspace.com>,
 JeffleXu <jefflexu@linux.alibaba.com>, ceph-devel@vger.kernel.org,
 Omar Sandoval <osandov@osandov.com>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 Anna Schumaker <anna.schumaker@netapp.com>,
 v9fs-developer@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Add a comment into fscache_note_page_release() to explain how the
page-release optimisation logic works[1].  It's not entirely obvious as it
has nothing to do with whether or not the netfs file contains data.

FSCACHE_COOKIE_NO_DATA_TO_READ is set if we have no data in the cache yet
(ie. the backing file lookup was negative, the file is 0 length or the
cookie got invalidated).  It means that we have no data in the cache, not
that the file is necessarily empty on the server.

FSCACHE_COOKIE_HAVE_DATA is set once we've stored data in the backing file.
From that point on, we have data we *could* read - however, it's covered by
pages in the netfs pagecache until at such time one of those covering pages
is released.

So if we've written data to the cache (HAVE_DATA) and there wasn't any data
in the cache when we started (NO_DATA_TO_READ), it may no longer be true
that we can skip reading from the cache.

Read skipping is done by cachefiles_prepare_read().

Note that tracking is not done on a per-page basis, but only on a per-file
basis.

Signed-off-by: David Howells <dhowells@redhat.com>
Reviewed-by: Jeff Layton <jlayton@kernel.org>
cc: linux-cachefs@redhat.com
Link: https://lore.kernel.org/r/043a206f03929c2667a465314144e518070a9b2d.camel@kernel.org/ [1]
---

 include/linux/fscache.h |    5 +++++
 1 file changed, 5 insertions(+)

diff --git a/include/linux/fscache.h b/include/linux/fscache.h
index ede50406bcb0..296c5f1d9f35 100644
--- a/include/linux/fscache.h
+++ b/include/linux/fscache.h
@@ -665,6 +665,11 @@ static inline void fscache_clear_inode_writeback(struct fscache_cookie *cookie,
 static inline
 void fscache_note_page_release(struct fscache_cookie *cookie)
 {
+	/* If we've written data to the cache (HAVE_DATA) and there wasn't any
+	 * data in the cache when we started (NO_DATA_TO_READ), it may no
+	 * longer be true that we can skip reading from the cache - so clear
+	 * the flag that causes reads to be skipped.
+	 */
 	if (cookie &&
 	    test_bit(FSCACHE_COOKIE_HAVE_DATA, &cookie->flags) &&
 	    test_bit(FSCACHE_COOKIE_NO_DATA_TO_READ, &cookie->flags))




_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
