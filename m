Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F91436A9D8
	for <lists+v9fs-developer@lfdr.de>; Mon, 26 Apr 2021 01:15:25 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1lanyF-0005Vs-47; Sun, 25 Apr 2021 23:15:23 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <dhowells@redhat.com>) id 1lanyD-0005Vd-Qr
 for v9fs-developer@lists.sourceforge.net; Sun, 25 Apr 2021 23:15:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-ID:Date:Content-Transfer-Encoding:
 Content-ID:Content-Type:MIME-Version:Subject:Cc:To:References:In-Reply-To:
 From:Sender:Reply-To:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=n+JuniTf6/0QJHyHH9jZCObdX5/aD9evlCt++gaJJ1U=; b=A9XpnyfZ+21SYPPPrho1ksp/PB
 Wi5TGvUMH37a5j7b5Lw5/dCiqhZEsg0eJIBXe67eOisurDGIzOY15kXHnNA6md7edwQ/8EmlKqOF/
 W6pI6IC7c9eM9i1fG+WJ37l7pD3X03kmLzrhPOH+EawfzTwzbUUfwd8/GNrXBjJFW6To=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-ID:Date:Content-Transfer-Encoding:Content-ID:Content-Type:
 MIME-Version:Subject:Cc:To:References:In-Reply-To:From:Sender:Reply-To:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=n+JuniTf6/0QJHyHH9jZCObdX5/aD9evlCt++gaJJ1U=; b=fC5nKcaB93xd5pF6uTGoKhP3ky
 6YUJ1qSo2whVcN/da6mZergZcni9ViNWNixZ449M9xxC5XMukOhoNMcRs1u5zILLnpa34S+Q2/Yko
 wsRZdipZv+tUln2+NjB09kPVbKDD6KC6aCTPh9K9uex482yWn/2MqEvJGMThaTMToRjM=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1lany3-0092oz-Ac
 for v9fs-developer@lists.sourceforge.net; Sun, 25 Apr 2021 23:15:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1619392505;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=n+JuniTf6/0QJHyHH9jZCObdX5/aD9evlCt++gaJJ1U=;
 b=XHuwJPRJUE/ui47Aju4ctDA+pDgtS+Qxu4ySzhkr6Oan9nyJfmrpl7KgqhO5gZzzilxuNU
 WPmsMLdlCgOzNnyBg6jEarky6OW6hJ+0xjhik9pKvPWo6RprZkon8Z5DPC8p5NEdrKQ9ju
 Y9NayKqF9KK4OB8VNyZko9LHVKrl+gQ=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-26-BQSQMrQCPYm7CjiNMMlK1Q-1; Sun, 25 Apr 2021 19:15:01 -0400
X-MC-Unique: BQSQMrQCPYm7CjiNMMlK1Q-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 009458030B5;
 Sun, 25 Apr 2021 23:14:59 +0000 (UTC)
Received: from warthog.procyon.org.uk (ovpn-112-124.rdu2.redhat.com
 [10.10.112.124])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 9C7785D74F;
 Sun, 25 Apr 2021 23:14:51 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
In-Reply-To: <161918448151.3145707.11541538916600921083.stgit@warthog.procyon.org.uk>
References: <161918448151.3145707.11541538916600921083.stgit@warthog.procyon.org.uk>
 <161918446704.3145707.14418606303992174310.stgit@warthog.procyon.org.uk>
To: Alexander Viro <viro@zeniv.linux.org.uk>
MIME-Version: 1.0
Content-ID: <3545033.1619392490.1@warthog.procyon.org.uk>
Date: Mon, 26 Apr 2021 00:14:50 +0100
Message-ID: <3545034.1619392490@warthog.procyon.org.uk>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Spam-Score: -0.3 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [170.10.133.124 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.2 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1lany3-0092oz-Ac
Subject: [V9fs-developer] [PATCH] iov_iter: Four fixes for ITER_XARRAY
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
 Jeff Layton <jlayton@redhat.com>, linux-mm@kvack.org,
 Dave Wysochanski <dwysocha@redhat.com>, linux-kernel@vger.kernel.org,
 "Matthew Wilcox \(Oracle\)" <willy@infradead.org>,
 linux-afs@lists.infradead.org, dhowells@redhat.com,
 Marc Dionne <marc.dionne@auristor.com>, linux-cachefs@redhat.com,
 Anna Schumaker <anna.schumaker@netapp.com>, linux-fsdevel@vger.kernel.org,
 v9fs-developer@lists.sourceforge.net, ceph-devel@vger.kernel.org,
 Steve French <sfrench@samba.org>, Christoph Hellwig <hch@lst.de>,
 Trond Myklebust <trond.myklebust@hammerspace.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Hi Al,

I think this patch should include all the fixes necessary.  I could merge
it in, but I think it might be better to tag it on the end as an additional
patch.

David
---
iov_iter: Four fixes for ITER_XARRAY

Fix four things[1] in the patch that adds ITER_XARRAY[2]:

 (1) Remove the address_space struct predeclaration.  This is a holdover
     from when it was ITER_MAPPING.

 (2) Fix _copy_mc_to_iter() so that the xarray segment updates count and
     iov_offset in the iterator before returning.

 (3) Fix iov_iter_alignment() to not loop in the xarray case.  Because the
     middle pages are all whole pages, only the end pages need be
     considered - and this can be reduced to just looking at the start
     position in the xarray and the iteration size.

 (4) Fix iov_iter_advance() to limit the size of the advance to no more
     than the remaining iteration size.

Reported-by: Al Viro <viro@zeniv.linux.org.uk>
Signed-off-by: David Howells <dhowells@redhat.com>
Link: https://lore.kernel.org/r/YIVrJT8GwLI0Wlgx@zeniv-ca.linux.org.uk [1]
Link: https://lore.kernel.org/r/161918448151.3145707.11541538916600921083.stgit@warthog.procyon.org.uk [2]
---
 include/linux/uio.h |    1 -
 lib/iov_iter.c      |    5 +++++
 2 files changed, 5 insertions(+), 1 deletion(-)

diff --git a/include/linux/uio.h b/include/linux/uio.h
index 5f5ffc45d4aa..d3ec87706d75 100644
--- a/include/linux/uio.h
+++ b/include/linux/uio.h
@@ -10,7 +10,6 @@
 #include <uapi/linux/uio.h>
 
 struct page;
-struct address_space;
 struct pipe_inode_info;
 
 struct kvec {
diff --git a/lib/iov_iter.c b/lib/iov_iter.c
index 44fa726a8323..61228a6c69f8 100644
--- a/lib/iov_iter.c
+++ b/lib/iov_iter.c
@@ -791,6 +791,8 @@ size_t _copy_mc_to_iter(const void *addr, size_t bytes, struct iov_iter *i)
 			curr_addr = (unsigned long) from;
 			bytes = curr_addr - s_addr - rem;
 			rcu_read_unlock();
+			i->iov_offset += bytes;
+			i->count -= bytes;
 			return bytes;
 		}
 		})
@@ -1147,6 +1149,7 @@ void iov_iter_advance(struct iov_iter *i, size_t size)
 		return;
 	}
 	if (unlikely(iov_iter_is_xarray(i))) {
+		size = min(size, i->count);
 		i->iov_offset += size;
 		i->count -= size;
 		return;
@@ -1346,6 +1349,8 @@ unsigned long iov_iter_alignment(const struct iov_iter *i)
 			return size | i->iov_offset;
 		return size;
 	}
+	if (unlikely(iov_iter_is_xarray(i)))
+		return (i->xarray_start + i->iov_offset) | i->count;
 	iterate_all_kinds(i, size, v,
 		(res |= (unsigned long)v.iov_base | v.iov_len, 0),
 		res |= v.bv_offset | v.bv_len,



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
