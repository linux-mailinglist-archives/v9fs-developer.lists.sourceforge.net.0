Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DA02437D3C
	for <lists+v9fs-developer@lfdr.de>; Fri, 22 Oct 2021 21:02:44 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1mdzoQ-0007sY-Qv; Fri, 22 Oct 2021 19:02:42 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <dhowells@redhat.com>) id 1mdzny-0007s8-06
 for v9fs-developer@lists.sourceforge.net; Fri, 22 Oct 2021 19:02:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=lggmOOD7ybM9LnFkd/u/PSJr+Z4vKCVPqfpMIrG0iuQ=; b=Nxx854VnAfnpapaTTRR8aAJjf0
 V47yEB/jS6o1Z67p34PR+XjDte1jRLe2GuSgP7NFZaDKJO++ZtCeyecNpk0xBNDdr6JsYwKv1RZ4h
 2MQHJnJpzBA9YAkLcd7uFEmqHQzzWWigZk1ghub321NuOA+150Dfh5r+YN9yzSPY0cNE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=lggmOOD7ybM9LnFkd/u/PSJr+Z4vKCVPqfpMIrG0iuQ=; b=GfqBICq09Zf/tsin0/VCl+BtlN
 5eCSycgUS+S7XXzAb3yoaCcrB9M3RYblCSq0lXdYeN4krNprE+/kiGe6WwP6dT+vovSHVez9o91QP
 +7QssxKZNiV6yS6xWoRM+S7nuVpMsVVs462fBNxAsONK5rHMYhANdP8RLiUx3KnGWr6k=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mdznx-00CHGD-7o
 for v9fs-developer@lists.sourceforge.net; Fri, 22 Oct 2021 19:02:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1634929327;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=lggmOOD7ybM9LnFkd/u/PSJr+Z4vKCVPqfpMIrG0iuQ=;
 b=iIU/+sDQh40MxiVZBABF7+oErsh9JJ4ceulWLZt79fOi/n5s4DoOz8nt6hFpj9mgp3XXVj
 XtNbsevq7POl0n4W8eZBs2wkxOd+DYdoc/huXeLXmm/fp2zcUL8o4yg3bSdflLfO7dfi+T
 LoQppiCP61h8sR6oB8c7JBtTOh0fWJ8=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-400-up371D9zOsKNIVzAROnkYA-1; Fri, 22 Oct 2021 15:00:55 -0400
X-MC-Unique: up371D9zOsKNIVzAROnkYA-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 497391006AA2;
 Fri, 22 Oct 2021 19:00:53 +0000 (UTC)
Received: from warthog.procyon.org.uk (unknown [10.33.36.19])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 258BC6A916;
 Fri, 22 Oct 2021 19:00:02 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
To: linux-cachefs@redhat.com
Date: Fri, 22 Oct 2021 20:00:02 +0100
Message-ID: <163492920230.1038219.499626497892850661.stgit@warthog.procyon.org.uk>
In-Reply-To: <163492911924.1038219.13107463173777870713.stgit@warthog.procyon.org.uk>
References: <163492911924.1038219.13107463173777870713.stgit@warthog.procyon.org.uk>
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
 Content preview: Pass a flag to ->prepare_write() to indicate if there's
 definitely
 no space allocated in the cache yet (for instance if we've already checked
 as we were asked to do a read). Signed-off-by: David Howells
 <dhowells@redhat.com> cc: linux-cachefs@redhat.com --- 
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
X-Headers-End: 1mdznx-00CHGD-7o
Subject: [V9fs-developer] [PATCH v2 06/53] netfs: Pass a flag to
 ->prepare_write() to say if there's no alloc'd space
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
 linux-cifs@vger.kernel.org, ceph-devel@vger.kernel.org,
 linux-kernel@vger.kernel.org, Matthew Wilcox <willy@infradead.org>,
 linux-afs@lists.infradead.org, dhowells@redhat.com,
 Jeff Layton <jlayton@kernel.com>, Alexander Viro <viro@zeniv.linux.org.uk>,
 Trond Myklebust <trondmy@hammerspace.com>, linux-fsdevel@vger.kernel.org,
 v9fs-developer@lists.sourceforge.net, Omar Sandoval <osandov@osandov.com>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 Anna Schumaker <anna.schumaker@netapp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Pass a flag to ->prepare_write() to indicate if there's definitely no
space allocated in the cache yet (for instance if we've already checked as
we were asked to do a read).

Signed-off-by: David Howells <dhowells@redhat.com>
cc: linux-cachefs@redhat.com
---

 fs/cachefiles_old/io.c |    3 ++-
 fs/netfs/read_helper.c |    2 +-
 include/linux/netfs.h  |    3 ++-
 3 files changed, 5 insertions(+), 3 deletions(-)

diff --git a/fs/cachefiles_old/io.c b/fs/cachefiles_old/io.c
index 5ead97de4bb7..eab8641de994 100644
--- a/fs/cachefiles_old/io.c
+++ b/fs/cachefiles_old/io.c
@@ -341,7 +341,8 @@ static enum netfs_read_source cachefiles_prepare_read(struct netfs_read_subreque
  * Prepare for a write to occur.
  */
 static int cachefiles_prepare_write(struct netfs_cache_resources *cres,
-				    loff_t *_start, size_t *_len, loff_t i_size)
+				    loff_t *_start, size_t *_len, loff_t i_size,
+				    bool no_space_allocated_yet)
 {
 	loff_t start = *_start;
 	size_t len = *_len, down;
diff --git a/fs/netfs/read_helper.c b/fs/netfs/read_helper.c
index dfc60c79a9f3..80f8e334371d 100644
--- a/fs/netfs/read_helper.c
+++ b/fs/netfs/read_helper.c
@@ -323,7 +323,7 @@ static void netfs_rreq_do_write_to_cache(struct netfs_read_request *rreq)
 		}
 
 		ret = cres->ops->prepare_write(cres, &subreq->start, &subreq->len,
-					       rreq->i_size);
+					       rreq->i_size, true);
 		if (ret < 0) {
 			trace_netfs_failure(rreq, subreq, ret, netfs_fail_prepare_write);
 			trace_netfs_sreq(subreq, netfs_sreq_trace_write_skip);
diff --git a/include/linux/netfs.h b/include/linux/netfs.h
index 014fb502fd91..99137486d351 100644
--- a/include/linux/netfs.h
+++ b/include/linux/netfs.h
@@ -220,7 +220,8 @@ struct netfs_cache_ops {
 	 * actually do.
 	 */
 	int (*prepare_write)(struct netfs_cache_resources *cres,
-			     loff_t *_start, size_t *_len, loff_t i_size);
+			     loff_t *_start, size_t *_len, loff_t i_size,
+			     bool no_space_allocated_yet);
 
 	/* Prepare a write operation for the fallback fscache API, working out
 	 * whether we can cache a page or not.




_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
