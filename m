Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 648783F976B
	for <lists+v9fs-developer@lfdr.de>; Fri, 27 Aug 2021 11:44:23 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1mJYPJ-0007CZ-1X; Fri, 27 Aug 2021 09:44:17 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <dhowells@redhat.com>) id 1mJYPH-0007C5-CS
 for v9fs-developer@lists.sourceforge.net; Fri, 27 Aug 2021 09:44:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=umSnYP/WvzHC2yY7lWMQKN/6202Vdgqk8ZmUQWItKQo=; b=R/wrlSx5YGnj12kXqrpaZHrjh4
 ZvZvSxsyEalW3rFFhVoKeC3HdzN8xkrlc/8Zdxp+ajlTOO7/98S8YuHAOG1xfy09VGzU/SnrZIRSa
 E+y2KcGLbgXo5TTWso3nTDuHhF9cjT9/CgNdpBFb769d+eHDCQUJdgzT6WWbWagAYGLs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=umSnYP/WvzHC2yY7lWMQKN/6202Vdgqk8ZmUQWItKQo=; b=KvJtUk9yrNnUJE8ekI8+e0znqQ
 KslOdWtpMcxu6pdSeh8awUJ9s2mSBeumVU14gsEkkesLo2wQ+ZnU2c+YFQLzfRrkcaWZpW5Uz+WPE
 GlnhbADd4OjLfKrE0UPaL0P3iByf5bgXZ+58Ay3+FVjiEPxMFK6mxpicig6AngQywbds=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mJYPD-0032wI-3B
 for v9fs-developer@lists.sourceforge.net; Fri, 27 Aug 2021 09:44:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1630057444;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=umSnYP/WvzHC2yY7lWMQKN/6202Vdgqk8ZmUQWItKQo=;
 b=d/LtniYE1HsVZhjc6F3Njp2+UzuKy9Mh3PDaJ9Df+CK/WA3MVB6iK/sCNXZb5/mfjsfSKF
 jhEXX1RSJk6qq/Cvg+yNW3+nKVELbnYa+NbS1mXu7TYwpeCYFhGCHz2ICWfjj7QI5l1TDc
 jzVnm0NitApByEZyUcT2FAHu5Ivfk9g=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-516-TTm60KDbOYuMybYev-wCYw-1; Fri, 27 Aug 2021 05:44:02 -0400
X-MC-Unique: TTm60KDbOYuMybYev-wCYw-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 70E4F802E73;
 Fri, 27 Aug 2021 09:43:40 +0000 (UTC)
Received: from warthog.procyon.org.uk (unknown [10.33.36.36])
 by smtp.corp.redhat.com (Postfix) with ESMTP id A19E65D6B1;
 Fri, 27 Aug 2021 09:43:37 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
To: "Matthew Wilcox (Oracle)" <willy@infradead.org>
Date: Fri, 27 Aug 2021 10:43:36 +0100
Message-ID: <163005741670.2472992.2073548908229887941.stgit@warthog.procyon.org.uk>
In-Reply-To: <163005740700.2472992.12365214290752300378.stgit@warthog.procyon.org.uk>
References: <163005740700.2472992.12365214290752300378.stgit@warthog.procyon.org.uk>
User-Agent: StGit/0.23
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Spam-Score: -1.6 (-)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Fix afs_launder_page() to set the starting position of the
 StoreData RPC at the offset into the page at which the modified data starts
 instead of at the beginning of the page (the iov_iter is correctl [...] 
 Content analysis details:   (-1.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [170.10.133.124 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [170.10.133.124 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1mJYPD-0032wI-3B
Subject: [V9fs-developer] [PATCH v2 1/6] afs: Fix afs_launder_page() to set
 correct start file position
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
 Jeffrey Altman <jaltman@auristor.com>, Jeff Layton <jlayton@kernel.org>,
 linux-kernel@vger.kernel.org, dhowells@redhat.com, linux-mm@kvack.org,
 linux-cachefs@redhat.com, v9fs-developer@lists.sourceforge.net,
 linux-fsdevel@vger.kernel.org, ceph-devel@vger.kernel.org,
 Ilya Dryomov <idryomov@gmail.com>, linux-afs@lists.infradead.org,
 devel@lists.orangefs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Fix afs_launder_page() to set the starting position of the StoreData RPC at
the offset into the page at which the modified data starts instead of at
the beginning of the page (the iov_iter is correctly offset).

The offset got lost during the conversion to passing an iov_iter into
afs_store_data().

Changes:
ver #2:
 - Use page_offset() rather than manually calculating it[1].

Fixes: bd80d8a80e12 ("afs: Use ITER_XARRAY for writing")
Signed-off-by: David Howells <dhowells@redhat.com>
Reviewed-by: Jeffrey Altman <jaltman@auristor.com>
cc: linux-afs@lists.infradead.org
Link: https://lore.kernel.org/r/YST/0e92OdSH0zjg@casper.infradead.org/ [1]
Link: https://lore.kernel.org/r/162880783179.3421678.7795105718190440134.stgit@warthog.procyon.org.uk/
Link: https://lore.kernel.org/r/162937512409.1449272.18441473411207824084.stgit@warthog.procyon.org.uk/
Link: https://lore.kernel.org/r/162981148752.1901565.3663780601682206026.stgit@warthog.procyon.org.uk/
---

 fs/afs/write.c |    3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/fs/afs/write.c b/fs/afs/write.c
index fb7d5c1cabde..5c977deeeee0 100644
--- a/fs/afs/write.c
+++ b/fs/afs/write.c
@@ -950,8 +950,7 @@ int afs_launder_page(struct page *page)
 		iov_iter_bvec(&iter, WRITE, bv, 1, bv[0].bv_len);
 
 		trace_afs_page_dirty(vnode, tracepoint_string("launder"), page);
-		ret = afs_store_data(vnode, &iter, (loff_t)page->index * PAGE_SIZE,
-				     true);
+		ret = afs_store_data(vnode, &iter, page_offset(page) + f, true);
 	}
 
 	trace_afs_page_dirty(vnode, tracepoint_string("laundered"), page);




_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
