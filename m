Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 698CB240AF7
	for <lists+v9fs-developer@lfdr.de>; Mon, 10 Aug 2020 18:10:22 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1k5ANQ-0000uf-TB; Mon, 10 Aug 2020 16:10:20 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <smfrench@gmail.com>) id 1k5ANP-0000uV-95
 for v9fs-developer@lists.sourceforge.net; Mon, 10 Aug 2020 16:10:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=MZ80cO9LgIseSA6VcNmJzpLJOqoglGp0soH8ddcaoxk=; b=TNskFbNYSFWqHLHEXyxLCsF5bT
 /9ddK8p8osLs2fVPvO5OGk2TtCD+uW7xPYCAKofAUnffg/qmvaWRMDq7VWJWJfdZC5RRI4UaqLDSx
 bmXLpOtrxMZ/sz3oaGd/ci7GxdS4JlYn/cGBek4Yze2CTT5a2KNNXU1X1Rj2tF4cgUnM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=MZ80cO9LgIseSA6VcNmJzpLJOqoglGp0soH8ddcaoxk=; b=j2QB9Bnl+wz8Q15zd+5aka4tS6
 GCWNCDgONzSgB5UXwDNL9gylgRmH/67G0GDi2SRYrn9WsY6TDCttJr1PrP0hWCewU31IXoak6CbrA
 AwN8xiVI3FZ+8o3yePJNjs1HtnANQiW5I/CJ0buRr4wzAFjObjltEiWL+7Wc0BrZW67Y=;
Received: from mail-io1-f67.google.com ([209.85.166.67])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1k5ANN-002xCg-Rz
 for v9fs-developer@lists.sourceforge.net; Mon, 10 Aug 2020 16:10:19 +0000
Received: by mail-io1-f67.google.com with SMTP id u126so9437215iod.12
 for <v9fs-developer@lists.sourceforge.net>;
 Mon, 10 Aug 2020 09:10:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=MZ80cO9LgIseSA6VcNmJzpLJOqoglGp0soH8ddcaoxk=;
 b=EcS/NmAZLLY7RIcl1zkSH3YoNOu5TYUBfe6QqC6ForXpE8Diy77syyyGuwCHiceu2A
 UQSMSPKjBXDI9UgCB2mREaVFuyYXSISzKUWCvjknG+/u7WVvDGaspds8ll8DnLyKWa9I
 atLadaVEYzMJaqN1yHE0J7IYgy5C2qsh/zo6r0EmXPnm6kHJBKtTISYxRYZzhT1R5W7o
 dKZXiPgJjBmvU5RIBadNZ2EuZx/OHmI9Ftbs6agUxa+kxejtMDbGCSifUzQHFZWkUZIL
 7sQoJswBBvwLnAz44vZNgNdSmNu0UDEo1x0sF8zPp+TdjT843E9ofRjzTut8B1feGj04
 6VBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=MZ80cO9LgIseSA6VcNmJzpLJOqoglGp0soH8ddcaoxk=;
 b=gBAGnBmEtvX+MShJbSplVXHDj8lg/d30poCVLBuetVm7TEd+Pv0yB4grEpBaGLYRjd
 1c7nVeZWIuMg8x2fmxbpUmUQKtriSDpIzkCNqm7npO0AHeaouXxnHUYI0bfrGgj84n6q
 nNux5cDzjpt1ya0TbKkfpRhv0Wo/7d0lYvYnzTwLjP0fzd8fe6cxpUBAj2IMn2wvBeEM
 cTl0SwCMcjYW6YT5Niazp2Oy1wfqNJIBcUYGdbZgHavUqURLaj++o8xt3RIpzdqSu5VP
 O70DSobATklNgayh3VXgWhVUKuLgiu/5A3vVJhC59JcwUxEeuD3y/LwmWQ2NSEGDFuys
 buOQ==
X-Gm-Message-State: AOAM532C8yJq1GlA7qdG9Cfw9LNTM0TvnAkn48wcfJf8kN9rlSzf4ph7
 Jqv5AR9y/T1fbOBOF+NuMCE/GGGXioeOTZueATA=
X-Google-Smtp-Source: ABdhPJyTY4QlAr8BTih462f1lgyS9bJi/R2Ew8ZaVjmxeOvg71SlD2qbh1tJxbs+xTPFWT+NxUm+fxwz6XlvyZjiHMI=
X-Received: by 2002:a05:6638:bd1:: with SMTP id
 g17mr20966062jad.132.1597075803972; 
 Mon, 10 Aug 2020 09:10:03 -0700 (PDT)
MIME-Version: 1.0
References: <447452.1596109876@warthog.procyon.org.uk>
 <1851200.1596472222@warthog.procyon.org.uk>
 <667820.1597072619@warthog.procyon.org.uk>
 <CAH2r5msKipj1exNUDaSUN7h0pjanOenhSg2=EWYMv_h15yKtxg@mail.gmail.com>
 <672169.1597074488@warthog.procyon.org.uk>
In-Reply-To: <672169.1597074488@warthog.procyon.org.uk>
From: Steve French <smfrench@gmail.com>
Date: Mon, 10 Aug 2020 11:09:53 -0500
Message-ID: <CAH2r5msO+N9dXKtYE3p+EfXaZTtqp6r=Bsx5vKdTdxe7XBBeOw@mail.gmail.com>
To: David Howells <dhowells@redhat.com>
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (smfrench[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.166.67 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.67 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1k5ANN-002xCg-Rz
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
Cc: CIFS <linux-cifs@vger.kernel.org>, linux-nfs <linux-nfs@vger.kernel.org>,
 linux-afs@lists.infradead.org, Jeff Layton <jlayton@redhat.com>,
 Eric Van Hensbergen <ericvh@gmail.com>, Dave Wysochanski <dwysocha@redhat.com>,
 LKML <linux-kernel@vger.kernel.org>, Matthew Wilcox <willy@infradead.org>,
 Anna Schumaker <anna.schumaker@netapp.com>, Steve French <sfrench@samba.org>,
 linux-cachefs@redhat.com, Alexander Viro <viro@zeniv.linux.org.uk>,
 Trond Myklebust <trondmy@hammerspace.com>,
 linux-fsdevel <linux-fsdevel@vger.kernel.org>,
 v9fs-developer@lists.sourceforge.net, ceph-devel@vger.kernel.org,
 Linus Torvalds <torvalds@linux-foundation.org>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Mon, Aug 10, 2020 at 10:48 AM David Howells <dhowells@redhat.com> wrote:
>
> Steve French <smfrench@gmail.com> wrote:
>
> > cifs.ko also can set rsize quite small (even 1K for example, although
> > that will be more than 10x slower than the default 4MB so hopefully no
> > one is crazy enough to do that).
>
> You can set rsize < PAGE_SIZE?

I have never seen anyone do it and it would be crazy to set it so
small (would hurt
performance a lot and cause extra work on client and server) but yes
it can be set
very small. Apparently NFS can also set rsize to 1K as well (see
https://linux.die.net/man/5/nfs)

I don't mind adding a minimum rsize check for cifs.ko (preventing a
user from setting
rsize below page size for example) if there is a precedent for this in
other fs or
bug that it would cause.   In general my informal perf measurements showed
slight advantages to all servers with larger rsizes up to 4MB (thus
cifs client will
negotiate 4MB by default even if server supports larger), but
overriding rsize (larger)
on mount by having the user setting rsize to 8MB on mount could help
perf to some
servers. I am hoping we can figure out a way to automatically
determine when to negotiate
rsize larger than 4MB but in the meantime rsize will almost always be
4MB (or 1MB on
mounts to some older servers) for cifs but some users will benefit
slightly from manually
setting it to 8MB.

> > I can't imagine an SMB3 server negotiating an rsize or wsize smaller than
> > 64K in today's world (and typical is 1MB to 8MB) but the user can specify a
> > much smaller rsize on mount.  If 64K is an adequate minimum, we could change
> > the cifs mount option parsing to require a certain minimum rsize if fscache
> > is selected.
>
> I've borrowed the 256K granule size used by various AFS implementations for
> the moment.  A 512-byte xattr can thus hold a bitmap covering 1G of file
> space.
>
> David
>


-- 
Thanks,

Steve


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
