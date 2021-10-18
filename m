Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 118624320CE
	for <lists+v9fs-developer@lfdr.de>; Mon, 18 Oct 2021 16:56:26 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1mcU3s-0003hA-PY; Mon, 18 Oct 2021 14:56:24 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <dhowells@redhat.com>) id 1mcU3q-0003gt-Py
 for v9fs-developer@lists.sourceforge.net; Mon, 18 Oct 2021 14:56:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=SB5Ii7xfPTM4p2eEWvijuPkly8hQ6NZB0idEsu0sEO8=; b=KSeG82j8TGOTj+B77drrZf+UEy
 6EC7YXekihKLVaFEYjyxOcWWxnAOJMODy0hcDSk5RGoPQltZRaOhkUr4shiaWoZIDkcDPAYi2XhJd
 ZmCjGwgKV0z7lQSEefqTZJK+HtHaB32e2lDlJ7SXpqtJ9oUGfT5VgMLh7K6b3kWR90n8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=SB5Ii7xfPTM4p2eEWvijuPkly8hQ6NZB0idEsu0sEO8=; b=hQ7idO3p1X4xat0rgC6DGZGc7H
 u1gpqufcBQkGWBuKxJb9fQ/dxCkXv8y+V9+qXsy17qyHJqmjFmH8xWeH+m43yngsYFPd1MI6LmJZD
 ItVe99cHDv/d+XJOnKqkluZJke9w5Eu60C1UnNRi1sUGOcmXFwZHVeJuCcDiJqFjO240=;
Received: from us-smtp-delivery-124.mimecast.com ([216.205.24.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mcU3q-0003oK-3t
 for v9fs-developer@lists.sourceforge.net; Mon, 18 Oct 2021 14:56:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1634568976;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=SB5Ii7xfPTM4p2eEWvijuPkly8hQ6NZB0idEsu0sEO8=;
 b=cPJmdwkBsy33nEuPfLa0HSBQEldRf1E1Qccx4Pe6hdxw0ksT027zt2wPyLOjYSzNCbm40e
 OzRPdErvPnKpZvaqZYWHyaEBqINDNZh0yDsO8HwNS7HUfPsNSmePuTYROhrqU3kcENLJUh
 IOmeCh+hj/aq1Wy8iuWfNtscMbKnwfA=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-135-WzAoXm61Pnm4_oBBDiJ4qA-1; Mon, 18 Oct 2021 10:56:12 -0400
X-MC-Unique: WzAoXm61Pnm4_oBBDiJ4qA-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id A73701006AA2;
 Mon, 18 Oct 2021 14:56:10 +0000 (UTC)
Received: from warthog.procyon.org.uk (unknown [10.33.36.19])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 388E85BB12;
 Mon, 18 Oct 2021 14:56:02 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
To: linux-cachefs@redhat.com
Date: Mon, 18 Oct 2021 15:56:01 +0100
Message-ID: <163456896131.2614702.10188463290568833365.stgit@warthog.procyon.org.uk>
In-Reply-To: <163456861570.2614702.14754548462706508617.stgit@warthog.procyon.org.uk>
References: <163456861570.2614702.14754548462706508617.stgit@warthog.procyon.org.uk>
User-Agent: StGit/0.23
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Spam-Score: -1.6 (-)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  When deleting a file, we want to make sure that the inode
 doesn't get detached from it (leading to ->d_inode being cleared) as we may
 still want to touch the inode afterwards (we want to clear the bel [...] 
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
X-Headers-End: 1mcU3q-0003oK-3t
Subject: [V9fs-developer] [PATCH 21/67] cachefiles: Prevent inode from going
 away when burying a dentry
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

When deleting a file, we want to make sure that the inode doesn't get
detached from it (leading to ->d_inode being cleared) as we may still want
to touch the inode afterwards (we want to clear the belongs-to-kernel flag
and we may have the dentry referred to by a file struct).

Do this by getting an extra ref on the dentry around the vfs_unlink() call
so that d_delete() doesn't see the refcount == 1.

Signed-off-by: David Howells <dhowells@redhat.com>
---

 fs/cachefiles/namei.c |    2 ++
 1 file changed, 2 insertions(+)

diff --git a/fs/cachefiles/namei.c b/fs/cachefiles/namei.c
index 4bd31be3be30..04c767624e3d 100644
--- a/fs/cachefiles/namei.c
+++ b/fs/cachefiles/namei.c
@@ -106,7 +106,9 @@ static int cachefiles_bury_object(struct cachefiles_cache *cache,
 			cachefiles_io_error(cache, "Unlink security error");
 		} else {
 			trace_cachefiles_unlink(object, rep, why);
+			dget(rep);
 			ret = vfs_unlink(&init_user_ns, d_inode(dir), rep, NULL);
+			dput(rep);
 		}
 
 		inode_unlock(d_inode(dir));




_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
