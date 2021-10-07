Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DD44425DEB
	for <lists+v9fs-developer@lfdr.de>; Thu,  7 Oct 2021 22:47:42 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1mYaIn-0005TM-9X; Thu, 07 Oct 2021 20:47:41 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <dhowells@redhat.com>) id 1mYaIl-0005TE-I1
 for v9fs-developer@lists.sourceforge.net; Thu, 07 Oct 2021 20:47:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=5M1iNAPaptlPLme6linigjNcNwwDvDm+17gtczkZJ1s=; b=nUPy5KFH0HeLs5n6t/q0iu9yBq
 8fkyvgEalNt+NNz5lezN47X27DCvJn2Fk5+5jZFSf05d16VyePJ7sFB3OglBxGNe/uzhM78LmlQVE
 3K4NwWSzimMvz8yskj4oQCC5zGINCr9HcXauh4VkFr/rGcs6b14PS/45QMpWsMBreJLA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=5M1iNAPaptlPLme6linigjNcNwwDvDm+17gtczkZJ1s=; b=PT5iFUZ1S7TKGZ1d1sWLjJkWbH
 H4LFMh1CJxxOfDA1zQZq3HWcBwtArIcQbmsepVxnTgUTZTpEOgI7kQP3c12SnoTK2IkoAGgdhdL6F
 BHIIH5vEC+LtYu4SFRhY1v5WOVzsOcaqKaw022YzPyelISR/MN6Iu0DInDilP54L0qKg=;
Received: from us-smtp-delivery-124.mimecast.com ([216.205.24.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mYaIk-0005Wr-PB
 for v9fs-developer@lists.sourceforge.net; Thu, 07 Oct 2021 20:47:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1633639652;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=5M1iNAPaptlPLme6linigjNcNwwDvDm+17gtczkZJ1s=;
 b=WjiacE0FC7/rGXUz+ViacFxvrKOk7FwzHvIumj9stJAyWANwL77CTn/SH5UUlRWRQeS+FH
 yRJs3XcQ+NA0eO+Z6gqaUmUZnQQMEYdYZz3pzHs6FFUNhNxZVe/xz4hJVsldpgROYrWAeo
 c9Bkz1cnMEebc5Zsfud9MXFCNjEei5g=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-399-mY1vl1iQNEOpl5NgqOSS-g-1; Thu, 07 Oct 2021 16:47:31 -0400
X-MC-Unique: mY1vl1iQNEOpl5NgqOSS-g-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 1CCB8A76CB6;
 Thu,  7 Oct 2021 20:43:26 +0000 (UTC)
Received: from warthog.procyon.org.uk (unknown [10.33.36.44])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 57A805C1A3;
 Thu,  7 Oct 2021 20:43:23 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
To: Trond Myklebust <trondmy@hammerspace.com>,
 Anna Schumaker <anna.schumaker@netapp.com>, Steve French <sfrench@samba.org>, 
 Dominique Martinet <asmadeus@codewreck.org>
Date: Thu, 07 Oct 2021 21:43:22 +0100
Message-ID: <163363940251.1980952.8682998052010411386.stgit@warthog.procyon.org.uk>
In-Reply-To: <163363935000.1980952.15279841414072653108.stgit@warthog.procyon.org.uk>
References: <163363935000.1980952.15279841414072653108.stgit@warthog.procyon.org.uk>
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
 Content preview:  Fix fscache_cookie_enabled() to handle being given a NULL
 cookie pointer (ie. a cookie was not allocated and caching should be ignored).
 Signed-off-by: David Howells <dhowells@redhat.com> --- include/linux/fscache.h
 | 3 ++- 1 file changed, 2 insertions(+), 1 deletion(-) 
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
X-Headers-End: 1mYaIk-0005Wr-PB
Subject: [V9fs-developer] [PATCH v3 02/10] fscache: Fix
 fscache_cookie_enabled() to handle NULL cookie
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
 Jeff Layton <jlayton@redhat.com>, linux-kernel@vger.kernel.org,
 Matthew Wilcox <willy@infradead.org>, dhowells@redhat.com,
 linux-cachefs@redhat.com, Alexander Viro <viro@zeniv.linux.org.uk>,
 linux-fsdevel@vger.kernel.org, v9fs-developer@lists.sourceforge.net,
 ceph-devel@vger.kernel.org, linux-afs@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Fix fscache_cookie_enabled() to handle being given a NULL cookie pointer
(ie. a cookie was not allocated and caching should be ignored).

Signed-off-by: David Howells <dhowells@redhat.com>
---

 include/linux/fscache.h |    3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/include/linux/fscache.h b/include/linux/fscache.h
index 32f65c16328a..5e3ddb11715a 100644
--- a/include/linux/fscache.h
+++ b/include/linux/fscache.h
@@ -167,7 +167,8 @@ struct fscache_cookie {
 
 static inline bool fscache_cookie_enabled(struct fscache_cookie *cookie)
 {
-	return test_bit(FSCACHE_COOKIE_ENABLED, &cookie->flags);
+	return (fscache_cookie_valid(cookie) &&
+		test_bit(FSCACHE_COOKIE_ENABLED, &cookie->flags));
 }
 
 /*




_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
