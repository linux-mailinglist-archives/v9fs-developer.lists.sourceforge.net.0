Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id F1286437D79
	for <lists+v9fs-developer@lfdr.de>; Fri, 22 Oct 2021 21:04:35 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1mdzqE-0004Wl-MI; Fri, 22 Oct 2021 19:04:34 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <dhowells@redhat.com>) id 1mdzqD-0004Wd-4g
 for v9fs-developer@lists.sourceforge.net; Fri, 22 Oct 2021 19:04:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Xtb4hcPSNunQaDtuEubceadXUD58SpuwyP5ctiegSsc=; b=H6BOQyQiivwjVsRJaFanC3ATVG
 U3SraeYdoKjat/b5L5JtgXfzKRcO1OkgmS74MpyVN6LmNed6Qct3G6lP4tBKhpmqdQCc0a5zkgBeU
 pvHiiyr1YgDzCG1GfkyljB4456Wox5UGDrl0I4boqNAC/unoGkv7VQpZsu2ggWw8PXLQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Xtb4hcPSNunQaDtuEubceadXUD58SpuwyP5ctiegSsc=; b=Dnw38rjo7SPwVK3XO/BBdonsPW
 eTlqLQJixIM7tBqmgmoLf/Bkzw09rZ3OsR7NXjBt4jfnIG5R1XzvD/q1gHDzliTBAGDWL8NSR6LHo
 zLssZfIli4yle1elT0H1Zw8jokhvkKsCeHcrR3DrpgVqqhuO1lDV1yIpnMuZXi4UAELg=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mdzqB-00CHMV-Mm
 for v9fs-developer@lists.sourceforge.net; Fri, 22 Oct 2021 19:04:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1634929465;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=Xtb4hcPSNunQaDtuEubceadXUD58SpuwyP5ctiegSsc=;
 b=MmMxfeiz7T0uBVB+hgMKncXTTl1oqjHOEpILYmVkIPQ4Si7dxHZhOOUgsAZVXWEzT3/cgN
 nqAWYQ56GljeefeJmuYfXigkF0x46RXhzX9VY1hpKEOl5geOUB7uCQ1dPzFxAfGqO8O6uR
 93ndOZLeyPHwle67JbuidBfWPOlX+y8=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-35-W324zErpNbG-X3a_UNQe1A-1; Fri, 22 Oct 2021 15:04:19 -0400
X-MC-Unique: W324zErpNbG-X3a_UNQe1A-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 6094110A8E01;
 Fri, 22 Oct 2021 19:04:17 +0000 (UTC)
Received: from warthog.procyon.org.uk (unknown [10.33.36.19])
 by smtp.corp.redhat.com (Postfix) with ESMTP id BC78F19D9B;
 Fri, 22 Oct 2021 19:04:11 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
To: linux-cachefs@redhat.com
Date: Fri, 22 Oct 2021 20:04:10 +0100
Message-ID: <163492945090.1038219.9027971867494708379.stgit@warthog.procyon.org.uk>
In-Reply-To: <163492911924.1038219.13107463173777870713.stgit@warthog.procyon.org.uk>
References: <163492911924.1038219.13107463173777870713.stgit@warthog.procyon.org.uk>
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
 Content preview:  Provide read/write stat counters for the cache backend to
 use. Signed-off-by: David Howells <dhowells@redhat.com> cc:
 linux-cachefs@redhat.com
 --- fs/fscache/stats.c | 9 +++++++++ include/linux/fscache-cache.h | 10
 ++++++++++ 2 files changed, 19 insertions(+) 
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
X-Headers-End: 1mdzqB-00CHMV-Mm
Subject: [V9fs-developer] [PATCH v2 22/53] fscache: Provide read/write stat
 counters for the cache
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

Provide read/write stat counters for the cache backend to use.

Signed-off-by: David Howells <dhowells@redhat.com>
cc: linux-cachefs@redhat.com
---

 fs/fscache/stats.c            |    9 +++++++++
 include/linux/fscache-cache.h |   10 ++++++++++
 2 files changed, 19 insertions(+)

diff --git a/fs/fscache/stats.c b/fs/fscache/stats.c
index 45b7636c7737..8d5ad6771498 100644
--- a/fs/fscache/stats.c
+++ b/fs/fscache/stats.c
@@ -37,6 +37,11 @@ atomic_t fscache_n_relinquishes;
 atomic_t fscache_n_relinquishes_retire;
 atomic_t fscache_n_relinquishes_dropped;
 
+atomic_t fscache_n_read;
+EXPORT_SYMBOL(fscache_n_read);
+atomic_t fscache_n_write;
+EXPORT_SYMBOL(fscache_n_write);
+
 /*
  * display the general statistics
  */
@@ -76,6 +81,10 @@ int fscache_stats_show(struct seq_file *m, void *v)
 		   atomic_read(&fscache_n_relinquishes_retire),
 		   atomic_read(&fscache_n_relinquishes_dropped));
 
+	seq_printf(m, "IO     : rd=%u wr=%u\n",
+		   atomic_read(&fscache_n_read),
+		   atomic_read(&fscache_n_write));
+
 	netfs_stats_show(m);
 	return 0;
 }
diff --git a/include/linux/fscache-cache.h b/include/linux/fscache-cache.h
index 2d57b85cfde3..6830f91ebaf4 100644
--- a/include/linux/fscache-cache.h
+++ b/include/linux/fscache-cache.h
@@ -172,6 +172,16 @@ void fscache_end_operation(struct netfs_cache_resources *cres)
 		ops->end_operation(cres);
 }
 
+#ifdef CONFIG_FSCACHE_STATS
+extern atomic_t fscache_n_read;
+extern atomic_t fscache_n_write;
+#define fscache_count_read() atomic_inc(&fscache_n_read)
+#define fscache_count_write() atomic_inc(&fscache_n_write)
+#else
+#define fscache_count_read() do {} while(0)
+#define fscache_count_write() do {} while(0)
+#endif
+
 extern struct workqueue_struct *fscache_wq;
 
 #endif /* _LINUX_FSCACHE_CACHE_H */




_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
