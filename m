Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F74C50E2BB
	for <lists+v9fs-developer@lfdr.de>; Mon, 25 Apr 2022 16:10:57 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1nizQV-0007Xf-Cp; Mon, 25 Apr 2022 14:10:54 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <dhowells@redhat.com>) id 1nizQA-0007WO-Nk
 for v9fs-developer@lists.sourceforge.net; Mon, 25 Apr 2022 14:10:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-ID:Date:Content-Transfer-Encoding:
 Content-ID:Content-Type:MIME-Version:Subject:Cc:To:References:In-Reply-To:
 From:Sender:Reply-To:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=bQqZOAGGz8cVHdnTZIYoAUITNiAmyVcVqVE5emNQD/c=; b=a9INWZq0BqwigMUq442bqkSo13
 /rTSCPhVqhZwlIiw2a3AwLQiTHdf9wwzV6scxFyWMIR0trlBwLxX70xOLxmlcqUrvBUE+pF37agd6
 w4vDup16qUwNsQYC8TpaiSe4DrtH5hRW1IGIJ6Tqj/uorgak1X2G3K69wli8lFXbySj4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-ID:Date:Content-Transfer-Encoding:Content-ID:Content-Type:
 MIME-Version:Subject:Cc:To:References:In-Reply-To:From:Sender:Reply-To:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=bQqZOAGGz8cVHdnTZIYoAUITNiAmyVcVqVE5emNQD/c=; b=lzlPQozHKdFIdmtcYhQNvtbtBa
 KKPvvGr0lLUKDqm55Yec4U3p/JGgJmI45ReO0Vv54XpzT8nhmNBpkZ2AWbaASF0tiD3NUFcXwWBKQ
 9OJImC9nX7Fyf3BJIe/G7HgRi0uf5qcLn6ynpp4xTx7b5X+nWlpnq+3HRYGBMbj+liTs=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nizQ5-0002ff-6d
 for v9fs-developer@lists.sourceforge.net; Mon, 25 Apr 2022 14:10:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1650895822;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=bQqZOAGGz8cVHdnTZIYoAUITNiAmyVcVqVE5emNQD/c=;
 b=S4xsImFhov3T+Xc/cvTJSb1NrgF+C9i2Nu7wgoNMzFJi62gXj/NM7cGetxXHWF1DfHtLcN
 gFMYjYob6JsWYIqwk1ylyCzgLuHZWFnVbpYryEX1CDi+HYNTfakJPUFq+olTffHzx+umRd
 a0ZaTni7xH397hNzfvXmHzT8Cf8vj6Y=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-546-BWga3YOdOem8z4yuh6x95g-1; Mon, 25 Apr 2022 10:10:19 -0400
X-MC-Unique: BWga3YOdOem8z4yuh6x95g-1
Received: from smtp.corp.redhat.com (int-mx10.intmail.prod.int.rdu2.redhat.com
 [10.11.54.10])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id D853E38337F6;
 Mon, 25 Apr 2022 14:10:18 +0000 (UTC)
Received: from warthog.procyon.org.uk (unknown [10.33.36.13])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 075F5401E97;
 Mon, 25 Apr 2022 14:10:16 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
In-Reply-To: <YmKp68xvZEjBFell@codewreck.org>
References: <YmKp68xvZEjBFell@codewreck.org> <YlySEa6QGmIHlrdG@codewreck.org>
 <YlyFEuTY7tASl8aY@codewreck.org> <1050016.1650537372@warthog.procyon.org.uk>
 <1817268.LulUJvKFVv@silver>
To: asmadeus@codewreck.org
MIME-Version: 1.0
Content-ID: <3174157.1650895816.1@warthog.procyon.org.uk>
Date: Mon, 25 Apr 2022 15:10:16 +0100
Message-ID: <3174158.1650895816@warthog.procyon.org.uk>
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.10
X-Spam-Score: -1.5 (-)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: There may be a quick and dirty workaround. I think the
 problem
 is that unless the O_APPEND read starts at the beginning of a page, netfs
 is going to enforce a read. Does the attached patch fix the pro [...] 
 Content analysis details:   (-1.5 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [170.10.133.124 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.6 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1nizQ5-0002ff-6d
Subject: Re: [V9fs-developer] 9p EBADF with cache enabled (Was: 9p fs-cache
 tests/benchmark (was: 9p fscache Duplicate cookie detected))
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
Cc: lucho@ionkov.net, David Kahurani <k.kahurani@gmail.com>, ericvh@gmail.com,
 netdev@vger.kernel.org, Christian Schoenebeck <linux_oss@crudebyte.com>,
 linux-kernel@vger.kernel.org, Greg Kurz <groug@kaod.org>, dhowells@redhat.com,
 v9fs-developer@lists.sourceforge.net, kuba@kernel.org, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

There may be a quick and dirty workaround.  I think the problem is that unless
the O_APPEND read starts at the beginning of a page, netfs is going to enforce
a read.  Does the attached patch fix the problem?  (note that it's untested)

Also, can you get the contents of /proc/fs/fscache/stats from after
reproducing the problem?

David
---
diff --git a/fs/9p/vfs_addr.c b/fs/9p/vfs_addr.c
index 501128188343..5f61fdb950b0 100644
--- a/fs/9p/vfs_addr.c
+++ b/fs/9p/vfs_addr.c
@@ -291,16 +291,25 @@ static int v9fs_write_end(struct file *filp, struct address_space *mapping,
 	struct folio *folio = page_folio(subpage);
 	struct inode *inode = mapping->host;
 	struct v9fs_inode *v9inode = V9FS_I(inode);
+	size_t fsize = folio_size(folio);
+	size_t offset = pos & (fsize - 1);
+	/* With multipage folio support, we may be given len > fsize */
+	size_t copy_size = min_t(size_t, len, fsize - offset);
 
 	p9_debug(P9_DEBUG_VFS, "filp %p, mapping %p\n", filp, mapping);
 
 	if (!folio_test_uptodate(folio)) {
-		if (unlikely(copied < len)) {
+		if (unlikely(copied < copy_size)) {
 			copied = 0;
 			goto out;
 		}
-
-		folio_mark_uptodate(folio);
+		if (offset == 0) {
+			if (copied == fsize)
+				folio_mark_uptodate(folio);
+			/* Could clear to end of page if last_pos == new EOF
+			 * and then mark uptodate
+			 */
+		}
 	}
 
 	/*
diff --git a/fs/netfs/buffered_read.c b/fs/netfs/buffered_read.c
index 281a88a5b8dc..78439f628c23 100644
--- a/fs/netfs/buffered_read.c
+++ b/fs/netfs/buffered_read.c
@@ -364,6 +364,12 @@ int netfs_write_begin(struct file *file, struct address_space *mapping,
 	if (folio_test_uptodate(folio))
 		goto have_folio;
 
+	if (!netfs_is_cache_enabled(ctx) &&
+	    (file->f_flags & (O_APPEND | O_ACCMODE)) == (O_APPEND | O_WRONLY)) {
+		netfs_stat(&netfs_n_rh_write_append);
+		goto have_folio_no_wait;
+	}
+
 	/* If the page is beyond the EOF, we want to clear it - unless it's
 	 * within the cache granule containing the EOF, in which case we need
 	 * to preload the granule.
diff --git a/fs/netfs/internal.h b/fs/netfs/internal.h
index b7b0e3d18d9e..a1cd649197dc 100644
--- a/fs/netfs/internal.h
+++ b/fs/netfs/internal.h
@@ -67,6 +67,7 @@ extern atomic_t netfs_n_rh_read_failed;
 extern atomic_t netfs_n_rh_zero;
 extern atomic_t netfs_n_rh_short_read;
 extern atomic_t netfs_n_rh_write;
+extern atomic_t netfs_n_rh_write_append;
 extern atomic_t netfs_n_rh_write_begin;
 extern atomic_t netfs_n_rh_write_done;
 extern atomic_t netfs_n_rh_write_failed;
diff --git a/fs/netfs/stats.c b/fs/netfs/stats.c
index 5510a7a14a40..fce87f86f950 100644
--- a/fs/netfs/stats.c
+++ b/fs/netfs/stats.c
@@ -23,6 +23,7 @@ atomic_t netfs_n_rh_read_failed;
 atomic_t netfs_n_rh_zero;
 atomic_t netfs_n_rh_short_read;
 atomic_t netfs_n_rh_write;
+atomic_t netfs_n_rh_write_append;
 atomic_t netfs_n_rh_write_begin;
 atomic_t netfs_n_rh_write_done;
 atomic_t netfs_n_rh_write_failed;
@@ -37,10 +38,11 @@ void netfs_stats_show(struct seq_file *m)
 		   atomic_read(&netfs_n_rh_write_zskip),
 		   atomic_read(&netfs_n_rh_rreq),
 		   atomic_read(&netfs_n_rh_sreq));
-	seq_printf(m, "RdHelp : ZR=%u sh=%u sk=%u\n",
+	seq_printf(m, "RdHelp : ZR=%u sh=%u sk=%u wa=%u\n",
 		   atomic_read(&netfs_n_rh_zero),
 		   atomic_read(&netfs_n_rh_short_read),
-		   atomic_read(&netfs_n_rh_write_zskip));
+		   atomic_read(&netfs_n_rh_write_zskip),
+		   atomic_read(&netfs_n_rh_write_append));
 	seq_printf(m, "RdHelp : DL=%u ds=%u df=%u di=%u\n",
 		   atomic_read(&netfs_n_rh_download),
 		   atomic_read(&netfs_n_rh_download_done),



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
