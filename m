Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 862F92FF3D8
	for <lists+v9fs-developer@lfdr.de>; Thu, 21 Jan 2021 20:09:59 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1l2fLB-0001Ss-Ti; Thu, 21 Jan 2021 19:09:57 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <bfields@fieldses.org>) id 1l2fLA-0001Sh-Go
 for v9fs-developer@lists.sourceforge.net; Thu, 21 Jan 2021 19:09:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=N/byAs1v6tc9Fx3ki4Hix9OpQ2b4N7bUlr5L+Udyz04=; b=T+fKa6uwJoGDFPztRsYGnUxxTR
 MkK+BvGeBupcfFTaE/BMUfhlgQ+FAcMij+BdGPzs5mpOWEjE3Tr9PXjgch6R5ocjHgiTxCjvcohFQ
 MmLyB/XMHsrcrdgy5GLIgBdir1DPPBI+kJu2VxbjRUe1LMGEu1Mi4k77mrvyxZxrinHo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=N/byAs1v6tc9Fx3ki4Hix9OpQ2b4N7bUlr5L+Udyz04=; b=ieoPFSVDQx56NNeCLa+xzEaIDh
 xRN+2Ari33oTXetor7so/vFhANV76C6C+/bb6LlT71TQUjn7lZe2bM901JULs4P7iNaIohouLkHdT
 +RI22g8TfDnAxdPRLjzsQXlq05/g62spc0ZQfYBrZ2kp9Pr0f9Pwf1mIG8Fg1Nl062Xc=;
Received: from fieldses.org ([173.255.197.46])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1l2fL4-00ALBT-0Z
 for v9fs-developer@lists.sourceforge.net; Thu, 21 Jan 2021 19:09:56 +0000
Received: by fieldses.org (Postfix, from userid 2815)
 id 7790068A6; Thu, 21 Jan 2021 14:09:37 -0500 (EST)
DKIM-Filter: OpenDKIM Filter v2.11.0 fieldses.org 7790068A6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fieldses.org;
 s=default; t=1611256177;
 bh=N/byAs1v6tc9Fx3ki4Hix9OpQ2b4N7bUlr5L+Udyz04=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=v12SGAI5TdTGVdUXLNRFq4bYEJiB3wwXNox11gArFVnndbZSQLf36kKRFo95UyeQY
 CO7QjlprxG0AHzpbsAXIme2ZNIcWn0te5LWMp6nGA+4cNMBpacJ9xmATTjhLCoftDm
 vFchlftsuiau3nyD/mo1dMyfCGV87yqk3pnkw+U0=
Date: Thu, 21 Jan 2021 14:09:37 -0500
From: "J. Bruce Fields" <bfields@fieldses.org>
To: David Howells <dhowells@redhat.com>
Message-ID: <20210121190937.GE20964@fieldses.org>
References: <20210121174306.GB20964@fieldses.org>
 <20210121164645.GA20964@fieldses.org>
 <161118128472.1232039.11746799833066425131.stgit@warthog.procyon.org.uk>
 <1794286.1611248577@warthog.procyon.org.uk>
 <1851804.1611255313@warthog.procyon.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1851804.1611255313@warthog.procyon.org.uk>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: fieldses.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1l2fL4-00ALBT-0Z
Subject: Re: [V9fs-developer] [RFC][PATCH 00/25] Network fs helper library &
 fscache kiocb API
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
Cc: David Wysochanski <dwysocha@redhat.com>, linux-cifs@vger.kernel.org,
 linux-nfs@vger.kernel.org, Jeff Layton <jlayton@redhat.com>,
 Takashi Iwai <tiwai@suse.de>, linux-kernel@vger.kernel.org,
 Matthew Wilcox <willy@infradead.org>, linux-afs@lists.infradead.org,
 Steve French <sfrench@samba.org>, linux-cachefs@redhat.com,
 Alexander Viro <viro@zeniv.linux.org.uk>,
 Trond Myklebust <trondmy@hammerspace.com>, linux-fsdevel@vger.kernel.org,
 v9fs-developer@lists.sourceforge.net, ceph-devel@vger.kernel.org,
 Anna Schumaker <anna.schumaker@netapp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Thu, Jan 21, 2021 at 06:55:13PM +0000, David Howells wrote:
> J. Bruce Fields <bfields@fieldses.org> wrote:
> 
> > > Fixing this requires a much bigger overhaul of cachefiles than this patchset
> > > performs.
> > 
> > That sounds like "sometimes you may get file corruption and there's
> > nothing you can do about it".  But I know people actually use fscache,
> > so it must be reliable at least for some use cases.
> 
> Yes.  That's true for the upstream code because that uses bmap.

Sorry, when you say "that's true", what part are you referring to?

> I'm switching
> to use SEEK_HOLE/SEEK_DATA to get rid of the bmap usage, but it doesn't change
> the issue.
> 
> > Is it that those "bridging" blocks only show up in certain corner cases
> > that users can arrange to avoid?  Or that it's OK as long as you use
> > certain specific file systems whose behavior goes beyond what's
> > technically required by the bamp or seek interfaces?
> 
> That's a question for the xfs, ext4 and btrfs maintainers, and may vary
> between kernel versions and fsck or filesystem packing utility versions.

So, I'm still confused: there must be some case where we know fscache
actually works reliably and doesn't corrupt your data, right?

--b.


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
