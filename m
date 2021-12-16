Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B978E47786F
	for <lists+v9fs-developer@lfdr.de>; Thu, 16 Dec 2021 17:21:21 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1mxtVP-00046c-5q; Thu, 16 Dec 2021 16:21:20 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <dhowells@redhat.com>) id 1mxtVN-00046O-VC
 for v9fs-developer@lists.sourceforge.net; Thu, 16 Dec 2021 16:21:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Bjwuju3JG+dJGNKKmmEyW4WgfPJFElOr1qjJ67or5HU=; b=Z+Np6Le8T8L5/+rdwFGgdgbECy
 ivaNnzTkoG7VBs8Hx3P187Qu+lv7Z/1Uo1QJTJvTV9So5m7GMfHIqRcONFIdcU1Ykm5bSgpttoNiv
 2o0ydhf8FkEeB6AjIMCSg1qAsnmAkeEnNQk9iPd+QGSW7ekAcEkOiwQQIbhiw6SV2CBQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Bjwuju3JG+dJGNKKmmEyW4WgfPJFElOr1qjJ67or5HU=; b=IJdEA0qXs4yi0kT6pKCB5KPkpE
 yPUiBTZ4BZmRTbT+omTl+ovk5z9aYxa93nqVrd7jKt0NvnQ5hOMTu0baY/UAmpdCY7vZnqQ3r3Dhj
 IiEvOinUZgG772UzTIyjqzBPysrAJR6eo52XHXh7o1LqdO27uvrL3e3rBneXVlE8SJNo=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mxtVO-00081H-EM
 for v9fs-developer@lists.sourceforge.net; Thu, 16 Dec 2021 16:21:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1639671672;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=Bjwuju3JG+dJGNKKmmEyW4WgfPJFElOr1qjJ67or5HU=;
 b=f4uttDBrj1CHtYzMwTlmTSEmgbxO2dM5yWrsGnpB/WzZbC5NGRGPe2KBMKXIVgHSsU5qgq
 mERw+HVXes9Rt6i53LClax/2mioHReC1N9uz2Gj/sy2IUsE9939YWvv0jyBsT/d1ob9USj
 5xQYRFI/A01Z4rDaohvBIj5xAmAVUKI=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-373-xEBJ-sv1M3yX_AmOlf_2lw-1; Thu, 16 Dec 2021 11:21:09 -0500
X-MC-Unique: xEBJ-sv1M3yX_AmOlf_2lw-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id E7B35801B0C;
 Thu, 16 Dec 2021 16:21:03 +0000 (UTC)
Received: from warthog.procyon.org.uk (unknown [10.33.36.122])
 by smtp.corp.redhat.com (Postfix) with ESMTP id A2ED278DB0;
 Thu, 16 Dec 2021 16:20:54 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
To: linux-cachefs@redhat.com
Date: Thu, 16 Dec 2021 16:20:53 +0000
Message-ID: <163967165374.1823006.14248189932202373809.stgit@warthog.procyon.org.uk>
In-Reply-To: <163967073889.1823006.12237147297060239168.stgit@warthog.procyon.org.uk>
References: <163967073889.1823006.12237147297060239168.stgit@warthog.procyon.org.uk>
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
 Content preview: Remove the block that allowed cachefiles to be compiled but
 prevented it from actually starting a cache. Signed-off-by: David Howells
 <dhowells@redhat.com> cc: linux-cachefs@redhat.com Link:
 https://lore.kernel.org/r/163819649497.215744.2872504990762846767.stgit@warthog.procyon.org.uk/
 # v1 Link: https:/ [...] 
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
X-Headers-End: 1mxtVO-00081H-EM
Subject: [V9fs-developer] [PATCH v3 53/68] cachefiles: Allow cachefiles to
 actually function
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

Remove the block that allowed cachefiles to be compiled but prevented it
from actually starting a cache.

Signed-off-by: David Howells <dhowells@redhat.com>
cc: linux-cachefs@redhat.com
Link: https://lore.kernel.org/r/163819649497.215744.2872504990762846767.stgit@warthog.procyon.org.uk/ # v1
Link: https://lore.kernel.org/r/163906956491.143852.4951522864793559189.stgit@warthog.procyon.org.uk/ # v2
---

 fs/cachefiles/daemon.c |    4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/fs/cachefiles/daemon.c b/fs/cachefiles/daemon.c
index 61e8740d01be..45af558a696e 100644
--- a/fs/cachefiles/daemon.c
+++ b/fs/cachefiles/daemon.c
@@ -703,9 +703,7 @@ static int cachefiles_daemon_bind(struct cachefiles_cache *cache, char *args)
 		return -EBUSY;
 	}
 
-	pr_warn("Cache is disabled for development\n");
-	return -ENOANO; // Don't allow the cache to operate yet
-	//return cachefiles_add_cache(cache);
+	return cachefiles_add_cache(cache);
 }
 
 /*




_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
