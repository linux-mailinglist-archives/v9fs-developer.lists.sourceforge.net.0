Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 340A44321AE
	for <lists+v9fs-developer@lfdr.de>; Mon, 18 Oct 2021 17:04:06 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1mcUBI-00079t-TX; Mon, 18 Oct 2021 15:04:04 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <dhowells@redhat.com>) id 1mcUBE-00079W-Su
 for v9fs-developer@lists.sourceforge.net; Mon, 18 Oct 2021 15:04:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=HO9YymjW83uus3ZxQrl12j24vv8cDVvU6mSOVZgOUCA=; b=CQXaUeTr7ssc3486fuihcWAUyw
 u8/Y+98oCqBx7B9gyofhbSuwvUyp7XPIxGCMBIpIOFOWB1SHMwDgOELXs1bk4zm/RR56GGl5+8mdP
 KVRc2cZLK9Efjw1pP5tmiWFtXciUOcPmE9syIvSeIhW8j35mVYkv77OV2jDqAu1u5ERw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=HO9YymjW83uus3ZxQrl12j24vv8cDVvU6mSOVZgOUCA=; b=F3wfdPAljNHUhigrxp1AXbJIa2
 jX9Bv6PlSce1BBHPznmOTL7L+x3JqJV4PtVzWaqq+IkvIcHlVbhKFWPg8eZQBFqmC1IxW8ca17WB9
 Y1KlGcA1neXfmDRQZA4YVDO7L70/Q8wrcSUTRvfQpppdSyMvByvX4LQpT5+aAz5Pic1M=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mcUBE-0005LY-70
 for v9fs-developer@lists.sourceforge.net; Mon, 18 Oct 2021 15:04:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1634569434;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=HO9YymjW83uus3ZxQrl12j24vv8cDVvU6mSOVZgOUCA=;
 b=f9Q4hDND2t4k6Q2OJ7NiszoFe9asv7JKLBZEv0qC99u2GTHRpi8KKyRTiRu7uMEftUM7vI
 TXqPfJulhLTY7Cos1qE7zbZvFHtdgTqPxpaazbJ+mGclCjZkJsuKdYZxjIQbZd/4bwWcRE
 0xV8TV63PV9rqKxxAz2ACu8W5HSVyVg=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-234-LvlXEboLNE6rtTEDUmVbKQ-1; Mon, 18 Oct 2021 11:03:52 -0400
X-MC-Unique: LvlXEboLNE6rtTEDUmVbKQ-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id BB9E510168C0;
 Mon, 18 Oct 2021 15:03:50 +0000 (UTC)
Received: from warthog.procyon.org.uk (unknown [10.33.36.19])
 by smtp.corp.redhat.com (Postfix) with ESMTP id A2D3057CA4;
 Mon, 18 Oct 2021 15:03:47 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
To: linux-cachefs@redhat.com
Date: Mon, 18 Oct 2021 16:03:46 +0100
Message-ID: <163456942676.2614702.13709221260564510952.stgit@warthog.procyon.org.uk>
In-Reply-To: <163456861570.2614702.14754548462706508617.stgit@warthog.procyon.org.uk>
References: <163456861570.2614702.14754548462706508617.stgit@warthog.procyon.org.uk>
User-Agent: StGit/0.23
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Spam-Score: -1.6 (-)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Make fscache_write_to_cache() conditional on cookie not being
 NULL, rather than merely conditional on CONFIG_FSCACHE=[ym]. The problem
 with the latter is if a filesystem, say afs, has CONFIG_AFS_FSCAC [...] 
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
X-Headers-End: 1mcUBE-0005LY-70
Subject: [V9fs-developer] [PATCH 51/67] fscache: Make
 fscache_write_to_cache() conditional on cookie
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
 Jeff Layton <jlayton@redhat.com>, linux-cifs@vger.kernel.org,
 ceph-devel@vger.kernel.org, linux-kernel@vger.kernel.org,
 Matthew Wilcox <willy@infradead.org>, linux-afs@lists.infradead.org,
 dhowells@redhat.com, Alexander Viro <viro@zeniv.linux.org.uk>,
 Trond Myklebust <trondmy@hammerspace.com>, linux-fsdevel@vger.kernel.org,
 v9fs-developer@lists.sourceforge.net, Omar Sandoval <osandov@osandov.com>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 Anna Schumaker <anna.schumaker@netapp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Make fscache_write_to_cache() conditional on cookie not being NULL, rather
than merely conditional on CONFIG_FSCACHE=[ym].  The problem with the
latter is if a filesystem, say afs, has CONFIG_AFS_FSCACHE=n but calls into
this function - linkage will fail if CONFIG_FSCACHE is less than
CONFIG_AFS.  Analogous problems can affect other filesystems, e.g. 9p.

Making fscache_write_to_cache() conditional on the cookie achieves two
things:

 (1) If cookie optimises down to constant NULL, term_func is called
     directly and may be inlined and the slow path is never called.

 (2) __fscache_write_to_cache() isn't called if cookie is dynamically NULL
     - and so, in such a case, term_func is called immediately.

Signed-off-by: David Howells <dhowells@redhat.com>
---

 include/linux/fscache.h |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/include/linux/fscache.h b/include/linux/fscache.h
index 847c076d05a6..ba192567d099 100644
--- a/include/linux/fscache.h
+++ b/include/linux/fscache.h
@@ -593,7 +593,7 @@ static inline void fscache_write_to_cache(struct fscache_cookie *cookie,
 					  netfs_io_terminated_t term_func,
 					  void *term_func_priv)
 {
-	if (fscache_available()) {
+	if (fscache_cookie_valid(cookie)) {
 		__fscache_write_to_cache(cookie, mapping, start, len, i_size,
 					 term_func, term_func_priv);
 	} else {




_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
