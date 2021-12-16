Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 44983477D60
	for <lists+v9fs-developer@lfdr.de>; Thu, 16 Dec 2021 21:21:28 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1mxxFk-0005ZV-W1; Thu, 16 Dec 2021 20:21:26 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <willy@infradead.org>) id 1mxxFj-0005ZP-TA
 for v9fs-developer@lists.sourceforge.net; Thu, 16 Dec 2021 20:21:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=XqnUXa9RW7uRpASlJT6RfFyTUcif6Eix1YgAPYLKeT8=; b=m8jMDA6qM+hl95IEw1rtePKnxU
 WG/+L9/sVcwQIILGXQxJU3UHDpdhaR0UEbtfpfG5hxabERkP4h9El9aLP4TGPXav0LRCbEC8HaKY+
 i9sYjbKPNGSuRGlkyhCRVNGAMHIMhcLS/WAmwho0FJXa9h0UR3Kq3m0RqADal5rETkJQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=XqnUXa9RW7uRpASlJT6RfFyTUcif6Eix1YgAPYLKeT8=; b=AS37Y+GXxsYhAFr5LwAeW7eu7r
 tLSBFmDiGYtF99m2RIYRCnMT8wPTbdgJGwVDNb+IbRvWg16Kg4e8gyFbPkMkS06E3LOQ1PUaGopCm
 r4+5beMD3hSegelFnGqp/YpB3ZCEE5bBiXn4Ss8V/mjKiPBiFtbzoepMJjT2TJrQ4WfU=;
Received: from casper.infradead.org ([90.155.50.34])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mxxFg-000Iyw-OS
 for v9fs-developer@lists.sourceforge.net; Thu, 16 Dec 2021 20:21:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=XqnUXa9RW7uRpASlJT6RfFyTUcif6Eix1YgAPYLKeT8=; b=MX6WDKLG1OL6cTeGQdGY+wgibY
 Ll9mC56eOlFh37FPX41YNMduoufYqbHvKzG37ydlx6UrCUQlo3fsxYKXTB8XSfeJih3eLvh2ulurZ
 UAq+weJj9S1y75jcgGgTlW+pZlugSZvh0gdBNPYCHZomHQ88c5LVGSUc5ZdP8W4wArLoqs4ITVUxK
 sQ/pssRK0WSdbasQQD8ktK/KjuTBnt0Yp8Vq5EwJX78mf6XlTgI4EsJsZ++2N1rSxRmKV2sguuD4g
 XN2WFfsDXEyr3sGDX+3E0wEj1hINEP9R8QYGpzjbfP3vM/db1mMd2vQa8eUB/JcEkQh9ZW77Y1ApP
 JLe01syQ==;
Received: from willy by casper.infradead.org with local (Exim 4.94.2 #2 (Red
 Hat Linux)) id 1mxxEx-00FvEE-Bh; Thu, 16 Dec 2021 20:20:35 +0000
Date: Thu, 16 Dec 2021 20:20:35 +0000
From: Matthew Wilcox <willy@infradead.org>
To: Linus Torvalds <torvalds@linux-foundation.org>
Message-ID: <YbufkzMCoxssd6Vi@casper.infradead.org>
References: <163967073889.1823006.12237147297060239168.stgit@warthog.procyon.org.uk>
 <163967169723.1823006.2868573008412053995.stgit@warthog.procyon.org.uk>
 <CAHk-=wi0H5vmka1_iWe0+Yc6bwtgWn_bEEHCMYsPHYtNJKZHCQ@mail.gmail.com>
 <YbuTaRbNUAJx5xOA@casper.infradead.org>
 <CAHk-=wh2dr=NgVSVj0sw-gSuzhxhLRV5FymfPS146zGgF4kBjA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAHk-=wh2dr=NgVSVj0sw-gSuzhxhLRV5FymfPS146zGgF4kBjA@mail.gmail.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Thu, Dec 16, 2021 at 11:46:18AM -0800,
 Linus Torvalds wrote:
 > On Thu, Dec 16, 2021 at 11:28 AM Matthew Wilcox <willy@infradead.org> wrote:
 > > > > Since ->write_begin is the place where we actuall [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Headers-End: 1mxxFg-000Iyw-OS
Subject: Re: [V9fs-developer] [PATCH v3 56/68] afs: Handle len being
 extending over page end in write_begin/write_end
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
 AND..." <linux-nfs@vger.kernel.org>, CIFS <linux-cifs@vger.kernel.org>,
 linux-fsdevel <linux-fsdevel@vger.kernel.org>,
 Jeff Layton <jlayton@kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Anna Schumaker <anna.schumaker@netapp.com>,
 David Howells <dhowells@redhat.com>, JeffleXu <jefflexu@linux.alibaba.com>,
 linux-cachefs@redhat.com, Alexander Viro <viro@zeniv.linux.org.uk>,
 Trond Myklebust <trondmy@hammerspace.com>,
 Marc Dionne <marc.dionne@auristor.com>, ceph-devel@vger.kernel.org,
 Omar Sandoval <osandov@osandov.com>, linux-afs@lists.infradead.org,
 v9fs-developer@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Thu, Dec 16, 2021 at 11:46:18AM -0800, Linus Torvalds wrote:
> On Thu, Dec 16, 2021 at 11:28 AM Matthew Wilcox <willy@infradead.org> wrote:
> >
> > Since ->write_begin is the place where we actually create folios, it
> > needs to know what size folio to create.  Unless you'd rather we do
> > something to actually create the folio before calling ->write_begin?
> 
> I don't think we can create a folio before that, because the
> filesystem may not even want a folio (think persistent memory or
> whatever).
> 
> Honestly, I think you need to describe more what you actually want to
> happen. Because generic_perform_write() has already decided to use a
> PAGE_SIZE by the time write_begin() is called,
> 
> Right now the world order is "we chunk things by PAGE_SIZE", and
> that's just how it is.

Right.  And we could leave it like that.  There's a huge amount of win
that comes from just creating large folios as part of readahead, and
anything we do for writes is going to be a smaller win.

That said, I would like it if a program which does:

fd = creat("foo", 0644);
write(fd, buf, 64 * 1024);
close(fd);

uses a single 64k page.

> I can see other options - like the filesystem passing in the chunk
> size when it calls generic_perform_write().

I'm hoping to avoid that.  Ideally filesystems don't know what the
"chunk size" is that's being used; they'll see a mixture of sizes
being used for any given file (potentially).  Depends on access
patterns, availability of higher-order memory, etc.

> Or we make the rule be that ->write_begin() simply always is given the
> whole area, and the filesystem can decide how it wants to chunk things
> up, and return the size of the write chunk in the status (rather than
> the current "success or error").

We do need to be slightly more limiting than "always gets the whole
area", because we do that fault_in_iov_iter_readable() call first,
and if the user has been mean and asked to write() 2GB of memory on
a (virtual) machine with 256MB, I'd prefer it if we didn't swap our way
through 2GB of address space before calling into ->write_begin.

> But at no point will this *EVER* be a "afs will limit the size to the
> folio size" issue. Nothing like that will ever make sense. Allowing
> bigger chunks will not be about any fscache issues, it will be about
> every single filesystem that uses generic_perform_write().

I agree that there should be nothing here that is specific to fscache.
David has in the past tried to convince me that he should always get
256kB folios, and I've done my best to explain that the MM just isn't
going to make that guarantee.

That said, this patch seems to be doing the right thing; it passes
the entire length into netfs_write_begin(), and is then truncating
the length to stop at the end of the folio that it got back.



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
