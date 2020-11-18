Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D04182B7F3C
	for <lists+v9fs-developer@lfdr.de>; Wed, 18 Nov 2020 15:18:22 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1kfOHs-0002Wx-SS; Wed, 18 Nov 2020 14:18:20 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <asmadeus@notk.org>) id 1kfOH1-0002TL-7v
 for v9fs-developer@lists.sourceforge.net; Wed, 18 Nov 2020 14:17:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=BFPA0x9SzykN28MusL5Go/gQn2frP/40Rom8hNtpNjY=; b=UTDP30OTYjqYKr5valNRqLN4W0
 od/7OHxW7cgXZw4qSdRX7ymayzWRBAoJRZX2KNIJvA/zUEtY3UaM226KygbTbkHDCaD1TE5/oK68u
 RRCZw+ezdMZxCclGLDkvatYUGDTEcSezWtsENXBY0T2qRAmEIRp1dnVZ39X4R6navaGM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=BFPA0x9SzykN28MusL5Go/gQn2frP/40Rom8hNtpNjY=; b=dOyDw2NXZnO+ttYPmTmZRvopV4
 d12kTKL6NH/EXVIDX9OND5ERmfdbvs1uTDq8fwaSrkJF6xy4XX0sufamo1g8ZtxeI0FNzXGPFxPNu
 bBhpbxzrkUenLuWXbPujXF+YPJjGD6ALkhd3gYsC2AswFNfUYRkp0F5cmiVJMr5xPKMM=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kfOGr-00Dl3a-St
 for v9fs-developer@lists.sourceforge.net; Wed, 18 Nov 2020 14:17:27 +0000
Received: by nautica.notk.org (Postfix, from userid 1001)
 id 294A5C009; Wed, 18 Nov 2020 15:17:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1605709024; bh=BFPA0x9SzykN28MusL5Go/gQn2frP/40Rom8hNtpNjY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=mZeuYQufeIgu4T1qFPDaFwKsel1NaRWR00crUWbNX+aVYjrtNjgJr1mR2mKlRFGlX
 avILicQHgWTKbBBfmGgww4Rf3g+uczXnLXnK8h98dP3zuOyVUI/Lw2nu9M8XZ/d8dA
 AFBZ0eQVS/oTN45FtoEjULB4ni+W1pgLy9icbfnJa8tdXty1bc1mx9XNp4YtnEd14N
 btGXiUWR8KjqBGY2HLSVopMRWu87n7vgBR0Wm6Fd4FV8pFJlRxCPFMRWBlvutHEOf6
 Tftry6eMNYi1hkljJxR/FN2QQhg5Lf6QcoNOxv+2+LlmdxVjyOcgmnt9wjBi05PH5e
 ESRDiwgoW4klw==
Date: Wed, 18 Nov 2020 15:16:49 +0100
From: Dominique Martinet <asmadeus@codewreck.org>
To: David Howells <dhowells@redhat.com>
Message-ID: <20201118141649.GA14211@nautica>
References: <20201118124826.GA17850@nautica>
 <1514086.1605697347@warthog.procyon.org.uk>
 <1561011.1605706707@warthog.procyon.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1561011.1605706707@warthog.procyon.org.uk>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-Spam-Score: 0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1kfOGr-00Dl3a-St
Subject: Re: [V9fs-developer] [PATCH] 9p: Convert to new fscache API
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
Cc: Eric Van Hensbergen <ericvh@gmail.com>, Latchesar Ionkov <lucho@ionkov.net>,
 linux-cachefs@redhat.com, linux-fsdevel@vger.kernel.org,
 v9fs-developer@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

David Howells wrote on Wed, Nov 18, 2020:
> > What's the current schedule/plan for the fscache branch merging? Will
> > you be trying this merge window next month?
> 
> That's the aim.  We have afs, ceph and nfs are about ready; I've had a go at
> doing the 9p conversion, which I'll have to leave to you now, I think, and am
> having a poke at cifs.

Ok, will try to polish it up by then.
Worst case as discussed is to have fscache be an alias for cache=loose
until it's ready but with the first version you gave me it hopefully
won't be needed.

> > >  (*) I have made an assumption that 9p_client_read() and write can handle I/Os
> > >      larger than a page.  If this is not the case, v9fs_req_ops will need
> > >      clamp_length() implementing.
> > 
> > There's a max driven by the client's msize
> 
> The netfs read helpers provide you with a couple of options here:
> 
>  (1) You can use ->clamp_length() to do multiple slices of at least 1 byte
>      each.  The assumption being that these represent parallel operations.  A
>      new subreq will be generated for each slice.
> 
>  (2) You can go with large slices that are larger than msize, and just read
>      part of it with each read.  After reading, the netfs helper will keep
>      calling you again to read some more of it, provided you didn't return an
>      error and you at least read something.

clamp_length looks good for that, if we can get parallel requests out
it'll all come back faster.

> > (client->msize - P9_IOHDRSZ ; unfortunately msize is just guaranted to be >=
> > 4k so that means the actual IO size would be smaller in that case even if
> > that's not intended to be common)
> 
> Does that mean you might be limited to reads of less than PAGE_SIZE on some
> systems (ppc64 for example)?  This isn't a problem for the read helper, but
> might be an issue for writing from THPs.

Quite likely, the actual used size varies depending on the backend (64k
for tcp, 500k for virtio) but can definietly be less than PAGE_SIZE.

I take it the read helper would just iterate as long as there's data
still required to read, writing from THPs wouldn't do that?


> > >  (*) The cache needs to be invalidated if a 3rd-party change happens, but I
> > >      haven't done that.
> > 
> > There's no concurrent access logic in 9p as far as I'm aware (like NFS
> > does if the mtime changes for example), so I assume we can keep ignoring
> > this.
> 
> By that, I presume you mean concurrent accesses are just not permitted?

Sorry - I meant coherency if files are modified on multiple clients
isn't guaranted - there are voluntary locks but that's about it, nothing
will detect e.g. remote file size modifications.
Concurrency on a given client works fine and should be used if possible.

-- 
Dominique


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
