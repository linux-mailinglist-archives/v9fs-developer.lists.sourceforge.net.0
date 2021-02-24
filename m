Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A0A11323E4C
	for <lists+v9fs-developer@lfdr.de>; Wed, 24 Feb 2021 14:35:05 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1lEuJf-0003FI-IG; Wed, 24 Feb 2021 13:34:59 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <dhowells@redhat.com>) id 1lEuJe-0003FC-T7
 for v9fs-developer@lists.sourceforge.net; Wed, 24 Feb 2021 13:34:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-ID:Date:Content-ID:Content-Type:
 MIME-Version:Subject:Cc:To:References:In-Reply-To:From:Sender:Reply-To:
 Content-Transfer-Encoding:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=FGAEWcqi7R+QLdnM9l4hJ0vRCcM6Gnle1kdY4AuWCGU=; b=g2ZcM8HK8EKODV7zOegPwy6FXN
 tOLC98i/niaYjhMFIJQ+NtjGqxg7GxWR6JtftXhEq4+7lWz/5ntMLuKF3n4w4GCNdJWJvy+pRI0ye
 8kZtEcgFO2dSmODQ7ZJtEkNvqFC0E7Qygdx7MXHf0vu77TfT6pPRf72BDaqSIMTV0xlA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-ID:Date:Content-ID:Content-Type:MIME-Version:Subject:Cc:To:
 References:In-Reply-To:From:Sender:Reply-To:Content-Transfer-Encoding:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=FGAEWcqi7R+QLdnM9l4hJ0vRCcM6Gnle1kdY4AuWCGU=; b=UrDKulXtZCr5/OJ+K5s2y+saYu
 ns3roKHb1TOSbEKHBpQuAi8OEAWb9h8hswMD22wR+XHy64W232uNywMgD+vIOV2rvWp2APfZuhnVz
 5BH33MBiIR06uwhNIvty/Ji5rPkSGqL+Xk3S+rytGrDRqk7dB8OTy/7O5TZacobcI85E=;
Received: from us-smtp-delivery-124.mimecast.com ([63.128.21.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.2)
 id 1lEuJa-003ihq-0t
 for v9fs-developer@lists.sourceforge.net; Wed, 24 Feb 2021 13:34:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1614173687;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=FGAEWcqi7R+QLdnM9l4hJ0vRCcM6Gnle1kdY4AuWCGU=;
 b=KdNQ1Uyqgt9qA7u5Z3h4j+bIf0supzZIX+H3VaJV/m6Io4eJ5O+mwWELqeFAIFcxsFuZZ1
 5/L7Z8GBX2tYC0/7IOn+GgFVRpTHmKoHOW9vUJa3yug0j3rQ3eUWs4zXH2fRd/V9HN8Whs
 gwv/Q2cP57ZjYLR/QJHLQgoAC9A5vMw=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-540-3MKbxeFLOOeiKKs9HaYL0w-1; Wed, 24 Feb 2021 08:33:46 -0500
X-MC-Unique: 3MKbxeFLOOeiKKs9HaYL0w-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 82D3BD547E;
 Wed, 24 Feb 2021 13:32:07 +0000 (UTC)
Received: from warthog.procyon.org.uk (ovpn-119-68.rdu2.redhat.com
 [10.10.119.68])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 320E35D9F1;
 Wed, 24 Feb 2021 13:32:03 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
In-Reply-To: <CAH2r5mv=PZk_wn2=b0VQcaom9TEw1MGLz+qB_Ktxxm2bnV9Nig@mail.gmail.com>
References: <CAH2r5mv=PZk_wn2=b0VQcaom9TEw1MGLz+qB_Ktxxm2bnV9Nig@mail.gmail.com>
 <161340385320.1303470.2392622971006879777.stgit@warthog.procyon.org.uk>
 <9e49f96cd80eaf9c8ed267a7fbbcb4c6467ee790.camel@redhat.com>
 <CAH2r5mvPLivjuE=cbijzGSHOvx-hkWSWbcxpoBnJX-BR9pBskQ@mail.gmail.com>
 <20210216021015.GH2858050@casper.infradead.org>
To: Steve French <smfrench@gmail.com>
MIME-Version: 1.0
Content-ID: <3743318.1614173522.1@warthog.procyon.org.uk>
Date: Wed, 24 Feb 2021 13:32:02 +0000
Message-ID: <3743319.1614173522@warthog.procyon.org.uk>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
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
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1lEuJa-003ihq-0t
Subject: Re: [V9fs-developer] [PATCH 00/33] Network fs helper library &
 fscache kiocb API [ver #3]
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
Cc: David Wysochanski <dwysocha@redhat.com>, Steve French <sfrench@samba.org>,
 linux-nfs <linux-nfs@vger.kernel.org>,
 William Kucharski <william.kucharski@oracle.com>,
 Jeff Layton <jlayton@redhat.com>, CIFS <linux-cifs@vger.kernel.org>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 LKML <linux-kernel@vger.kernel.org>, Matthew Wilcox <willy@infradead.org>,
 linux-afs@lists.infradead.org, dhowells@redhat.com,
 linux-mm <linux-mm@kvack.org>, linux-cachefs@redhat.com,
 Alexander Viro <viro@zeniv.linux.org.uk>,
 Trond Myklebust <trondmy@hammerspace.com>,
 linux-fsdevel <linux-fsdevel@vger.kernel.org>,
 v9fs-developer@lists.sourceforge.net, ceph-devel@vger.kernel.org,
 Christoph Hellwig <hch@lst.de>, Anna Schumaker <anna.schumaker@netapp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Steve French <smfrench@gmail.com> wrote:

> This (readahead behavior improvements in Linux, on single large file
> sequential read workloads like cp or grep) gets particularly interesting
> with SMB3 as multichannel becomes more common.  With one channel having one
> readahead request pending on the network is suboptimal - but not as bad as
> when multichannel is negotiated. Interestingly in most cases two network
> connections to the same server (different TCP sockets,but the same mount,
> even in cases where only network adapter) can achieve better performance -
> but still significantly lags Windows (and probably other clients) as in
> Linux we don't keep multiple I/Os in flight at one time (unless different
> files are being read at the same time by different threads).

I think it should be relatively straightforward to make the netfs_readahead()
function generate multiple read requests.  If I wasn't handed sufficient pages
by the VM upfront to do two or more read requests, I would need to do extra
expansion.  There are a couple of ways this could be done:

 (1) I could expand the readahead_control after fully starting a read request
     and then create another independent read request, and another for how
     ever many we want.

 (2) I could expand the readahead_control first to cover however many requests
     I'm going to generate, then chop it up into individual read requests.

However, generating larger requests means we're more likely to run into a
problem for the cache: if we can't allocate enough pages to fill out a cache
block, we don't have enough data to write to the cache.  Further, if the pages
are just unlocked and abandoned, readpage will be called to read them
individually - which means they likely won't get cached unless the cache
granularity is PAGE_SIZE.  But that's probably okay if ENOMEM occurred.

There are some other considerations too:

 (*) I would need to query the filesystem to find out if I should create
     another request.  The fs would have to keep track of how many I/O reqs
     are in flight and what the limit is.

 (*) How and where should the readahead triggers be emplaced?  I'm guessing
     that each block would need a trigger and that this should cause more
     requests to be generated until we hit the limit.

 (*) I would probably need to shuffle the request generation for the second
     and subsequent blocks in a single netfs_readahead() call to a worker
     thread because it'll probably be in a userspace kernel-side context and
     blocking an application from proceeding and consuming the pages already
     committed.

David



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
