Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 83212316BBC
	for <lists+v9fs-developer@lfdr.de>; Wed, 10 Feb 2021 17:52:22 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1l9siy-0002mp-3v; Wed, 10 Feb 2021 16:52:20 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <dhowells@redhat.com>) id 1l9siw-0002VD-M8
 for v9fs-developer@lists.sourceforge.net; Wed, 10 Feb 2021 16:52:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-ID:Date:Content-Transfer-Encoding:
 Content-ID:Content-Type:MIME-Version:Subject:Cc:To:References:In-Reply-To:
 From:Sender:Reply-To:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=6q4l5j2A9zC8AOPQY3ki5vFxtQJE10uxKO//gAn5chg=; b=dkjKPHUE+1BWcAW67a23QDwZwf
 o+2+vc553kU86+d6TS+GiseEJ8sVpGZ0BkGFlnN75np661iA4PAxEW/xkXO1P7AIwrBVc+vtrlsme
 ol3A0fSoug0nMfPDYePCLgHRT/h9Rnqli0StirYPXA/2NaWPQ0kOP5jAQj8bG7FXUSok=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-ID:Date:Content-Transfer-Encoding:Content-ID:Content-Type:
 MIME-Version:Subject:Cc:To:References:In-Reply-To:From:Sender:Reply-To:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=6q4l5j2A9zC8AOPQY3ki5vFxtQJE10uxKO//gAn5chg=; b=VUFU7osvfgBurrqt5BePGJrl8W
 i9fPLNWFo4tu5YR1YP2h7zBRQ02JOmsUtg2ZR4iel4XBzPmkhiJse2IqU7IZkc11mL0BAvA7lhojX
 4bBn+H9oa3DIqGahK9rZQ1mvQN1tFR6U78rwu4EzziB34nJbJToExImQiTUwcI21v9v8=;
Received: from us-smtp-delivery-124.mimecast.com ([216.205.24.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.2)
 id 1l9sTz-002zIW-Qd
 for v9fs-developer@lists.sourceforge.net; Wed, 10 Feb 2021 16:36:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1612975006;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=6q4l5j2A9zC8AOPQY3ki5vFxtQJE10uxKO//gAn5chg=;
 b=Uk17T2rZ+x8fvFVPoptUr6EQIUoPx4zOhyIMr09/8PFQxqwTTxKJ/Fz7vcGsxtFqBicL6b
 AesFQ9YNdDyQK5bzif9XV3fLhhxgHrYYGmLqnC5PPt6tNIuNlrLluxmjxie606DRycfQek
 ueB57D9fx2BRJRGr7Q7RkKUZK3zJHmw=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-223-0MlIkmEwOxCxZMmDqzOJ6A-1; Wed, 10 Feb 2021 11:36:42 -0500
X-MC-Unique: 0MlIkmEwOxCxZMmDqzOJ6A-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 37F8D803F4C;
 Wed, 10 Feb 2021 16:36:40 +0000 (UTC)
Received: from warthog.procyon.org.uk (ovpn-115-23.rdu2.redhat.com
 [10.10.115.23])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 4970D60657;
 Wed, 10 Feb 2021 16:36:34 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
In-Reply-To: <CAHk-=wh+2gbF7XEjYc=HV9w_2uVzVf7vs60BPz0gFA=+pUm3ww@mail.gmail.com>
References: <CAHk-=wh+2gbF7XEjYc=HV9w_2uVzVf7vs60BPz0gFA=+pUm3ww@mail.gmail.com>
 <591237.1612886997@warthog.procyon.org.uk>
 <CAHk-=wj-k86FOqAVQ4ScnBkX3YEKuMzqTEB2vixdHgovJpHc9w@mail.gmail.com>
 <20210209202134.GA308988@casper.infradead.org>
To: Linus Torvalds <torvalds@linux-foundation.org>
MIME-Version: 1.0
Content-ID: <1331024.1612974993.1@warthog.procyon.org.uk>
Date: Wed, 10 Feb 2021 16:36:33 +0000
Message-ID: <1331025.1612974993@warthog.procyon.org.uk>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Spam-Score: -0.7 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [216.205.24.124 listed in wl.mailspike.net]
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: linux-foundation.org]
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.6 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1l9sTz-002zIW-Qd
Subject: Re: [V9fs-developer] [GIT PULL] fscache: I/O API modernisation and
 netfs helper library
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
Cc: Steve French <sfrench@samba.org>, "open list:NFS, SUNRPC,
 AND..." <linux-nfs@vger.kernel.org>, Jeff Layton <jlayton@redhat.com>,
 CIFS <linux-cifs@vger.kernel.org>, David Wysochanski <dwysocha@redhat.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Matthew Wilcox <willy@infradead.org>, linux-afs@lists.infradead.org,
 dhowells@redhat.com, linux-cachefs@redhat.com,
 Alexander Viro <viro@zeniv.linux.org.uk>,
 Trond Myklebust <trondmy@hammerspace.com>,
 linux-fsdevel <linux-fsdevel@vger.kernel.org>,
 v9fs-developer@lists.sourceforge.net, ceph-devel@vger.kernel.org,
 Anna Schumaker <anna.schumaker@netapp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Linus Torvalds <torvalds@linux-foundation.org> wrote:

> Does the code not hold a refcount already?

The attached patch will do that.  Note that it's currently based on top of the
patch that drops the PG_fscache alias, so it refers to PG_private_2.

I've run all three patches through xfstests over afs, both with and without a
cache, and Jeff has tested ceph with them.

David
---
commit 803a09110b41b9f6091a517fc8f5c4b15475048c
Author: David Howells <dhowells@redhat.com>
Date:   Wed Feb 10 11:35:15 2021 +0000

    netfs: Hold a ref on a page when PG_private_2 is set
    
    Take a reference on a page when PG_private_2 is set and drop it once the
    bit is unlocked.
    
    Reported-by: Linus Torvalds <torvalds@linux-foundation.org>
    Signed-off-by: David Howells <dhowells@redhat.com>

diff --git a/fs/netfs/read_helper.c b/fs/netfs/read_helper.c
index 9018224693e9..043d96ca2aad 100644
--- a/fs/netfs/read_helper.c
+++ b/fs/netfs/read_helper.c
@@ -10,6 +10,7 @@
 #include <linux/fs.h>
 #include <linux/mm.h>
 #include <linux/pagemap.h>
+#include <linux/pagevec.h>
 #include <linux/slab.h>
 #include <linux/uio.h>
 #include <linux/sched/mm.h>
@@ -230,10 +231,13 @@ static void netfs_rreq_completed(struct netfs_read_request *rreq)
 static void netfs_rreq_unmark_after_write(struct netfs_read_request *rreq)
 {
 	struct netfs_read_subrequest *subreq;
+	struct pagevec pvec;
 	struct page *page;
 	pgoff_t unlocked = 0;
 	bool have_unlocked = false;
 
+	pagevec_init(&pvec);
+
 	rcu_read_lock();
 
 	list_for_each_entry(subreq, &rreq->subrequests, rreq_link) {
@@ -247,6 +251,8 @@ static void netfs_rreq_unmark_after_write(struct netfs_read_request *rreq)
 				continue;
 			unlocked = page->index;
 			unlock_page_private_2(page);
+			if (pagevec_add(&pvec, page) == 0)
+				pagevec_release(&pvec);
 			have_unlocked = true;
 		}
 	}
@@ -403,8 +409,10 @@ static void netfs_rreq_unlock(struct netfs_read_request *rreq)
 				pg_failed = true;
 				break;
 			}
-			if (test_bit(NETFS_SREQ_WRITE_TO_CACHE, &subreq->flags))
+			if (test_bit(NETFS_SREQ_WRITE_TO_CACHE, &subreq->flags)) {
+				get_page(page);
 				SetPagePrivate2(page);
+			}
 			pg_failed |= subreq_failed;
 			if (pgend < iopos + subreq->len)
 				break;



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
