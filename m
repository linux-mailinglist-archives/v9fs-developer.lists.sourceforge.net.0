Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 85993254A79
	for <lists+v9fs-developer@lfdr.de>; Thu, 27 Aug 2020 18:18:52 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1kBKby-0002hJ-4x; Thu, 27 Aug 2020 16:18:50 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <asmadeus@notk.org>) id 1kBKbw-0002hA-8j
 for v9fs-developer@lists.sourceforge.net; Thu, 27 Aug 2020 16:18:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=UVo5H42KyfYmn1Ctvvb2CnMwh4S8yJO16PIoAfWvUkg=; b=KqXrADm5s6o4l3diFd1X9SWCZb
 Rona0VP+kH1cm9PHEym43fK7Mkq04L5r1aNdb75LgatFi8ucgxp0QS7zGsyEeQHRMpVlvclqjQyM3
 tP7JKPqIENZo3Ds68h9AuTCJDDbUo8dJlAEyAgcti/0OiDcrjANyx2syYhQ4CmyqMbdE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=UVo5H42KyfYmn1Ctvvb2CnMwh4S8yJO16PIoAfWvUkg=; b=kU8J3jSLxoxdF4SGpf8RYarpJm
 R4xBtPG73rw336ht+3mkhGbJh6DiIZo/L7Z93IS2EpAy8m8zLKXi4QUODKtzzQ27wnz5KniiHy7ts
 Tt6n7OOWKL3gwrQZng3r2+sHCzm/xDlGCbko/7jLjxdNzwQyvXi+xE0ChU4ZMxEuYKJc=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kBKbu-0053SQ-4x
 for v9fs-developer@lists.sourceforge.net; Thu, 27 Aug 2020 16:18:48 +0000
Received: by nautica.notk.org (Postfix, from userid 1001)
 id 30B06C009; Thu, 27 Aug 2020 18:18:39 +0200 (CEST)
Date: Thu, 27 Aug 2020 18:18:24 +0200
From: Dominique Martinet <asmadeus@codewreck.org>
To: David Howells <dhowells@redhat.com>
Message-ID: <20200827161824.GC31016@nautica>
References: <20200810164044.GA31753@lst.de>
 <1851200.1596472222@warthog.procyon.org.uk>
 <447452.1596109876@warthog.procyon.org.uk>
 <667820.1597072619@warthog.procyon.org.uk>
 <1428311.1598542135@warthog.procyon.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1428311.1598542135@warthog.procyon.org.uk>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-Spam-Score: 0.2 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: lst.de]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1kBKbu-0053SQ-4x
Subject: Re: [V9fs-developer] [GIT PULL] fscache rewrite -- please drop for
 now
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
 linux-afs@lists.infradead.org, Jeff Layton <jlayton@redhat.com>,
 Eric Van Hensbergen <ericvh@gmail.com>, Dave Wysochanski <dwysocha@redhat.com>,
 linux-kernel@vger.kernel.org, Matthew Wilcox <willy@infradead.org>,
 Anna Schumaker <anna.schumaker@netapp.com>, Steve French <sfrench@samba.org>,
 linux-cachefs@redhat.com, Alexander Viro <viro@zeniv.linux.org.uk>,
 Trond Myklebust <trondmy@hammerspace.com>, linux-fsdevel@vger.kernel.org,
 v9fs-developer@lists.sourceforge.net, ceph-devel@vger.kernel.org,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

David Howells wrote on Thu, Aug 27, 2020:
> Christoph Hellwig <hch@lst.de> wrote:
> 
> > FYI, a giant rewrite dropping support for existing consumer is always
> > rather awkward.  Is there any way you could pre-stage some infrastructure
> > changes, and then do a temporary fscache2, which could then be renamed
> > back to fscache once everyone switched over?
> 
> That's a bit tricky.  There are three points that would have to be shared: the
> userspace miscdev interface, the backing filesystem and the single index tree.
> 
> It's probably easier to just have a go at converting 9P and cifs.  Making the
> old and new APIs share would be a fairly hefty undertaking in its own right.

While I agree something incremental is probably better, I have some free
time over the next few weeks so will take a shot at 9p; it's definitely
going to be easier.


Should I submit patches to you or wait until Linus merges it next cycle
and send them directly?

I see Jeff's ceph patches are still in his tree's ceph-fscache-iter
branch and I don't see them anywhere in your tree.

-- 
Dominique



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
