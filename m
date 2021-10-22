Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 57754437DF2
	for <lists+v9fs-developer@lfdr.de>; Fri, 22 Oct 2021 21:09:10 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1mdzuf-0004ig-1w; Fri, 22 Oct 2021 19:09:09 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <dhowells@redhat.com>) id 1mdzud-0004iX-HC
 for v9fs-developer@lists.sourceforge.net; Fri, 22 Oct 2021 19:09:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=56csLWKOXC3CFqzKs+ecqrHyAxkY2LTXGKgqQ8XEXPg=; b=bUHeRiwQ21aJEhe85gnAtEqGDy
 4KS4pC3G2Vi1XR8yPsS63ELsf4uq0m5+SJkKEdpuWM2YUGCAjWE3mvtLQ5fEs6b2U+fVZEskC1oWV
 aIogMvkog5KIro8cCL595SeTzAl/dVrC3/F41unkaBxhx31t84Og5TqNI1ETOjDhdLDc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=56csLWKOXC3CFqzKs+ecqrHyAxkY2LTXGKgqQ8XEXPg=; b=CjfU9ZwMl6LjWDyU9wYGVyhZto
 h+4slp42ngEEONnLuGBjxx1uXhHcVX90L8ZdZoxi1S5efuSYawJF6Y+E6q8X2zdjmxkhyX08tjr4H
 lgbSO+8+R4tKZXuxBO8pvSepkPx9bb4RWFLEyUAgIH60nsqZvcX6MK4ZS/YTXLntTxSo=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mdzuc-00CHms-KX
 for v9fs-developer@lists.sourceforge.net; Fri, 22 Oct 2021 19:09:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1634929740;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=56csLWKOXC3CFqzKs+ecqrHyAxkY2LTXGKgqQ8XEXPg=;
 b=fAINKO7AnecbNXoqvdkMRnGZrym2tqeOxYEefn9w5M3uYgR9+87ARBvglT7O8IF295kDCy
 ZR3oMKz1Cy40NlgjzvWty7zF+GY8u7zVlJAyJOPnyGxMj7UZQ4KYqw+fGf9wNT8ryqbsgt
 aa34jMYKJbhx8IqqMpQHaRRy1iBkdNI=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-51-sENI_xwvNY6IZ-Qj0JDDIg-1; Fri, 22 Oct 2021 15:08:55 -0400
X-MC-Unique: sENI_xwvNY6IZ-Qj0JDDIg-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 24B73362F8;
 Fri, 22 Oct 2021 19:08:53 +0000 (UTC)
Received: from warthog.procyon.org.uk (unknown [10.33.36.19])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 4DBB31017E28;
 Fri, 22 Oct 2021 19:08:46 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
To: linux-cachefs@redhat.com
Date: Fri, 22 Oct 2021 20:08:45 +0100
Message-ID: <163492972548.1038219.2862380188907793320.stgit@warthog.procyon.org.uk>
In-Reply-To: <163492911924.1038219.13107463173777870713.stgit@warthog.procyon.org.uk>
References: <163492911924.1038219.13107463173777870713.stgit@warthog.procyon.org.uk>
User-Agent: StGit/0.23
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Spam-Score: -1.6 (-)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  generic_perform_write() can't handle a THP, so we have to
 return the subpage of that THP from afs_write_begin() and then convert it
 back into the head on entry to afs_write_end(). Signed-off-by: David Howells
 <dhowells@redhat.com> cc: Marc Dionne <marc.dionne@auristor.com> cc: Matthew
 Wilcox <willy@infradead.org> cc: linux-afs@lists.infradead.org --- 
 Content analysis details:   (-1.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [170.10.129.124 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [170.10.129.124 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1mdzuc-00CHms-KX
Subject: [V9fs-developer] [PATCH v2 43/53] afs: Make afs_write_begin()
 return the THP subpage
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
 ceph-devel@vger.kernel.org, linux-kernel@vger.kernel.org,
 Matthew Wilcox <willy@infradead.org>, linux-afs@lists.infradead.org,
 dhowells@redhat.com, Jeff Layton <jlayton@kernel.com>,
 Alexander Viro <viro@zeniv.linux.org.uk>,
 Trond Myklebust <trondmy@hammerspace.com>,
 Marc Dionne <marc.dionne@auristor.com>, v9fs-developer@lists.sourceforge.net,
 Omar Sandoval <osandov@osandov.com>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 Anna Schumaker <anna.schumaker@netapp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

generic_perform_write() can't handle a THP, so we have to return the
subpage of that THP from afs_write_begin() and then convert it back into
the head on entry to afs_write_end().

Signed-off-by: David Howells <dhowells@redhat.com>
cc: Marc Dionne <marc.dionne@auristor.com>
cc: Matthew Wilcox <willy@infradead.org>
cc: linux-afs@lists.infradead.org
---

 fs/afs/write.c |    5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/fs/afs/write.c b/fs/afs/write.c
index 19be3153d610..a01b1687a146 100644
--- a/fs/afs/write.c
+++ b/fs/afs/write.c
@@ -78,7 +78,7 @@ int afs_write_begin(struct file *file, struct address_space *mapping,
 			goto flush_conflicting_write;
 	}
 
-	*_page = page;
+	*_page = find_subpage(page, pos / PAGE_SIZE);
 	_leave(" = 0");
 	return 0;
 
@@ -108,9 +108,10 @@ int afs_write_begin(struct file *file, struct address_space *mapping,
  */
 int afs_write_end(struct file *file, struct address_space *mapping,
 		  loff_t pos, unsigned len, unsigned copied,
-		  struct page *page, void *fsdata)
+		  struct page *subpage, void *fsdata)
 {
 	struct afs_vnode *vnode = AFS_FS_I(file_inode(file));
+	struct page *page = thp_head(subpage);
 	unsigned long priv;
 	unsigned int f, from = offset_in_thp(page, pos);
 	unsigned int t, to = from + copied;




_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
