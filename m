Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id AAB77315886
	for <lists+v9fs-developer@lfdr.de>; Tue,  9 Feb 2021 22:25:54 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1l9aW8-0000bh-Mi; Tue, 09 Feb 2021 21:25:52 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <dhowells@redhat.com>) id 1l9aW6-0000bM-RO
 for v9fs-developer@lists.sourceforge.net; Tue, 09 Feb 2021 21:25:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-ID:Date:Content-ID:Content-Type:
 MIME-Version:Subject:Cc:To:References:In-Reply-To:From:Sender:Reply-To:
 Content-Transfer-Encoding:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=njyj2XCXYGtI5AX/JV14IYXR8Ipi7RDaSVkhJ8oSglg=; b=lmVyWKaQzK3Q1P9sBgbyWHzMkQ
 XcICiIhxbWnSHZIbs3xW+9cxsrdbLrFiUdTvYqxK8WMTWJ5Krbd+UAsm4RirMPAQLQJS43nbqb7ty
 cjuwmXZpIYznvO2R7bELRev9S4ELYssQhY07EDhVCYhAjRF/ZhksnzpxYMcqLEVY+7SU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-ID:Date:Content-ID:Content-Type:MIME-Version:Subject:Cc:To:
 References:In-Reply-To:From:Sender:Reply-To:Content-Transfer-Encoding:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=njyj2XCXYGtI5AX/JV14IYXR8Ipi7RDaSVkhJ8oSglg=; b=Z5gAWNT6OjZhA1Ys5eT0pV64+0
 PfwYb1QUGNNTpZzZPokeU1L+Teqdg+ON8Pa7ZtsOYCcsM1egSdn7TASl+NSRqXjApOaE113SIcFiT
 6L6TGcgJYegdMY/ML1aX3khl82d17pUChyhZihH/mFEmIGsssdCL2pbc3cZvrPMXqfu0=;
Received: from us-smtp-delivery-124.mimecast.com ([63.128.21.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.3)
 id 1l9aVw-0003AB-SH
 for v9fs-developer@lists.sourceforge.net; Tue, 09 Feb 2021 21:25:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1612905935;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=njyj2XCXYGtI5AX/JV14IYXR8Ipi7RDaSVkhJ8oSglg=;
 b=SgoM+oiTs+SjkimMNKUBXmrMn+GuDTYvwJHo58/V5xQspujOma25ioY7OaheB8v+SjSim9
 VarEUeSzLuXEvzMtjwCzhXE813UY/x4VnXQmNC/xK3EsYN/yRIVjBXt649yWTi8QhWBmbh
 4jG+skmzousUa/ZDP0kd2TDo9RtcVDc=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-166-Ez0mEz_fP32izAfxafFp3w-1; Tue, 09 Feb 2021 16:25:32 -0500
X-MC-Unique: Ez0mEz_fP32izAfxafFp3w-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id B7E8FCC626;
 Tue,  9 Feb 2021 21:25:30 +0000 (UTC)
Received: from warthog.procyon.org.uk (ovpn-115-23.rdu2.redhat.com
 [10.10.115.23])
 by smtp.corp.redhat.com (Postfix) with ESMTP id E044519C78;
 Tue,  9 Feb 2021 21:25:23 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
In-Reply-To: <20210209202134.GA308988@casper.infradead.org>
References: <20210209202134.GA308988@casper.infradead.org>
 <591237.1612886997@warthog.procyon.org.uk>
 <CAHk-=wj-k86FOqAVQ4ScnBkX3YEKuMzqTEB2vixdHgovJpHc9w@mail.gmail.com>
To: Matthew Wilcox <willy@infradead.org>
MIME-Version: 1.0
Content-ID: <618608.1612905923.1@warthog.procyon.org.uk>
Date: Tue, 09 Feb 2021 21:25:23 +0000
Message-ID: <618609.1612905923@warthog.procyon.org.uk>
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Spam-Score: -0.7 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: infradead.org]
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [63.128.21.124 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.6 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1l9aVw-0003AB-SH
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
 linux-afs@lists.infradead.org, dhowells@redhat.com, linux-cachefs@redhat.com,
 Alexander Viro <viro@zeniv.linux.org.uk>,
 Trond Myklebust <trondmy@hammerspace.com>,
 linux-fsdevel <linux-fsdevel@vger.kernel.org>,
 v9fs-developer@lists.sourceforge.net, ceph-devel@vger.kernel.org,
 Linus Torvalds <torvalds@linux-foundation.org>,
 Anna Schumaker <anna.schumaker@netapp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Matthew Wilcox <willy@infradead.org> wrote:

> Yeah, I have trouble with the private2 vs fscache bit too.  I've been
> trying to persuade David that he doesn't actually need an fscache
> bit at all; he can just increment the page's refcount to prevent it
> from being freed while he writes data to the cache.

That's not what the bit is primarily being used for.  It's being used to
prevent the starting of a second write to the cache whilst the first is in
progress and also to prevent modification whilst DMA to the cache is in
progress.  This isn't so obvious in this cut-down patchset, but comes more in
to play with full caching of local writes in my fscache-iter branch.

I can't easily share PG_writeback for this because each bit covers a write to
a different place.  PG_writeback covers the write to the server and PG_fscache
the write to the cache.  These writes may get split up differently and will
most likely finish at different times.

If I have to share PG_writeback, that will mean storing both states for each
page somewhere else and then "OR'ing" them together to drive PG_writeback.

David



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
