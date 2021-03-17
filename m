Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B70A833E708
	for <lists+v9fs-developer@lfdr.de>; Wed, 17 Mar 2021 03:35:50 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1lMM2H-0002vL-HT; Wed, 17 Mar 2021 02:35:49 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <torvalds@linuxfoundation.org>) id 1lMM2H-0002vA-4D
 for v9fs-developer@lists.sourceforge.net; Wed, 17 Mar 2021 02:35:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=GvkSjbOflTYrrhQW/IujV+Vj77yNYWLHdlNlegrHH4E=; b=OVNyPxC6+wKIaPPbLchM2v8VBq
 jcXfboZnJ7sNGB/9a1I7wC22UNkEoCaXCWS3j+RDw0DnLdLXxagMzV9ONW3GCl9EYaepBL5SPXjv4
 hcYnS9qeRFYymUk3tkGNC3PhF+uLzhQTI/6QGPanhb/sIJJ/zkXrv4/qSeAz7sOIAvSg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=GvkSjbOflTYrrhQW/IujV+Vj77yNYWLHdlNlegrHH4E=; b=aLpEnwBeiXG6Ln4xeKeOF7UCGJ
 GNSJlL2xy3i8wct8d7++22LuV8snYiCHgHUEgd69v0rP1KqbWEWdKVFgEYcU7jG8xkXhVkPw4sAmR
 pU6sX3BtHKcTEQZel50Q9rdkktIAqIXA6GpfbwmIgtOPBzQiizU85JeGwVB4kXupIQfY=;
Received: from mail-lj1-f176.google.com ([209.85.208.176])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1lMM29-008lTd-GN
 for v9fs-developer@lists.sourceforge.net; Wed, 17 Mar 2021 02:35:49 +0000
Received: by mail-lj1-f176.google.com with SMTP id 16so1274611ljc.11
 for <v9fs-developer@lists.sourceforge.net>;
 Tue, 16 Mar 2021 19:35:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux-foundation.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=GvkSjbOflTYrrhQW/IujV+Vj77yNYWLHdlNlegrHH4E=;
 b=ASGp57d2AB3YJwzE0HztUK7znMoqHLdCpnr808cyahGXOlRg55T2zYUWxFwELsX85a
 rS35PH4RkUyQRe4gbJq52No3U0lb3SmDBGMBrHHk9qd67i95PxSvEvT+Mngdku3IDOLo
 nnwpKbepa9C5Dlkm18/FC8Ew/qk9tKjgUsJpA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=GvkSjbOflTYrrhQW/IujV+Vj77yNYWLHdlNlegrHH4E=;
 b=lkRuhWZ/u3lr5Jq7w6omZg39ClGGDVEbKCC64tTcnCTD6+ePs8lb8BaUJdMKvm6R3R
 lqSNYjdt4RDMYJ7Js4nt73bamO7JA3ULCoVT0ZPWL2hs3I4j09dlFTirW3W7I/z9Mort
 ZWV/ZWr1aCk4nNRz7yecibwOk/k4m/h2HTX9+OVtzQmo1NdkDTcLTEXyqd6n/89lSscB
 iO2XMAN/+DQVkvfb+fWXuTylJ+HvXCR6xqAhBWxwhQ8D3CLBDrfOoFHLyG68ZniGhrQG
 yZSgrF5+vRIPy00YxphPZBxkhqJPiu3gYFPN2jXnIr5L92a2LDZ3Mexi+q9SzHi94Ucz
 s4Aw==
X-Gm-Message-State: AOAM53288crXH67Fs6bcEFOrt8AXRG7NU5249scbpnpVUXuls4YPpKyA
 017CjAftvjLYoWcq/Iu1cAWvm1sn2n/kuA==
X-Google-Smtp-Source: ABdhPJz0UBv2KQ8ji2KbB5X4g3aEDunKoEeRzD1e3cq50MCxeLt9d5ABQG6UFG2j5Sw9L1plcZOPTA==
X-Received: by 2002:a2e:924b:: with SMTP id v11mr990971ljg.254.1615948534640; 
 Tue, 16 Mar 2021 19:35:34 -0700 (PDT)
Received: from mail-lf1-f45.google.com (mail-lf1-f45.google.com.
 [209.85.167.45])
 by smtp.gmail.com with ESMTPSA id b25sm3228557lff.268.2021.03.16.19.35.33
 for <v9fs-developer@lists.sourceforge.net>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 16 Mar 2021 19:35:34 -0700 (PDT)
Received: by mail-lf1-f45.google.com with SMTP id p21so632716lfu.11
 for <v9fs-developer@lists.sourceforge.net>;
 Tue, 16 Mar 2021 19:35:33 -0700 (PDT)
X-Received: by 2002:a05:6512:398d:: with SMTP id
 j13mr922688lfu.41.1615948533286; 
 Tue, 16 Mar 2021 19:35:33 -0700 (PDT)
MIME-Version: 1.0
References: <161539526152.286939.8589700175877370401.stgit@warthog.procyon.org.uk>
 <161539528910.286939.1252328699383291173.stgit@warthog.procyon.org.uk>
 <20210316190707.GD3420@casper.infradead.org>
 <CAHk-=wjSGsRj7xwhSMQ6dAQiz53xA39pOG+XA_WeTgwBBu4uqg@mail.gmail.com>
 <887b9eb7-2764-3659-d0bf-6a034a031618@toxicpanda.com>
In-Reply-To: <887b9eb7-2764-3659-d0bf-6a034a031618@toxicpanda.com>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Tue, 16 Mar 2021 19:35:17 -0700
X-Gmail-Original-Message-ID: <CAHk-=whWoJhGeMn85LOh9FX-5d2-Upzmv1m2ZmYxvD31TKpUTA@mail.gmail.com>
Message-ID: <CAHk-=whWoJhGeMn85LOh9FX-5d2-Upzmv1m2ZmYxvD31TKpUTA@mail.gmail.com>
To: Josef Bacik <josef@toxicpanda.com>
X-Spam-Score: 0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.208.176 listed in list.dnswl.org]
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: toxicpanda.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.176 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1lMM29-008lTd-GN
Subject: Re: [V9fs-developer] [PATCH v4 02/28] mm: Add an unlock function
 for PG_private_2/PG_fscache
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
 "open list:NFS, SUNRPC, AND..." <linux-nfs@vger.kernel.org>,
 linux-afs@lists.infradead.org, Jeff Layton <jlayton@redhat.com>,
 Linux-MM <linux-mm@kvack.org>, CIFS <linux-cifs@vger.kernel.org>,
 linux-fsdevel <linux-fsdevel@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Matthew Wilcox <willy@infradead.org>, Christoph Hellwig <hch@lst.de>,
 David Howells <dhowells@redhat.com>, Chris Mason <clm@fb.com>,
 linux-cachefs@redhat.com, Alexander Viro <viro@zeniv.linux.org.uk>,
 Trond Myklebust <trondmy@hammerspace.com>, David Sterba <dsterba@suse.com>,
 v9fs-developer@lists.sourceforge.net, ceph-devel@vger.kernel.org,
 Anna Schumaker <anna.schumaker@netapp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Tue, Mar 16, 2021 at 7:12 PM Josef Bacik <josef@toxicpanda.com> wrote:
>
>
> Yeah it's just a flag, we use it to tell that the page is part of a range that
> has been allocated for IO.  The lifetime of the page is independent of the page,
> but is generally either dirty or under writeback, so either it goes through
> truncate and we clear PagePrivate2 there, or it actually goes through IO and is
> cleared before we drop the page in our endio.

Ok, that's what it looked like from my very limited "looking at a
couple of grep cases", but I didn't go any further than that.

> We _always_ have PG_private set on the page as long as we own it, and
> PG_private_2 is only set in this IO related context, so we're safe
> there because of the rules around PG_dirty/PG_writeback. We don't need
> it to have an extra ref for it being set.

Perfect. That means that at least as far as btrfs is concerned, we
could trivially remove PG_private_2 from that page_has_private() math
- you'd always see the same result anyway, exactly because you have
PG_private set.

And as far as I can tell, fscache doesn't want that PG_private_2 bit
to interact with the random VM lifetime or migration rules either, and
should rely entirely on the page count. David?

There's actually a fair number of page_has_private() users, so we'd
better make sure that's the case. But it's simplified by this but
really only being used by btrfs (which doesn't care) and fscache, so
this cleanup would basically be entirely up to the whole fscache
series.

Hmm? Objections?

            Linus


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
