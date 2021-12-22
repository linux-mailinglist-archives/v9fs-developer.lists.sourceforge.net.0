Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id AF13847DA55
	for <lists+v9fs-developer@lfdr.de>; Thu, 23 Dec 2021 00:21:27 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1n0AvG-0000pt-9I; Wed, 22 Dec 2021 23:21:26 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <dhowells@redhat.com>) id 1n0AvF-0000pn-Oo
 for v9fs-developer@lists.sourceforge.net; Wed, 22 Dec 2021 23:21:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=NRZ3+Hvdaey/HcRmiTS+vHR5qY9nkknU0biJRgcsqjE=; b=eruNVkSHhTKk93yob9rp1qOVdq
 bEgcXwvlqHoPvJ7TEqjjNcmCMY8YW1Kj9YobfO4UfL9d5FhnM6r+8ivVvbSlBdJahaC1GxU0galk5
 ZRlC0MKYeRaJgaQ5l61Ih/GbVknQZM9mMxkNea3QqZSPtR9/NwnWPdZeNP7zMEjbF0FE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=NRZ3+Hvdaey/HcRmiTS+vHR5qY9nkknU0biJRgcsqjE=; b=mjeB4ijbU5NFVn9GcaORM+AJph
 JenZeW3o2SBxu0PkdtJ1cLT//SCIck9AbBaI8zHSvNEEtgcYvNtu67b+Ait2BkHgs+Za6OKYRwJ9+
 jSg6tlpk47A7m0SDZibKl5pScM0N5KrcIBFiqw39QI23eqj2/cpImLiJVSdcnwlqGz2E=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1n0AvE-00076T-Vf
 for v9fs-developer@lists.sourceforge.net; Wed, 22 Dec 2021 23:21:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1640215279;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=NRZ3+Hvdaey/HcRmiTS+vHR5qY9nkknU0biJRgcsqjE=;
 b=F92wFmNQ67IzjvA/Y+eTIBPG2OK4KEp34qsPbHgiBMdVdkJy8bAb8lxCfY5BsoECBgNZ2E
 9ck0G++tiiPCV9nqcilEa715bYokgooyxbtT27cJWfsJ/y114GcwXLPZbjgDpsvCnjiu7x
 6drp7xFAS3SI1Qkh8C/asL/Tqxnf+eE=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-99-f74RnzBUO6iG13xETxwCZA-1; Wed, 22 Dec 2021 18:21:15 -0500
X-MC-Unique: f74RnzBUO6iG13xETxwCZA-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 5FCBB2F27;
 Wed, 22 Dec 2021 23:21:13 +0000 (UTC)
Received: from warthog.procyon.org.uk (unknown [10.33.36.165])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 791762BE7D;
 Wed, 22 Dec 2021 23:21:00 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
To: linux-cachefs@redhat.com
Date: Wed, 22 Dec 2021 23:20:59 +0000
Message-ID: <164021525963.640689.9264556596205140044.stgit@warthog.procyon.org.uk>
In-Reply-To: <164021479106.640689.17404516570194656552.stgit@warthog.procyon.org.uk>
References: <164021479106.640689.17404516570194656552.stgit@warthog.procyon.org.uk>
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
 Content preview: Provide a function to be called from a network filesystem's
 releasepage method to indicate that a page has been released that might have
 been a reflection of data upon the server - and now that data m [...] 
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
X-Headers-End: 1n0AvE-00076T-Vf
Subject: [V9fs-developer] [PATCH v4 28/68] fscache: Provide a function to
 note the release of a page
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

Provide a function to be called from a network filesystem's releasepage
method to indicate that a page has been released that might have been a
reflection of data upon the server - and now that data must be reloaded
from the server or the cache.

This is used to end an optimisation for empty files, in particular files
that have just been created locally, whereby we know there cannot yet be
any data that we would need to read from the server or the cache.

Signed-off-by: David Howells <dhowells@redhat.com>
cc: linux-cachefs@redhat.com
Link: https://lore.kernel.org/r/163819617128.215744.4725572296135656508.stgit@warthog.procyon.org.uk/ # v1
Link: https://lore.kernel.org/r/163906920354.143852.7511819614661372008.stgit@warthog.procyon.org.uk/ # v2
Link: https://lore.kernel.org/r/163967128061.1823006.611781655060034988.stgit@warthog.procyon.org.uk/ # v3
---

 include/linux/fscache.h |   16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/include/linux/fscache.h b/include/linux/fscache.h
index 18e725671594..28ce258c1f87 100644
--- a/include/linux/fscache.h
+++ b/include/linux/fscache.h
@@ -607,4 +607,20 @@ static inline void fscache_clear_inode_writeback(struct fscache_cookie *cookie,
 	}
 }
 
+/**
+ * fscache_note_page_release - Note that a netfs page got released
+ * @cookie: The cookie corresponding to the file
+ *
+ * Note that a page that has been copied to the cache has been released.  This
+ * means that future reads will need to look in the cache to see if it's there.
+ */
+static inline
+void fscache_note_page_release(struct fscache_cookie *cookie)
+{
+	if (cookie &&
+	    test_bit(FSCACHE_COOKIE_HAVE_DATA, &cookie->flags) &&
+	    test_bit(FSCACHE_COOKIE_NO_DATA_TO_READ, &cookie->flags))
+		clear_bit(FSCACHE_COOKIE_NO_DATA_TO_READ, &cookie->flags);
+}
+
 #endif /* _LINUX_FSCACHE_H */




_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
