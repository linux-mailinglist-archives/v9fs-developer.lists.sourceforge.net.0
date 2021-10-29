Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 652EE43FDD9
	for <lists+v9fs-developer@lfdr.de>; Fri, 29 Oct 2021 16:06:32 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1mgSWd-0007em-Gk; Fri, 29 Oct 2021 14:06:30 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <dhowells@redhat.com>) id 1mgSWb-0007ef-J7
 for v9fs-developer@lists.sourceforge.net; Fri, 29 Oct 2021 14:06:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-ID:Date:Content-Transfer-Encoding:
 Content-ID:Content-Type:MIME-Version:Subject:Cc:References:In-Reply-To:From:
 Sender:Reply-To:To:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=UAO5hlBNRIsi6HHTbgauN8V1YNxASqG4MUTjtXwDRGE=; b=QJahH5VmgSlhQm8Lp+/JN6EJgP
 QqH1Z91lTw53x3kYmdW1JJy2CYmqHjspTlHu9on7rKw8VFHjkyqGV2hTEKdd7ut3Nu8f/BYuJ64QY
 b6Q1FjQFPwzBa0USyFzkOK5XP1NsWfTD/ZXNNCyDpdBP/Obd34Dkf9VSg/E8LHXuma7E=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-ID:Date:Content-Transfer-Encoding:Content-ID:Content-Type:
 MIME-Version:Subject:Cc:References:In-Reply-To:From:Sender:Reply-To:To:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=UAO5hlBNRIsi6HHTbgauN8V1YNxASqG4MUTjtXwDRGE=; b=KO5zRrgji76bf+vcekeZIW0ZMO
 NJ684ZfTYWCrAmtKz/L3rfTF78AdeNt53zmHvdEpu01q/EpUnT3VaDb0h8HPY93sXVqjlw4xooZfh
 tmEZ9iztayyAtUCrZV6P+XzWyMsCR4iKL+yJo+N7xtPlyq0aY9nXMOhbVF2ZKGqod/ZA=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mgSWU-0000tS-9W
 for v9fs-developer@lists.sourceforge.net; Fri, 29 Oct 2021 14:06:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1635516376;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:to:
 cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=UAO5hlBNRIsi6HHTbgauN8V1YNxASqG4MUTjtXwDRGE=;
 b=jTp7YPB9EYvC87mQNrg7+Ehliv7Vgq8X4ZI39bpIAI9Jv0+wW79dJK46vf3yacQShm36Et
 bLJuTys5v7HC46coF5fpVuUVRH640MiBY5aqFbTiuBXyWi3pw5H/d5vngU0ZlSK6EY6rrx
 oI+E+Ub+1IP5JgsU5o7LCKdH3G8DCqA=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-34-6oVbE3goM2C8LodwzHbb4Q-1; Fri, 29 Oct 2021 10:03:15 -0400
X-MC-Unique: 6oVbE3goM2C8LodwzHbb4Q-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id C248236304;
 Fri, 29 Oct 2021 14:03:11 +0000 (UTC)
Received: from warthog.procyon.org.uk (unknown [10.33.36.19])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 5727F79452;
 Fri, 29 Oct 2021 14:02:37 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
In-Reply-To: <163363944839.1980952.3311507543724895463.stgit@warthog.procyon.org.uk>
References: <163363944839.1980952.3311507543724895463.stgit@warthog.procyon.org.uk>
 <163363935000.1980952.15279841414072653108.stgit@warthog.procyon.org.uk>
MIME-Version: 1.0
Content-ID: <1876664.1635516156.1@warthog.procyon.org.uk>
Date: Fri, 29 Oct 2021 15:02:36 +0100
Message-ID: <1876665.1635516156@warthog.procyon.org.uk>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Spam-Score: 0.3 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  David Howells <dhowells@redhat.com> wrote: > Move cifs/smb
 to using the alternate fallback fscache I/O API instead of > the old upstream
 I/O API as that is about to be deleted. The alternate API > will also be
 deleted at some point in the futu [...] 
 Content analysis details:   (0.3 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [170.10.133.124 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [170.10.133.124 listed in wl.mailspike.net]
 1.2 MISSING_HEADERS        Missing To: header
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1mgSWU-0000tS-9W
Subject: Re: [V9fs-developer] [PATCH v3 07/10] cifs: (untested) Move to
 using the alternate fallback fscache I/O API
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
Cc: Shyam Prasad N <nspmangalore@gmail.com>, Steve French <sfrench@samba.org>,
 linux-nfs@vger.kernel.org, Jeff Layton <jlayton@redhat.com>,
 linux-cifs@vger.kernel.org, linux-kernel@vger.kernel.org,
 Matthew Wilcox <willy@infradead.org>, linux-afs@lists.infradead.org,
 dhowells@redhat.com, linux-cachefs@redhat.com,
 Alexander Viro <viro@zeniv.linux.org.uk>,
 Trond Myklebust <trondmy@hammerspace.com>, linux-fsdevel@vger.kernel.org,
 v9fs-developer@lists.sourceforge.net, ceph-devel@vger.kernel.org,
 Anna Schumaker <anna.schumaker@netapp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

David Howells <dhowells@redhat.com> wrote:

> Move cifs/smb to using the alternate fallback fscache I/O API instead of
> the old upstream I/O API as that is about to be deleted.  The alternate API
> will also be deleted at some point in the future as it's dangerous (as is
> the old API) and can lead to data corruption if the backing filesystem can
> insert/remove bridging blocks of zeros into its extent list[1].
> 
> The alternate API reads and writes pages synchronously, with the intention
> of allowing removal of the operation management framework and thence the
> object management framework from fscache.
> 
> The preferred change would be to use the netfs lib, but the new I/O API can
> be used directly.  It's just that as the cache now needs to track data for
> itself, caching blocks may exceed page size...
> 
> Changes
> =======
> ver #2:
>   - Changed "deprecated" to "fallback" in the new function names[2].

I've managed to test this now.  There was a bug in it, fixed by the following
incremental change:

--- a/fs/cifs/fscache.h
+++ b/fs/cifs/fscache.h
@@ -75,7 +75,7 @@ static inline int cifs_readpage_from_fscache(struct inode *inode,
 static inline void cifs_readpage_to_fscache(struct inode *inode,
 					    struct page *page)
 {
-	if (PageFsCache(page))
+	if (CIFS_I(inode)->fscache)
 		__cifs_readpage_to_fscache(inode, page);
 }
 

It shouldn't be using PageFsCache() here.  That's only used to indicate that
an async DIO is in progress on the page, but since we're using the synchronous
fallback API, that should not happen.  Also, it's no longer used to indicate
that a page is being cached and trigger writeback that way.

David



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
