Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 586451C425A
	for <lists+v9fs-developer@lfdr.de>; Mon,  4 May 2020 19:21:11 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1jVemE-0002nd-5I; Mon, 04 May 2020 17:21:10 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <dhowells@redhat.com>) id 1jVemD-0002nW-41
 for v9fs-developer@lists.sourceforge.net; Mon, 04 May 2020 17:21:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=e4U4fcN/pK7N2vY4Mne5ej9n14XUHHEQ4OsRfDbqy0E=; b=foUN8mGB8agoqcCtQdqMvyooaS
 UVl8oH4zA7jIuWEG2P1fNUYOOTiPCbHpokQBqvHlQTpAGuQKAklkiA6zsQr3nkEuthOSb+7cawuar
 62jXfudzoR9hZj/frW8JZmgU1iORA83GKtt6CVTqB52igsvUOwvfn2i4j/km29CeaLtI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=e4U4fcN/pK7N2vY4Mne5ej9n14XUHHEQ4OsRfDbqy0E=; b=G1v6hTTDd/KgNUyf8As7maL0Wd
 dqqIY6pETySStB+JBUWihAvOlfODSOA5IaAEsNEeWpdrk6cOSBRE6HWHsZ6Zn+CuiQJDCpov5np5c
 2/loQMBCEAIzUGmy6ZS/A61JVzb3N1xp7vxuk1xTLCcvb9zlotJrSZUvy3kryoxB3dp0=;
Received: from us-smtp-delivery-1.mimecast.com ([207.211.31.120]
 helo=us-smtp-1.mimecast.com)
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.2)
 id 1jVemB-007ArS-RX
 for v9fs-developer@lists.sourceforge.net; Mon, 04 May 2020 17:21:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1588612861;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=e4U4fcN/pK7N2vY4Mne5ej9n14XUHHEQ4OsRfDbqy0E=;
 b=Qn7qtNBk5ABdigfpA0QcL3nmbVzOrgBP+g17QxmsuFGfVMI2soWCG8ByUv8TseUC4wZr4j
 VuCc0RSFqeXlpdFg2XHQYqBTjXhvWQzW+1JMmwjvpUv3AAvgbtJ4daKvu/F1z22FvFk4KT
 aHmAv7lxEBlyvhyl/z3jThF5oMskZcQ=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-28-u8C8a5BLMmaTOqWvrjo2nA-1; Mon, 04 May 2020 13:14:31 -0400
X-MC-Unique: u8C8a5BLMmaTOqWvrjo2nA-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id E0E9C835B40;
 Mon,  4 May 2020 17:14:29 +0000 (UTC)
Received: from warthog.procyon.org.uk (ovpn-118-225.rdu2.redhat.com
 [10.10.118.225])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 1704760F8D;
 Mon,  4 May 2020 17:14:26 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
To: Trond Myklebust <trondmy@hammerspace.com>,
 Anna Schumaker <anna.schumaker@netapp.com>, Steve French <sfrench@samba.org>, 
 Jeff Layton <jlayton@redhat.com>
Date: Mon, 04 May 2020 18:14:26 +0100
Message-ID: <158861246621.340223.9118210695394840507.stgit@warthog.procyon.org.uk>
In-Reply-To: <158861203563.340223.7585359869938129395.stgit@warthog.procyon.org.uk>
References: <158861203563.340223.7585359869938129395.stgit@warthog.procyon.org.uk>
User-Agent: StGit/0.21
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Spam-Score: -0.3 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [207.211.31.120 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [207.211.31.120 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
 -0.2 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jVemB-007ArS-RX
Subject: [V9fs-developer] [RFC PATCH 46/61] cachefiles: Shape write requests
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
 linux-kernel@vger.kernel.org, Matthew Wilcox <willy@infradead.org>,
 dhowells@redhat.com, Alexander Viro <viro@zeniv.linux.org.uk>,
 linux-fsdevel@vger.kernel.org, v9fs-developer@lists.sourceforge.net,
 ceph-devel@vger.kernel.org, linux-afs@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

In cachefiles_shape_extent(), shape a write request to always write to the
cache.  The assumption is made that the caller has read the entire cache
granule beforehand if necessary.

Possibly this should be amended so that writes will only take place to
granules that are marked present and granules that lie beyond the EOF.

Signed-off-by: David Howells <dhowells@redhat.com>
---

 fs/cachefiles/content-map.c |   22 +++++++++++++++-------
 1 file changed, 15 insertions(+), 7 deletions(-)

diff --git a/fs/cachefiles/content-map.c b/fs/cachefiles/content-map.c
index 13632c097248..2c45092465b6 100644
--- a/fs/cachefiles/content-map.c
+++ b/fs/cachefiles/content-map.c
@@ -71,7 +71,8 @@ static unsigned int cachefiles_shape_single(struct fscache_object *obj,
 
 	extent->dio_block_size = CACHEFILES_DIO_BLOCK_SIZE;
 
-	if (object->content_info == CACHEFILES_CONTENT_SINGLE) {
+	if (!for_write &&
+	    object->content_info == CACHEFILES_CONTENT_SINGLE) {
 		ret = FSCACHE_READ_FROM_CACHE;
 	} else {
 		eof = (i_size + PAGE_SIZE - 1) >> PAGE_SHIFT;
@@ -128,13 +129,20 @@ unsigned int cachefiles_shape_extent(struct fscache_object *obj,
 
 	granule = start / CACHEFILES_GRAN_PAGES;
 
-	/* If the content map didn't get expanded for some reason - simply
-	 * ignore this granule.
-	 */
-	if (granule / 8 >= object->content_map_size)
-		return 0;
+	if (granule / 8 >= object->content_map_size) {
+		cachefiles_expand_content_map(object, i_size);
+		if (granule / 8 >= object->content_map_size)
+			return 0;
+	}
 
-	if (cachefiles_granule_is_present(object, granule)) {
+	if (for_write) {
+		/* Assume that the preparation to write involved preloading any
+		 * bits of the cache that weren't to be written and filling any
+		 * gaps that didn't end up being written.
+		 */
+		bend = end;
+		ret = FSCACHE_WRITE_TO_CACHE;
+	} else if (cachefiles_granule_is_present(object, granule)) {
 		/* The start of the requested extent is present in the cache -
 		 * restrict the returned extent to the maximum length of what's
 		 * available.




_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
