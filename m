Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E09F83E1B60
	for <lists+v9fs-developer@lfdr.de>; Thu,  5 Aug 2021 20:34:19 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1mBiCA-0005uc-M1; Thu, 05 Aug 2021 18:34:18 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <torvalds@linuxfoundation.org>) id 1mBiBw-0005hB-IY
 for v9fs-developer@lists.sourceforge.net; Thu, 05 Aug 2021 18:34:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=kSMSzayyNT2YehjLQ2Cwc0r8HqyEvjniy8Pw7lCSffg=; b=dDwJSYVdVmIgbGJOV+lKTTPv+T
 1B4U336Uq8L/q92zeK126jP5ynhQlDd/ynm7AyVWHqpX8qlcktGYiCkv6yJOu4TZb0kOcdZdsSMJN
 tGbjNKa2ypilZi4xeAlZQJow+xpJ6oX11YS0DyYgxjo+LWqdmBO0WO0HjnVVBMNfcYOo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=kSMSzayyNT2YehjLQ2Cwc0r8HqyEvjniy8Pw7lCSffg=; b=i0CwjxlwumqhKuqYLLkPnV/IhN
 0oYV08eDQkpsCvtz43279Av4vdrZuwGSNUCmPhahQGF775r8m/lLkyCFjo/IiOMzjaOKfHorPnRSe
 Is52Bt8RLTUH8KjzoT02qbTc1rbMRHbT2ZMfMOZj9khKDbmyhpglUr9B5ZmhV8F1XugI=;
Received: from mail-ed1-f44.google.com ([209.85.208.44])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1mBiBe-0007Z8-U0
 for v9fs-developer@lists.sourceforge.net; Thu, 05 Aug 2021 18:33:57 +0000
Received: by mail-ed1-f44.google.com with SMTP id y12so9712595edo.6
 for <v9fs-developer@lists.sourceforge.net>;
 Thu, 05 Aug 2021 11:33:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux-foundation.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=kSMSzayyNT2YehjLQ2Cwc0r8HqyEvjniy8Pw7lCSffg=;
 b=CjeV+4n++fBbfbgUnSajYHMZzSgIGQ/AzXROF+Y4CaB/aORGEHsRe4pUpEJVdYpwfB
 NmAZXoNyQn6JPxdWXpyZnM00VCUOuYnkUNerNg1Ng90I+xulwoWK81gZiomswCGM8sp6
 nIAp7+gezxOviLaRF+m3bsJwsaKOi0OIDRvRA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=kSMSzayyNT2YehjLQ2Cwc0r8HqyEvjniy8Pw7lCSffg=;
 b=I1g0l2CCs1PksdmWE9mA0W9TVfiVcpJorG5C3Ts0aEnv1XPduMhl1rxbdG4bR1UIiB
 hrPZ0PMB8ZG8lPvzAO/H/L3BHZpxJVrRkz00HqsvC/IhviSk0oWyjbIk6pfKtYw0bXZh
 KZNaovoR+z+rzYiN3FjyLEkjuhoqVltUlxaPUkdmn2w23aC6w2kw+RYlKKefcenp+QVD
 xpvFpcSqGiO3ticJgHsqYmslX00L5LH4xG6OFcIQ59FNOTFnqAxrcqlXbQQEe6RjIsA1
 9djzU3qZ7Td0DBCIhLqSiizrNCyqe993wbD6QdYZColvmzIcZ0xyoh0CoDZwPpif8K3o
 QcYg==
X-Gm-Message-State: AOAM532ruTwhk9TtQLGAEtSBjqcCeJoKTtWzatlOhssz1VYjYtrWkXOG
 qFJDzE0vIrqHSlH3uzMhC5DB5E+V6C35mOiRpso=
X-Google-Smtp-Source: ABdhPJy9/Ds2DiAtv1IPk/redvNGuK0k/4tNcBvFDq0c5+AgR+MCvBz3wx9bWYH4utqsBXcBmop49g==
X-Received: by 2002:a17:906:1f82:: with SMTP id
 t2mr5811197ejr.499.1628184828020; 
 Thu, 05 Aug 2021 10:33:48 -0700 (PDT)
Received: from mail-ej1-f48.google.com (mail-ej1-f48.google.com.
 [209.85.218.48])
 by smtp.gmail.com with ESMTPSA id t24sm2631174eds.60.2021.08.05.10.33.47
 for <v9fs-developer@lists.sourceforge.net>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 05 Aug 2021 10:33:47 -0700 (PDT)
Received: by mail-ej1-f48.google.com with SMTP id gs8so10775065ejc.13
 for <v9fs-developer@lists.sourceforge.net>;
 Thu, 05 Aug 2021 10:33:47 -0700 (PDT)
X-Received: by 2002:a05:6512:2388:: with SMTP id
 c8mr4369071lfv.201.1628184441363; 
 Thu, 05 Aug 2021 10:27:21 -0700 (PDT)
MIME-Version: 1.0
References: <YQv+iwmhhZJ+/ndc@casper.infradead.org>
 <YQvpDP/tdkG4MMGs@casper.infradead.org>
 <YQvbiCubotHz6cN7@casper.infradead.org>
 <1017390.1628158757@warthog.procyon.org.uk>
 <1170464.1628168823@warthog.procyon.org.uk>
 <1186271.1628174281@warthog.procyon.org.uk>
 <1219713.1628181333@warthog.procyon.org.uk>
In-Reply-To: <1219713.1628181333@warthog.procyon.org.uk>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Thu, 5 Aug 2021 10:27:05 -0700
X-Gmail-Original-Message-ID: <CAHk-=wjyEk9EuYgE3nBnRCRd_AmRYVOGACEjt0X33QnORd5-ig@mail.gmail.com>
Message-ID: <CAHk-=wjyEk9EuYgE3nBnRCRd_AmRYVOGACEjt0X33QnORd5-ig@mail.gmail.com>
To: David Howells <dhowells@redhat.com>
X-Spam-Score: 0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.44 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.208.44 listed in list.dnswl.org]
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1mBiBe-0007Z8-U0
Subject: Re: [V9fs-developer] Canvassing for network filesystem write size
 vs page size
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
Cc: Shyam Prasad N <nspmangalore@gmail.com>, CIFS <linux-cifs@vger.kernel.org>,
 "open list:NFS, SUNRPC, AND..." <linux-nfs@vger.kernel.org>,
 linux-afs@lists.infradead.org, Jeff Layton <jlayton@redhat.com>,
 Miklos Szeredi <miklos@szeredi.hu>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 "Matthew Wilcox \(Oracle\)" <willy@infradead.org>,
 Trond Myklebust <trond.myklebust@hammerspace.com>,
 Steve French <sfrench@samba.org>, Linux-MM <linux-mm@kvack.org>,
 linux-cachefs@redhat.com, linux-fsdevel <linux-fsdevel@vger.kernel.org>,
 v9fs-developer@lists.sourceforge.net, ceph-devel@vger.kernel.org,
 Anna Schumaker <anna.schumaker@netapp.com>, devel@lists.orangefs.org,
 Mike Marshall <hubcap@omnibond.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Thu, Aug 5, 2021 at 9:36 AM David Howells <dhowells@redhat.com> wrote:
>
> Some network filesystems, however, currently keep track of which byte ranges
> are modified within a dirty page (AFS does; NFS seems to also) and only write
> out the modified data.

NFS definitely does. I haven't used NFS in two decades, but I worked
on some of the code (read: I made nfs use the page cache both for
reading and writing) back in my Transmeta days, because NFSv2 was the
default filesystem setup back then.

See fs/nfs/write.c, although I have to admit that I don't recognize
that code any more.

It's fairly important to be able to do streaming writes without having
to read the old contents for some loads. And read-modify-write cycles
are death for performance, so you really want to coalesce writes until
you have the whole page.

That said, I suspect it's also *very* filesystem-specific, to the
point where it might not be worth trying to do in some generic manner.

In particular, NFS had things like interesting credential issues, so
if you have multiple concurrent writers that used different 'struct
file *' to write to the file, you can't just mix the writes. You have
to sync the writes from one writer before you start the writes for the
next one, because one might succeed and the other not.

So you can't just treat it as some random "page cache with dirty byte
extents". You really have to be careful about credentials, timeouts,
etc, and the pending writes have to keep a fair amount of state
around.

At least that was the case two decades ago.

[ goes off and looks. See "nfs_write_begin()" and friends in
fs/nfs/file.c for some of the examples of these things, althjough it
looks like the code is less aggressive about avoding the
read-modify-write case than I thought I remembered, and only does it
for write-only opens ]

               Linus

            Linus


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
