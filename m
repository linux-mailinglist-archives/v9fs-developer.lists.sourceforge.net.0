Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AE0147030B
	for <lists+v9fs-developer@lfdr.de>; Fri, 10 Dec 2021 15:42:10 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1mvh68-0004Oz-5m; Fri, 10 Dec 2021 14:42:08 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <dhowells@redhat.com>) id 1mvh5y-0004OV-If
 for v9fs-developer@lists.sourceforge.net; Fri, 10 Dec 2021 14:41:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-ID:Date:Content-Transfer-Encoding:
 Content-ID:Content-Type:MIME-Version:Subject:Cc:To:References:In-Reply-To:
 From:Sender:Reply-To:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=T9yxkADFMRNF8aF93nmuGpcnaccq/+cIasdAd+4pVZ8=; b=SqALgeVGox6vZVCWcBK8P33Fep
 QxvFLTWCMuFx9cr/HB5x+kzXCVpxIG2zv1TQPFhvk13b+PA4kkzCZltY51iYT/RxoO5/TMWAO4goy
 60Kq1vJc/3kbEoLYLcb3qVzd76XjrH9R4VCc7auzfmM48EW3AodDhBDrfMbL94B96mTo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-ID:Date:Content-Transfer-Encoding:Content-ID:Content-Type:
 MIME-Version:Subject:Cc:To:References:In-Reply-To:From:Sender:Reply-To:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=T9yxkADFMRNF8aF93nmuGpcnaccq/+cIasdAd+4pVZ8=; b=JDg+9Pt61vNNuZapHA+4bMmobU
 vyPkTyabnphHCGZm+HGS1EgiYByEBMO04YDAyXob+ev8lh/gexOq4f+JGOi4WE6ZddSntUoYrxo52
 Vl1gzPZ7S+QOkWxC7TYF+CBzgLAVzbi1EMn5sJ48OoWMs/SOQdcUO/1mlY2R9oSisTO4=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mvh5u-00BCPv-8G
 for v9fs-developer@lists.sourceforge.net; Fri, 10 Dec 2021 14:41:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1639147308;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=T9yxkADFMRNF8aF93nmuGpcnaccq/+cIasdAd+4pVZ8=;
 b=SpetS9YNGN07xltpQ/IPd+vcyhWmpF79cdKB0vPq6mdxyG/LKewat6E5IBbIQnQNCbD9lj
 gnqkhQ3mNZqvb8CXmZSUjcTKhJlG7RlbLAGr6gj3+0jmcjTEyVCuaLhZ/lhnK/+zeEJDVY
 sRxsOHvD7nwTYZ71lAhY8bHVFhuxoUc=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-576-I0NDMQ3eMliWByEhEkK--A-1; Fri, 10 Dec 2021 09:41:45 -0500
X-MC-Unique: I0NDMQ3eMliWByEhEkK--A-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 12AF5100F942;
 Fri, 10 Dec 2021 14:41:43 +0000 (UTC)
Received: from warthog.procyon.org.uk (unknown [10.33.36.122])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 6873360C04;
 Fri, 10 Dec 2021 14:41:21 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
In-Reply-To: <CAHk-=whtkzB446+hX0zdLsdcUJsJ=8_-0S1mE_R+YurThfUbLA@mail.gmail.com>
References: <CAHk-=whtkzB446+hX0zdLsdcUJsJ=8_-0S1mE_R+YurThfUbLA@mail.gmail.com>
 <163906878733.143852.5604115678965006622.stgit@warthog.procyon.org.uk>
 <163906888735.143852.10944614318596881429.stgit@warthog.procyon.org.uk>
 <CAHk-=wiTquFUu-b5ME=rbGEF8r2Vh1TXGfaZZuXyOutVrgRzfw@mail.gmail.com>
 <159180.1639087053@warthog.procyon.org.uk>
To: Linus Torvalds <torvalds@linux-foundation.org>
MIME-Version: 1.0
Content-ID: <288397.1639147280.1@warthog.procyon.org.uk>
Date: Fri, 10 Dec 2021 14:41:20 +0000
Message-ID: <288398.1639147280@warthog.procyon.org.uk>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Spam-Score: -1.6 (-)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Linus Torvalds <torvalds@linux-foundation.org> wrote: > But
 as mentioned for the other patches, you should then also be a lot > more
 careful about always using the end result as an 'unsigned int' > (or maybe
 'u32') too, and when comparing hashes for bina [...] 
 Content analysis details:   (-1.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [170.10.133.124 listed in wl.mailspike.net]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [170.10.133.124 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1mvh5u-00BCPv-8G
Subject: Re: [V9fs-developer] [PATCH v2 07/67] fscache: Implement a hash
 function
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
Cc: Steve French <sfrench@samba.org>, "open list:NFS,
 SUNRPC, AND..." <linux-nfs@vger.kernel.org>, CIFS <linux-cifs@vger.kernel.org>,
 linux-fsdevel <linux-fsdevel@vger.kernel.org>,
 Jeff Layton <jlayton@kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Matthew Wilcox <willy@infradead.org>, linux-afs@lists.infradead.org,
 dhowells@redhat.com, v9fs-developer@lists.sourceforge.net,
 linux-cachefs@redhat.com, Alexander Viro <viro@zeniv.linux.org.uk>,
 Trond Myklebust <trondmy@hammerspace.com>,
 JeffleXu <jefflexu@linux.alibaba.com>, ceph-devel@vger.kernel.org,
 Omar Sandoval <osandov@osandov.com>,
 Anna Schumaker <anna.schumaker@netapp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Linus Torvalds <torvalds@linux-foundation.org> wrote:

> But as mentioned for the other patches, you should then also be a lot
> more careful about always using the end result as an 'unsigned int'
> (or maybe 'u32') too, and when comparing hashes for binary search or
> other, you should always do th4e compare in some stable format.
> 
> Because doing
> 
>         return (long)hash_a - (long)hash_b;
> 
> and looking at the sign doesn't actually result in a stable ordering
> on 32-bit architectures. You don't get a transitive ordering (ie a < b
> and b < c doesn't imply a < c).
> 
> And presumably if the hashes are meaningful across machines, then hash
> comparisons should also be meaningful across machines.
> 
> So when comparing hashes, you need to compare them either in a truly
> bigger signed type (and make sure that doesn't get truncated) - kind
> of like how a lot of 'memcmp()' functions do 'unsigned char'
> subtractions in an 'int' - or you need to compare them _as_ 'unsigned
> int'.
> 
> Otherwise the comparisons will be all kinds of messed up.

I don't think it should matter in this case, as the in-memory hash tables are
an independent of what's on disk (and not even necessarily the same size).
They're only used for duplicate detection.  The idea was to be able to shorten
the scanning of a hash bucket by half on average, but I didn't make it do
that.  It's just that I use the same hash value as a quick check first.

However, since the comparator functions are only used to see if they're the
same or different, the attached change makes them return bool instead, no
cast or subtraction required.

David
---
diff --git a/fs/fscache/cookie.c b/fs/fscache/cookie.c
index 65cf2ae22a70..ca36b598d6b5 100644
--- a/fs/fscache/cookie.c
+++ b/fs/fscache/cookie.c
@@ -289,17 +289,15 @@ static int fscache_set_key(struct fscache_cookie *cookie,
 	return 0;
 }
 
-static long fscache_compare_cookie(const struct fscache_cookie *a,
-				   const struct fscache_cookie *b)
+static bool fscache_cookie_same(const struct fscache_cookie *a,
+				const struct fscache_cookie *b)
 {
 	const void *ka, *kb;
 
-	if (a->key_hash != b->key_hash)
-		return (long)a->key_hash - (long)b->key_hash;
-	if (a->volume != b->volume)
-		return (long)a->volume - (long)b->volume;
-	if (a->key_len != b->key_len)
-		return (long)a->key_len - (long)b->key_len;
+	if (a->key_hash	!= b->key_hash ||
+	    a->volume	!= b->volume ||
+	    a->key_len	!= b->key_len)
+		return false;
 
 	if (a->key_len <= sizeof(a->inline_key)) {
 		ka = &a->inline_key;
@@ -308,7 +306,7 @@ static long fscache_compare_cookie(const struct fscache_cookie *a,
 		ka = a->key;
 		kb = b->key;
 	}
-	return memcmp(ka, kb, a->key_len);
+	return memcmp(ka, kb, a->key_len) == 0;
 }
 
 static atomic_t fscache_cookie_debug_id = ATOMIC_INIT(1);
@@ -399,7 +397,7 @@ static bool fscache_hash_cookie(struct fscache_cookie *candidate)
 
 	hlist_bl_lock(h);
 	hlist_bl_for_each_entry(cursor, p, h, hash_link) {
-		if (fscache_compare_cookie(candidate, cursor) == 0) {
+		if (fscache_cookie_same(candidate, cursor)) {
 			if (!test_bit(FSCACHE_COOKIE_RELINQUISHED, &cursor->flags))
 				goto collision;
 			wait_for = fscache_get_cookie(cursor,
diff --git a/fs/fscache/volume.c b/fs/fscache/volume.c
index 26a6b8f315e1..0e80fd8fd14a 100644
--- a/fs/fscache/volume.c
+++ b/fs/fscache/volume.c
@@ -119,20 +119,18 @@ void fscache_end_volume_access(struct fscache_volume *volume,
 }
 EXPORT_SYMBOL(fscache_end_volume_access);
 
-static long fscache_compare_volume(const struct fscache_volume *a,
-				   const struct fscache_volume *b)
+static bool fscache_volume_same(const struct fscache_volume *a,
+				const struct fscache_volume *b)
 {
 	size_t klen;
 
-	if (a->key_hash != b->key_hash)
-		return (long)a->key_hash - (long)b->key_hash;
-	if (a->cache != b->cache)
-		return (long)a->cache    - (long)b->cache;
-	if (a->key[0] != b->key[0])
-		return (long)a->key[0]   - (long)b->key[0];
+	if (a->key_hash	!= b->key_hash ||
+	    a->cache	!= b->cache ||
+	    a->key[0]	!= b->key[0])
+		return false;
 
 	klen = round_up(a->key[0] + 1, sizeof(__le32));
-	return memcmp(a->key, b->key, klen);
+	return memcmp(a->key, b->key, klen) == 0;
 }
 
 static bool fscache_is_acquire_pending(struct fscache_volume *volume)
@@ -170,7 +168,7 @@ static bool fscache_hash_volume(struct fscache_volume *candidate)
 
 	hlist_bl_lock(h);
 	hlist_bl_for_each_entry(cursor, p, h, hash_link) {
-		if (fscache_compare_volume(candidate, cursor) == 0) {
+		if (fscache_volume_same(candidate, cursor)) {
 			if (!test_bit(FSCACHE_VOLUME_RELINQUISHED, &cursor->flags))
 				goto collision;
 			fscache_see_volume(cursor, fscache_volume_get_hash_collision);
@@ -335,7 +333,7 @@ static void fscache_wake_pending_volume(struct fscache_volume *volume,
 	struct hlist_bl_node *p;
 
 	hlist_bl_for_each_entry(cursor, p, h, hash_link) {
-		if (fscache_compare_volume(cursor, volume) == 0) {
+		if (fscache_volume_same(cursor, volume)) {
 			fscache_see_volume(cursor, fscache_volume_see_hash_wake);
 			clear_bit(FSCACHE_VOLUME_ACQUIRE_PENDING, &cursor->flags);
 			wake_up_bit(&cursor->flags, FSCACHE_VOLUME_ACQUIRE_PENDING);



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
