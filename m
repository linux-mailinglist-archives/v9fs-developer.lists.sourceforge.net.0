Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E1F333F6042
	for <lists+v9fs-developer@lfdr.de>; Tue, 24 Aug 2021 16:25:33 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1mIXMq-0000kP-3I; Tue, 24 Aug 2021 14:25:32 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jlayton@redhat.com>) id 1mIXMo-0000kE-TZ
 for v9fs-developer@lists.sourceforge.net; Tue, 24 Aug 2021 14:25:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=jS4DMiYMJEvLKBLFhfVXQbwK/7O32UF1dBTczqvLw1Y=; b=kk6udQhmTR5rld+8VnFnTZpb8a
 mlEOG+aikVX32oR3J99ipqUyM813uoOeF1ex0iClLGqih5Kgf26d7C8g8QrvCwkegcJTikkCc6ouf
 6lsxexdCXGLzyBDSK6nRklU/2z8OUYux8xZphWpg1KxG3mcevjP1gf5HQUMlxPnVyvX4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=jS4DMiYMJEvLKBLFhfVXQbwK/7O32UF1dBTczqvLw1Y=; b=hq5bGEUdBXfMI2JVFVll+bdpWN
 YlvnIbiSMwEJJcwkh4ct7B9L1waJVYXkEhfpRcUyE2O4eMs4vqVDBTJdD0/HM4TrGmyYVhym9kCAk
 ROGislOvx+4Y5+uOEyWIJlDgaOvvAac43idu3ETezsDOHsuqAfYCqRUtju7XqLeC2QBc=;
Received: from us-smtp-delivery-124.mimecast.com ([216.205.24.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mIXMn-00GxAS-N5
 for v9fs-developer@lists.sourceforge.net; Tue, 24 Aug 2021 14:25:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1629815123;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=jS4DMiYMJEvLKBLFhfVXQbwK/7O32UF1dBTczqvLw1Y=;
 b=BlaFjdHzjk9Eerzt1bRAubbkSEHUstJp9RWZzfMtvLjEHqLlt/LQbAgnVXgBXaqup+dls+
 hUffbufSCi7yr4+nzrVF/kO4kRbJdHzLPPGwkcs2Gi5xbZW7DA9AQK+gS/mZpqYk5d+3ct
 2N3RgowYBcc4TUNlq4OqBqs0WKMs/+A=
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com
 [209.85.219.70]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-499-yv5iaBsNPjKHdtCnzeSJOg-1; Tue, 24 Aug 2021 10:25:22 -0400
X-MC-Unique: yv5iaBsNPjKHdtCnzeSJOg-1
Received: by mail-qv1-f70.google.com with SMTP id
 h14-20020a0cffce000000b00372ea3f12a5so1275544qvv.9
 for <v9fs-developer@lists.sourceforge.net>;
 Tue, 24 Aug 2021 07:25:22 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
 :references:user-agent:mime-version:content-transfer-encoding;
 bh=jS4DMiYMJEvLKBLFhfVXQbwK/7O32UF1dBTczqvLw1Y=;
 b=nuh50wsxsFSPs7+zuPeHXAvIeYulggkZmVAUUstyy78BPccJFhJxLsdxUYnbG9+1tA
 106eZQ1Z9N1E7fp2V3FNAHw4VXjxL1Xwch7BPPcLPo/+0U6vv4OuH0MboPGs3Fia9FUi
 dUuGi4N75WinVJ0CRpdqE0HeB3XTzEGSKumtXUaFzrlNptAppwHJ8kBGjtBx9Z04PSj3
 E9hOJVZGeWtsFxkcIVdGRSKMBrG+px7XsE3SWWaawjDDpqhK/XrENaVECn9CQNDAf75+
 cTDaoz/8hAj36Kt3hxqxolYxbmUU9BXOYHu7OE4cUZyb0CDXyS4F3i2QloWddsqoNQRy
 BR+w==
X-Gm-Message-State: AOAM5332qWJnSr/brEd/f6OrAJH57fA+qZ+f5pqjtMm8kqFDMJEfzyKC
 P1S+833qaKou8j1DxMpfBGqbxj05ALQS3QOLEHyI5IgflnxgZYo3qd+rNWOsFsLNfjHlkRSp9NM
 o7aNlkLvb4R24+USYUDLoJ9cbB7JfvLbPxJE=
X-Received: by 2002:a05:620a:4050:: with SMTP id
 i16mr25621274qko.90.1629815121783; 
 Tue, 24 Aug 2021 07:25:21 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyw/vN4HfM869zB70GdhFgvXTyrDBhnvRbUsGuCtjTO3eGJIomB0OdYM13LOc5okIw+BG25bQ==
X-Received: by 2002:a05:620a:4050:: with SMTP id
 i16mr25621249qko.90.1629815121635; 
 Tue, 24 Aug 2021 07:25:21 -0700 (PDT)
Received: from [192.168.1.3] (68-20-15-154.lightspeed.rlghnc.sbcglobal.net.
 [68.20.15.154])
 by smtp.gmail.com with ESMTPSA id w20sm10217864qkj.116.2021.08.24.07.25.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 24 Aug 2021 07:25:21 -0700 (PDT)
Message-ID: <01c442d2b3aff85e0e95bfefb44ac6e77eb3373f.camel@redhat.com>
From: Jeff Layton <jlayton@redhat.com>
To: David Howells <dhowells@redhat.com>, linux-cachefs@redhat.com
Date: Tue, 24 Aug 2021 10:25:20 -0400
In-Reply-To: <162431188431.2908479.14031376932042135080.stgit@warthog.procyon.org.uk>
References: <162431188431.2908479.14031376932042135080.stgit@warthog.procyon.org.uk>
User-Agent: Evolution 3.40.4 (3.40.4-1.fc34)
MIME-Version: 1.0
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=jlayton@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-Spam-Score: -1.6 (-)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Mon, 2021-06-21 at 22:44 +0100, David Howells wrote: >
 Here are some patches that perform some preparatory work for the fscache >
 rewrite that's being worked on. These include: > > (1) Always selec [...]
 Content analysis details:   (-1.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [216.205.24.124 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [216.205.24.124 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1mIXMn-00GxAS-N5
Subject: Re: [V9fs-developer] [PATCH 00/12] fscache: Some prep work for
 fscache rewrite
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
 linux-afs@lists.infradead.org, linux-kernel@vger.kernel.org,
 Anna Schumaker <anna.schumaker@netapp.com>, Steve French <sfrench@samba.org>,
 linux-fsdevel@vger.kernel.org, v9fs-developer@lists.sourceforge.net,
 ceph-devel@vger.kernel.org, David Wysochanski <dwysocha@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Mon, 2021-06-21 at 22:44 +0100, David Howells wrote:
> Here are some patches that perform some preparatory work for the fscache
> rewrite that's being worked on.  These include:
> 
>  (1) Always select netfs stats when enabling fscache stats since they're
>      displayed through the same procfile.
> 
>  (2) Add a cookie debug ID that can be used in tracepoints instead of a
>      pointer and cache it in the netfs_cache_resources struct rather than
>      in the netfs_read_request struct to make it more available.
> 
>  (3) Use file_inode() in cachefiles rather than dereferencing file->f_inode
>      directly.
> 
>  (4) Provide a procfile to display fscache cookies.
> 
>  (5) Remove the fscache and cachefiles histogram procfiles.
> 
>  (6) Remove the fscache object list procfile.
> 
>  (7) Avoid using %p in fscache and cachefiles as the value is hashed and
>      not comparable to the register dump in an oops trace.
> 
>  (8) Fix the cookie hash function to actually achieve useful dispersion.
> 
>  (9) Fix fscache_cookie_put() so that it doesn't dereference the cookie
>      pointer in the tracepoint after the refcount has been decremented
>      (we're only allowed to do that if we decremented it to zero).
> 
> (10) Use refcount_t rather than atomic_t for the fscache_cookie refcount.
> 
> The patches can be found on this branch:
> 
> 	http://git.kernel.org/cgit/linux/kernel/git/dhowells/linux-fs.git/log/?h=fscache-next
> 
> David
> ---
> David Howells (12):
>       fscache: Select netfs stats if fscache stats are enabled
>       netfs: Move cookie debug ID to struct netfs_cache_resources
>       cachefiles: Use file_inode() rather than accessing ->f_inode
>       fscache: Add a cookie debug ID and use that in traces
>       fscache: Procfile to display cookies
>       fscache, cachefiles: Remove the histogram stuff
>       fscache: Remove the object list procfile
>       fscache: Change %p in format strings to something else
>       cachefiles: Change %p in format strings to something else
>       fscache: Fix cookie key hashing
>       fscache: Fix fscache_cookie_put() to not deref after dec
>       fscache: Use refcount_t for the cookie refcount instead of atomic_t
> 
> 
>  fs/cachefiles/Kconfig             |  19 --
>  fs/cachefiles/Makefile            |   2 -
>  fs/cachefiles/bind.c              |   2 -
>  fs/cachefiles/interface.c         |   6 +-
>  fs/cachefiles/internal.h          |  25 --
>  fs/cachefiles/io.c                |   6 +-
>  fs/cachefiles/key.c               |   2 +-
>  fs/cachefiles/main.c              |   7 -
>  fs/cachefiles/namei.c             |  61 ++---
>  fs/cachefiles/proc.c              | 114 --------
>  fs/cachefiles/xattr.c             |   4 +-
>  fs/fscache/Kconfig                |  24 --
>  fs/fscache/Makefile               |   2 -
>  fs/fscache/cache.c                |  11 +-
>  fs/fscache/cookie.c               | 201 +++++++++++----
>  fs/fscache/fsdef.c                |   3 +-
>  fs/fscache/histogram.c            |  87 -------
>  fs/fscache/internal.h             |  57 +---
>  fs/fscache/main.c                 |  39 +++
>  fs/fscache/netfs.c                |   2 +-
>  fs/fscache/object-list.c          | 414 ------------------------------
>  fs/fscache/object.c               |   8 -
>  fs/fscache/operation.c            |   3 -
>  fs/fscache/page.c                 |   6 -
>  fs/fscache/proc.c                 |  20 +-
>  include/linux/fscache-cache.h     |   4 -
>  include/linux/fscache.h           |   4 +-
>  include/linux/netfs.h             |   2 +-
>  include/trace/events/cachefiles.h |  68 ++---
>  include/trace/events/fscache.h    | 160 ++++++------
>  include/trace/events/netfs.h      |   2 +-
>  31 files changed, 367 insertions(+), 998 deletions(-)
>  delete mode 100644 fs/cachefiles/proc.c
>  delete mode 100644 fs/fscache/histogram.c
>  delete mode 100644 fs/fscache/object-list.c
> 
> 

This all looks good (modulo a nitpicky changelog comment). You can add:

Reviewed-by: Jeff Layton <jlayton@redhat.com>



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
