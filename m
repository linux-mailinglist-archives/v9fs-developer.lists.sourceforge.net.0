Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D367E440198
	for <lists+v9fs-developer@lfdr.de>; Fri, 29 Oct 2021 19:58:07 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1mgW8k-0001Uj-RU; Fri, 29 Oct 2021 17:58:05 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <dhowells@redhat.com>) id 1mgW8j-0001UQ-64
 for v9fs-developer@lists.sourceforge.net; Fri, 29 Oct 2021 17:58:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-ID:Date:Content-ID:Content-Type:
 MIME-Version:Subject:Cc:To:References:In-Reply-To:From:Sender:Reply-To:
 Content-Transfer-Encoding:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=DP06qRnSdFYC68aQSXyxDNJ6O08LDIGpwujMUiVvYT4=; b=SIXmGyA5ndjCTqE2/SBcSE4g9q
 T9KoK1Jam1D5Jf0vjmLgQvH3+t/SIvM4cVgziXtu5N+0pJywONr3DujIOKo05x9ZYy7kVX5cwrRoj
 0HlQGwIIPsgb1pWLdSbX2/deyMyIfs01kZOt7WGCxSXjJTUCG5Q8KYIOZdHPGEHtJ99k=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-ID:Date:Content-ID:Content-Type:MIME-Version:Subject:Cc:To:
 References:In-Reply-To:From:Sender:Reply-To:Content-Transfer-Encoding:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=DP06qRnSdFYC68aQSXyxDNJ6O08LDIGpwujMUiVvYT4=; b=YB3qxow8NggO3+0U64Q2Elhq1I
 3lQ+RWJFOAY5+F85jADGQ4bRc+O3boG/nFVNRO1Uy5yUJISZQYbJkCnTdkDmNxBgYvJcgzEV2Au2p
 p1oyGerwGA+UPKrvxORRPQOpBxKDV3zOE0lVdr6TDtPv7s/fIq62B6/Pi0tjvpYBVmRw=;
Received: from us-smtp-delivery-124.mimecast.com ([216.205.24.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mgW8T-0006eC-U0
 for v9fs-developer@lists.sourceforge.net; Fri, 29 Oct 2021 17:58:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1635530260;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=DP06qRnSdFYC68aQSXyxDNJ6O08LDIGpwujMUiVvYT4=;
 b=ZkMTUEqsKbqG79ZlGd2hMh8KDn68mPD97PSTp5r/5QxKtHaqwXivr9w5nFnU6Q8XLZD0u8
 nLRfQFHM4ky+8w9LBBoThZbIePWGb9QOMxjsNWEhqw2EG5jTxcIDIUbPcG1xYhoUqkbZxf
 hfgaSz44tlGGBR2lGzjLvVqTnpLTNiY=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-151-edqdTVEoNrGl8Zjakzts3Q-1; Fri, 29 Oct 2021 13:55:38 -0400
X-MC-Unique: edqdTVEoNrGl8Zjakzts3Q-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 79E6F10A8E02;
 Fri, 29 Oct 2021 17:55:36 +0000 (UTC)
Received: from warthog.procyon.org.uk (unknown [10.33.36.19])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 6985560C13;
 Fri, 29 Oct 2021 17:55:25 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
In-Reply-To: <CAHk-=wiy4KNREEqvd10Ku8VVSY1Lb=fxTA1TzGmqnLaHM3gdTg@mail.gmail.com>
References: <CAHk-=wiy4KNREEqvd10Ku8VVSY1Lb=fxTA1TzGmqnLaHM3gdTg@mail.gmail.com>
 <163551653404.1877519.12363794970541005441.stgit@warthog.procyon.org.uk>
To: Linus Torvalds <torvalds@linux-foundation.org>
MIME-Version: 1.0
Content-ID: <1889040.1635530124.1@warthog.procyon.org.uk>
Date: Fri, 29 Oct 2021 18:55:24 +0100
Message-ID: <1889041.1635530124@warthog.procyon.org.uk>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Linus Torvalds <torvalds@linux-foundation.org> wrote: > -
 it would be much better if you could incrementally just improve the > existing
 FSCACHE so that it just _works_ all the time, and fixes the > problems in
 it, and a bisection works, and there is no [...] 
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [216.205.24.124 listed in wl.mailspike.net]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [216.205.24.124 listed in list.dnswl.org]
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
X-Headers-End: 1mgW8T-0006eC-U0
Subject: Re: [V9fs-developer] [PATCH v4 00/10] fscache: Replace and remove
 old I/O API
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
Cc: Dave Wysochanski <dwysocha@redhat.com>, Steve French <sfrench@samba.org>,
 "open list:NFS, SUNRPC, 
 AND..." <linux-nfs@vger.kernel.org>, linux-afs@lists.infradead.org,
 Jeff Layton <jlayton@redhat.com>, CIFS <linux-cifs@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Shyam Prasad N <nspmangalore@gmail.com>, Matthew Wilcox <willy@infradead.org>,
 Trond Myklebust <trond.myklebust@hammerspace.com>, dhowells@redhat.com,
 linux-cachefs@redhat.com, Alexander Viro <viro@zeniv.linux.org.uk>,
 Trond Myklebust <trondmy@hammerspace.com>,
 linux-fsdevel <linux-fsdevel@vger.kernel.org>,
 v9fs-developer@lists.sourceforge.net, ceph-devel@vger.kernel.org,
 Anna Schumaker <anna.schumaker@netapp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Linus Torvalds <torvalds@linux-foundation.org> wrote:

>  - it would be much better if you could incrementally just improve the
> existing FSCACHE so that it just _works_ all the time, and fixes the
> problems in it, and a bisection works, and there is no flag-day.

As I stated in the cover letters, the advent of the kiocb and tmpfile
interfaces provide a way to massively simplify the way fscache and cachefiles
work - and, as a result, remove over five thousand lines of code.

With the changes I'm looking at making, I can get rid of the object state
machine as it stands and the operation scheduling - which means all of the
code in:

	fs/fscache/object.c
	fs/fscache/operation.c

gets deleted along with:

	fs/fscache/page.c
	fs/cachefiles/rdwr.c

when I remove the deprecated I/O code (which is what this patchset does).

A large chunk of code in fs/fscache/cookie.c gets removed and replaced too

Further, I've been looking at simplifying the index management with an eye to
completely replacing the cache backend with something more akin to a tagged
cache with fixed-size storage units.  This also allows the cachefiles code to
be simplified a bit too.

This means bisection is of limited value and why I'm looking at a 'flag day'.


There is one particular problem that *this* patchset was intended to address:
I want to convert the filesystems that are going to be accessing fscache to
use netfslib, but they're not all there yet so that there's one common body of
code that does VM interface, cache I/O and content crypto (eg. fscrypt).  Jeff
and I have converted afs and ceph already and I've got a conversion for 9p in
this patchset.  I have a partial patch for cifs/smb and have been discussing
that with Steve and Shyam.  Dave Wysochanski has a set of patches for nfs, but
there's pushback on it from the nfs maintainers.

This particular patchset is intended to enable removal of the old I/O routines
by changing nfs and cifs to use a "fallback" method to use the new kiocb-using
API and thus allow me to get on with the rest of it.

However, if you would rather I just removed all of fscache and (most of[*])
cachefiles, that I can do.  I have the patches arrayed in a way that makes
them easier to explain logically and, hopefully, easier to review.  It would,
however, leave any netfs that isn't converted to use netfslib unable to use
caching until converted.

David

[*] The code that deals with the cachefilesd UAPI will be mostly unchanged.



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
