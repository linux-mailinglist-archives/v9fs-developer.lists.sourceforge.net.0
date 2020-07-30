Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 811A72332AA
	for <lists+v9fs-developer@lfdr.de>; Thu, 30 Jul 2020 15:08:58 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1k18Iq-0001SZ-Hj; Thu, 30 Jul 2020 13:08:56 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jlayton@redhat.com>) id 1k18Il-0001SG-8A
 for v9fs-developer@lists.sourceforge.net; Thu, 30 Jul 2020 13:08:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=gWaKeY39EULxcPQEMCGaeW0bHOFmCjPvx3LSrbbV7xY=; b=lELhc1DVdKeK/nHyZ6XpSpBs3q
 7eSFYOUTZDA/bANCkJhmw1Ull5HdQGT9P4+ZS4FtuzmK/lIEydcQ+6MDrP8kj1yja/TBjzFh4vqYh
 a5saloi0rqMXhsylkqx365XZkwu1lHyWmTSG8kBF2uOzZ2Z9Y6r0+IQmigDpbb4dV5lQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=gWaKeY39EULxcPQEMCGaeW0bHOFmCjPvx3LSrbbV7xY=; b=EOY1D+mHly/kEmyFwDwA1sqx+k
 69j5jao6LkP+nWr6Sl+Hgyoen2l6SDIp7tYCc1yjvBG0REE7xL06P7nQft/1SMTtcRm8jyQrzAm9v
 FmBGN87V4r5PCeZyON4mAShEzdA+M/391+uEiWluUvN+qXByuNLuwkzkYebrh5nbigCk=;
Received: from us-smtp-delivery-1.mimecast.com ([205.139.110.120]
 helo=us-smtp-1.mimecast.com)
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.2)
 id 1k18If-007GOs-Lu
 for v9fs-developer@lists.sourceforge.net; Thu, 30 Jul 2020 13:08:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1596114519;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=gWaKeY39EULxcPQEMCGaeW0bHOFmCjPvx3LSrbbV7xY=;
 b=K1B86N++3/ou7F8sd5Tz/rH/Q0/L50bL/tW3TWW9RFSo3tJ3E3HNUctpWN2P2Em45fPu+o
 /j1csYK6HePcZOGhFP1H/+9rK75W3Nqxslxj1D1o7n+r+7P6lDDYrajX763rwMrL/xfQQc
 AJ0Xlsycu8AFP8WgtTgcowt+ckm0x8E=
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com
 [209.85.219.69]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-390-5igAQFCKPbGfBJys8sgLVg-1; Thu, 30 Jul 2020 09:08:38 -0400
X-MC-Unique: 5igAQFCKPbGfBJys8sgLVg-1
Received: by mail-qv1-f69.google.com with SMTP id em19so18084460qvb.14
 for <v9fs-developer@lists.sourceforge.net>;
 Thu, 30 Jul 2020 06:08:36 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
 :references:user-agent:mime-version:content-transfer-encoding;
 bh=gWaKeY39EULxcPQEMCGaeW0bHOFmCjPvx3LSrbbV7xY=;
 b=DrBeuOEMowtAfoe0E4mH2AsAmYriRabzAtcUWDAocNNmMqW1o1tAEGd2/Rws0+QGx+
 bRNwVhPchJdhU8FhHVhtUXLj5ATapX5EFkbPg/RHLkD9DuUrIoANEn5SeVjEcZrZZoJ1
 xVjUzMoO6nzDmB9VtSxtvH5MvDWbsf5UFGH44uwvIpDRtnwhGpLDRv4p6e7sC7prMaLP
 XldJzxUAbM5q3gwuMd9K9ufLuiY3SyO/G8+6KZ7r06PgpSexPwHkt5xqrpk+XSGtAcFS
 pCf35acQIU4LhCjlzJ1eDjJLBEBvpIDgtUJgqN6oLW3XsPK+2xfLBVbz11QngBHynPTf
 RZ8g==
X-Gm-Message-State: AOAM530RY3e2Cv74nx0qLdJ4sAlM21zhUHdtv4PF7vKlBtcZ4CYq9ov+
 qexGjFOQmPJlqPCCVkWN2jqeCiw9erQQE1qSRT+MZhbgs5GGOJ8oG9a2EcurCSZSP3gAtZNvoyi
 iiqZQUWf5Xa6LhI4fvYCEvuw41yq34BCoySA=
X-Received: by 2002:ac8:454f:: with SMTP id z15mr2627733qtn.351.1596114515021; 
 Thu, 30 Jul 2020 06:08:35 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzE3m4VK7ilMGfBwsUtRjmSKljYtJpn8E03df8J9j67dNo1Fgsoe+A7NDnW7aFB+gXKH74gBg==
X-Received: by 2002:ac8:454f:: with SMTP id z15mr2627612qtn.351.1596114513855; 
 Thu, 30 Jul 2020 06:08:33 -0700 (PDT)
Received: from tleilax.poochiereds.net
 (68-20-15-154.lightspeed.rlghnc.sbcglobal.net. [68.20.15.154])
 by smtp.gmail.com with ESMTPSA id 8sm4314260qkh.77.2020.07.30.06.08.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 30 Jul 2020 06:08:33 -0700 (PDT)
Message-ID: <2db05b3eb59bfb59688e7cb435c1b5f2096b8f8a.camel@redhat.com>
From: Jeff Layton <jlayton@redhat.com>
To: David Howells <dhowells@redhat.com>, torvalds@linux-foundation.org
Date: Thu, 30 Jul 2020 09:08:32 -0400
In-Reply-To: <447452.1596109876@warthog.procyon.org.uk>
References: <447452.1596109876@warthog.procyon.org.uk>
User-Agent: Evolution 3.36.4 (3.36.4-1.fc32)
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [205.139.110.120 listed in list.dnswl.org]
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: marc.info]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [205.139.110.120 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-Headers-End: 1k18If-007GOs-Lu
Subject: Re: [V9fs-developer] Upcoming: fscache rewrite
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
 linux-afs@lists.infradead.org, Eric Van Hensbergen <ericvh@gmail.com>,
 Dave Wysochanski <dwysocha@redhat.com>, linux-kernel@vger.kernel.org,
 Matthew Wilcox <willy@infradead.org>, Christoph Hellwig <hch@lst.de>,
 Steve French <sfrench@samba.org>, linux-cachefs@redhat.com,
 Alexander Viro <viro@zeniv.linux.org.uk>,
 Trond Myklebust <trondmy@hammerspace.com>, linux-fsdevel@vger.kernel.org,
 v9fs-developer@lists.sourceforge.net, ceph-devel@vger.kernel.org,
 Anna Schumaker <anna.schumaker@netapp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Thu, 2020-07-30 at 12:51 +0100, David Howells wrote:
> Hi Linus, Trond/Anna, Steve, Eric,
> 
> I have an fscache rewrite that I'm tempted to put in for the next merge
> window:
> 
> 	https://lore.kernel.org/linux-fsdevel/159465784033.1376674.18106463693989811037.stgit@warthog.procyon.org.uk/
> 
> It improves the code by:
> 
>  (*) Ripping out the stuff that uses page cache snooping and kernel_write()
>      and using kiocb instead.  This gives multiple wins: uses async DIO rather
>      than snooping for updated pages and then copying them, less VM overhead.
> 
>  (*) Object management is also simplified, getting rid of the state machine
>      that was managing things and using a much simplified thread pool instead.
> 
>  (*) Object invalidation creates a tmpfile and diverts new activity to that so
>      that it doesn't have to synchronise in-flight ADIO.
> 
>  (*) Using a bitmap stored in an xattr rather than using bmap to find out if
>      a block is present in the cache.  Probing the backing filesystem's
>      metadata to find out is not reliable in modern extent-based filesystems
>      as them may insert or remove blocks of zeros.  Even SEEK_HOLE/SEEK_DATA
>      are problematic since they don't distinguish transparently inserted
>      bridging.
> 
> I've provided a read helper that handles ->readpage, ->readpages, and
> preparatory writes in ->write_begin.  Willy is looking at using this as a way
> to roll his new ->readahead op out into filesystems.  A good chunk of this
> will move into MM code.
> 
> The code is simpler, and this is nice too:
> 
>  67 files changed, 5947 insertions(+), 8294 deletions(-)
> 
> not including documentation changes, which I need to convert to rst format
> yet.  That removes a whole bunch more lines.
> 
> But there are reasons you might not want to take it yet:
> 
>  (1) It starts off by disabling fscache support in all the filesystems that
>      use it: afs, nfs, cifs, ceph and 9p.  I've taken care of afs, Dave
>      Wysochanski has patches for nfs:
> 
> 	https://lore.kernel.org/linux-nfs/1596031949-26793-1-git-send-email-dwysocha@redhat.com/
> 
>      but they haven't been reviewed by Trond or Anna yet, and Jeff Layton has
>      patches for ceph:
> 
> 	https://marc.info/?l=ceph-devel&m=159541538914631&w=2
> 
>      and I've briefly discussed cifs with Steve, but nothing has started there
>      yet.  9p I've not looked at yet.
> 
>      Now, if we're okay for going a kernel release with 4/5 filesystems with
>      caching disabled and then pushing the changes for individual filesystems
>      through their respective trees, it might be easier.
> 
>      Unfortunately, I wasn't able to get together with Trond and Anna at LSF
>      to discuss this.
> 
>  (2) The patched afs fs passed xfstests -g quick (unlike the upstream code
>      that oopses pretty quickly with caching enabled).  Dave and Jeff's nfs
>      and ceph code is getting close, but not quite there yet.


That was my experience on cephfs+fscache too -- it often crashed down in
the fscache code. I'd support the approach in (1) above -- put this in
soon and disable the caches in the filesystems. Then push the changes to
reenable it via fs-specific trees.

The ceph patch series is more or less ready. It passes all of the
xfstest "quick" group run (aside from a few expected failures on
cephfs).

The only real exception is generic/531, which seems to trigger OOM kills
in my testing. The test tries to create a ton of files and leak the file
descriptors. I tend to think that workload is pretty unusual, and given
that fscache was terribly unstable and crashed before, this is still a
marked improvement.

>  (3) Al has objections to the ITER_MAPPING iov_iter type that I added
> 
> 	https://lore.kernel.org/linux-fsdevel/20200719014436.GG2786714@ZenIV.linux.org.uk/
> 
>      but note that iov_iter_for_each_range() is not actually used by anything.
> 
>      However, Willy likes it and would prefer to make it ITER_XARRAY instead
>      as he might be able to use it in other places, though there's an issue
>      where I'm calling find_get_pages_contig() which takes a mapping (though
>      all it does is then get the xarray out of it).
> 
>      Instead I would have to use ITER_BVEC, which has quite a high overhead,
>      though it would mean that the RCU read lock wouldn't be necessary.  This
>      would require 1K of memory for every 256K block the cache wants to read;
>      for any read >1M, I'd have to use vmalloc() instead.
> 
>      I'd also prefer not to use ITER_BVEC because the offset and length are
>      superfluous here.  If ITER_MAPPING is not good, would it be possible to
>      have an ITER_PAGEARRAY that just takes a page array instead?  Or, even,
>      create a transient xarray?
> 
>  (4) The way object culling is managed needs overhauling too, but that's a
>      whole 'nother patchset.  We could wait till that's done too, but its lack
>      doesn't prevent what we have now being used.
> 
> Thoughts?
> 
> David
> 

-- 
Jeff Layton <jlayton@redhat.com>



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
