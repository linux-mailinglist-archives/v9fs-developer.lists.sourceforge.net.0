Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F25F2FF235
	for <lists+v9fs-developer@lfdr.de>; Thu, 21 Jan 2021 18:43:32 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1l2dzV-0002ti-T6; Thu, 21 Jan 2021 17:43:29 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <bfields@fieldses.org>) id 1l2dzU-0002tR-5D
 for v9fs-developer@lists.sourceforge.net; Thu, 21 Jan 2021 17:43:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=PB+xzpEUfQlsg5w3ytd7m/NvmGA9LS0ZccMgPVPs9ro=; b=DY5X5v5skO7BTjTjO6UW0LsTf/
 5emfZtD+kLVM1JAlDYv2q3XEl5+9TqCBHiqfU2V1AeeRHGrqlPT1hRiiTaIKILkIbe9eFoewPV9wL
 ePLRDF4HLq3Ka+GffzhDa0cjFjmWQTcsbq18zFNIMa66eiURFarN8nJArLCgiupVp+g0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=PB+xzpEUfQlsg5w3ytd7m/NvmGA9LS0ZccMgPVPs9ro=; b=RDxUHNHOgC930TZqQ79HMwGAJ/
 3O9tmh/HbQcksBWigThg/pUPPmCQm78NbP9TzgVDnOfMWNhzHaV39dMIqB9bhtiJ5WNid7ADZaLh/
 AWQeCKpptlU1esPoDzS0o7SxvqYGSQKWutu82efDHYO/s7BlGCvWiGlfPnqZqsEphDks=;
Received: from fieldses.org ([173.255.197.46])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1l2dzL-009rdp-3U
 for v9fs-developer@lists.sourceforge.net; Thu, 21 Jan 2021 17:43:28 +0000
Received: by fieldses.org (Postfix, from userid 2815)
 id 76FF46E97; Thu, 21 Jan 2021 12:43:06 -0500 (EST)
DKIM-Filter: OpenDKIM Filter v2.11.0 fieldses.org 76FF46E97
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fieldses.org;
 s=default; t=1611250986;
 bh=PB+xzpEUfQlsg5w3ytd7m/NvmGA9LS0ZccMgPVPs9ro=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=TaZx3mg2hPpbFINECvqd0XPYdFb2ROMgzcamiqBmYnLl1LUmy4whb8tvaFgHJKxlD
 dUW8rxyyJ/S0Q1+gsFu+/N5RyNNq0XImHaTJoc+Og2Qizwf1z86MrkLh6xVxL7Dh5S
 WFc/Bjuyiw0ymgARs6vnuzUiUo+toU1sUvZ/pfH4=
Date: Thu, 21 Jan 2021 12:43:06 -0500
From: "J. Bruce Fields" <bfields@fieldses.org>
To: David Howells <dhowells@redhat.com>
Message-ID: <20210121174306.GB20964@fieldses.org>
References: <20210121164645.GA20964@fieldses.org>
 <161118128472.1232039.11746799833066425131.stgit@warthog.procyon.org.uk>
 <1794286.1611248577@warthog.procyon.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1794286.1611248577@warthog.procyon.org.uk>
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
X-Headers-End: 1l2dzL-009rdp-3U
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

On Thu, Jan 21, 2021 at 05:02:57PM +0000, David Howells wrote:
> J. Bruce Fields <bfields@fieldses.org> wrote:
> 
> > On Wed, Jan 20, 2021 at 10:21:24PM +0000, David Howells wrote:
> > >      Note that this uses SEEK_HOLE/SEEK_DATA to locate the data available
> > >      to be read from the cache.  Whilst this is an improvement from the
> > >      bmap interface, it still has a problem with regard to a modern
> > >      extent-based filesystem inserting or removing bridging blocks of
> > >      zeros.
> > 
> > What are the consequences from the point of view of a user?
> 
> The cache can get both false positive and false negative results on checks for
> the presence of data because an extent-based filesystem can, at will, insert
> or remove blocks of contiguous zeros to make the extents easier to encode
> (ie. bridge them or split them).
> 
> A false-positive means that you get a block of zeros in the middle of your
> file that very probably shouldn't be there (ie. file corruption); a
> false-negative means that we go and reload the missing chunk from the server.
> 
> The problem exists in cachefiles whether we use bmap or we use
> SEEK_HOLE/SEEK_DATA.  The only way round it is to keep track of what data is
> present independently of backing filesystem's metadata.
> 
> To this end, it shouldn't (mis)behave differently than the code already there
> - except that it handles better the case in which the backing filesystem
> blocksize != PAGE_SIZE (which may not be relevant on an extent-based
> filesystem anyway if it packs parts of different files together in a single
> block) because the current implementation only bmaps the first block in a page
> and doesn't probe for the rest.
> 
> Fixing this requires a much bigger overhaul of cachefiles than this patchset
> performs.

That sounds like "sometimes you may get file corruption and there's
nothing you can do about it".  But I know people actually use fscache,
so it must be reliable at least for some use cases.

Is it that those "bridging" blocks only show up in certain corner cases
that users can arrange to avoid?  Or that it's OK as long as you use
certain specific file systems whose behavior goes beyond what's
technically required by the bamp or seek interfaces?

--b.

> 
> Also, it works towards getting rid of this use of bmap, but that's not user
> visible.
> 
> David


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
