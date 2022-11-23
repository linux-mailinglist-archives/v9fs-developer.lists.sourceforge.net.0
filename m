Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EC5A636B59
	for <lists+v9fs-developer@lfdr.de>; Wed, 23 Nov 2022 21:39:36 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1oxwWr-0000dG-UN;
	Wed, 23 Nov 2022 20:39:33 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <torvalds@linuxfoundation.org>) id 1oxwWq-0000dA-MY
 for v9fs-developer@lists.sourceforge.net;
 Wed, 23 Nov 2022 20:39:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=CqmvkkESPfhDMe/qDmW4BJUOiTicPIv5an9zs8Gyv18=; b=KJggmFaT9CjEKSmPEfLeGA7B19
 0zqc7Blz67EXDYsCEhkcbvCZSW2Rc17QzECj80R3gH9mIjZuuhLzAKrQQ6V20Q65AqPJd609jsjn3
 d2AMaqVS6b49zucGS08QWl1+mRZdYnotSdexFmqa0uyu1CQ3wvbwUFbvH6YkR7Y8WRGU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=CqmvkkESPfhDMe/qDmW4BJUOiTicPIv5an9zs8Gyv18=; b=TxTLj6VEKkqQep3WY1Tf8RDcKc
 6PTY1dMAdjqKWWSedFhy8TVYOaoI57OvRMdLpXLdWOY9dV66t/SPkFs4whzD2ZYShNCUQNVBv1ZNR
 0UEXJV+FDJNqZw5akvQDmn9JBpKLJ1rJn0q/2PGVOkM8+FIvKU5nRyD8rOWAYqujTTnk=;
Received: from mail-oi1-f179.google.com ([209.85.167.179])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1oxwWj-00HHwH-Nl for v9fs-developer@lists.sourceforge.net;
 Wed, 23 Nov 2022 20:39:32 +0000
Received: by mail-oi1-f179.google.com with SMTP id n205so20288866oib.1
 for <v9fs-developer@lists.sourceforge.net>;
 Wed, 23 Nov 2022 12:39:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux-foundation.org; s=google;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=CqmvkkESPfhDMe/qDmW4BJUOiTicPIv5an9zs8Gyv18=;
 b=H05YjYlWatbzx/wYDWLZlWtlE1KBwjnnlgWrAS57YeODNFQbfnbqnkGjrw+7lnDaor
 oScBBYPzE4yA/do2o0oXxJV/7PAgcLDU8MGXopXi7Hyz2CY8RYXjIOxuZIHXCxSyrV4d
 4jeZ+ngrXKdb0oQJMIfkShcljtHyJ8LXyw7yk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=CqmvkkESPfhDMe/qDmW4BJUOiTicPIv5an9zs8Gyv18=;
 b=PSD+5fMw4CIZbe4tGoVwxAk0b4fwiihFwc1K4Y6fdd42NgZtn8BJskTsJPyM7EJCZd
 YephE48QLe7V5Pwg0zXSxSMHKPPW+4JNjI116W9LSFJircdjUbEq+ZxLrdBoJELA4YWm
 bXFA74lXLnaggb5hmAzqyf/5N4t7V8A9uTXg3AuZPl+f4kEDKgrho+M6uSDliyU/R/1n
 x2b014T1wtff9ESB1mNUhITJ7MkQry1SS530a4Gxat/LQ7oPQIVxOsGJYIQ5WTmIILad
 WWitjmI3k3XFeExB8yiFIfx53zd5q2CmyFj3EFQ1iWplmgKPrHiOVY1DyF5ep4OhyjSR
 acMA==
X-Gm-Message-State: ANoB5pk3Mq0z15zMujMJrzAyK8u5PvCeswRNwCyNjHBK2juVANDPKuWY
 sN0/nnFmAppj3R09dgpOP9y1gxytIXAoFQ==
X-Google-Smtp-Source: AA0mqf4o38pNhZKTRCxAQgfWpRKBT+KvL/yY1e32HQSfRtNk8dkOULspAqirW1TG+Y/gXtU3Pl8sAg==
X-Received: by 2002:a17:90b:2686:b0:218:bb0a:e295 with SMTP id
 pl6-20020a17090b268600b00218bb0ae295mr15165188pjb.80.1669235574427; 
 Wed, 23 Nov 2022 12:32:54 -0800 (PST)
Received: from mail-pf1-f173.google.com (mail-pf1-f173.google.com.
 [209.85.210.173]) by smtp.gmail.com with ESMTPSA id
 x15-20020a63fe4f000000b00434272fe870sm11277684pgj.88.2022.11.23.12.32.54
 for <v9fs-developer@lists.sourceforge.net>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 23 Nov 2022 12:32:54 -0800 (PST)
Received: by mail-pf1-f173.google.com with SMTP id 130so18361973pfu.8
 for <v9fs-developer@lists.sourceforge.net>;
 Wed, 23 Nov 2022 12:32:54 -0800 (PST)
X-Received: by 2002:ad4:4101:0:b0:4b1:856b:4277 with SMTP id
 i1-20020ad44101000000b004b1856b4277mr10112261qvp.129.1669235172559; Wed, 23
 Nov 2022 12:26:12 -0800 (PST)
MIME-Version: 1.0
References: <1459152.1669208550@warthog.procyon.org.uk>
 <CAHk-=wghJtq-952e_8jd=vtV68y_HsDJ8=e0=C3-AsU2WL-8YA@mail.gmail.com>
 <1619343.1669233783@warthog.procyon.org.uk>
In-Reply-To: <1619343.1669233783@warthog.procyon.org.uk>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Wed, 23 Nov 2022 12:25:56 -0800
X-Gmail-Original-Message-ID: <CAHk-=whJBOAOqB8wWxeAtKy3b9r4rn2Y48+zsuDDhKJ3D3D4cw@mail.gmail.com>
Message-ID: <CAHk-=whJBOAOqB8wWxeAtKy3b9r4rn2Y48+zsuDDhKJ3D3D4cw@mail.gmail.com>
To: David Howells <dhowells@redhat.com>
X-Spam-Score: 0.1 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Wed, Nov 23,
 2022 at 12:03 PM David Howells <dhowells@redhat.com>
 wrote: > > Linus Torvalds <torvalds@linux-foundation.org> wrote: > > > But
 I also think it's strange in another way, with that odd [...] 
 Content analysis details:   (0.1 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.179 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.179 listed in list.dnswl.org]
X-Headers-End: 1oxwWj-00HHwH-Nl
Subject: Re: [V9fs-developer] [PATCH v3] mm, netfs,
 fscache: Stop read optimisation when folio removed from pagecache
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
Cc: Shyam Prasad N <nspmangalore@gmail.com>, linux-cifs@vger.kernel.org,
 linux-nfs@vger.kernel.org, Rohith Surabattula <rohiths.msft@gmail.com>,
 dwysocha@redhat.com, ceph-devel@vger.kernel.org, linux-kernel@vger.kernel.org,
 willy@infradead.org, linux-afs@lists.infradead.org,
 Steve French <sfrench@samba.org>, linux-mm@kvack.org, linux-cachefs@redhat.com,
 linux-fsdevel@vger.kernel.org, v9fs-developer@lists.sourceforge.net,
 Ilya Dryomov <idryomov@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Wed, Nov 23, 2022 at 12:03 PM David Howells <dhowells@redhat.com> wrote:
>
> Linus Torvalds <torvalds@linux-foundation.org> wrote:
>
> > But I also think it's strange in another way, with that odd placement of
> >
> >         mapping_clear_release_always(inode->i_mapping);
> >
> > at inode eviction time. That just feels very random.
>
> I was under the impression that a warning got splashed if unexpected
> address_space flags were set when ->evict_inode() returned.  I may be thinking
> of page flags.  If it doesn't, fine, this isn't required.

I don't know if the warning happens or not, but the thing I reacted to
was just how *random* this was. There was no logic to it, nor any
explanation.

I *suspect* that if we add this kind of new generic address space
flag, then that flag should just be cleared by generic code when the
address space is released.

But I'm not saying it has to be done that way - I'm just saying that
however it is done, please don't make it this random mess with no
explanation.

The *setting* of the flag was at least fairly obvious. I didn't find
code like this odd:

+       if (v9inode->netfs.cache)
+               mapping_set_release_always(inode->i_mapping);

and it makes all kinds of sense (ie I can read it as a "if I use netfs
caching for this inode, then I want to be informed when a folio is
released from this mapping").

It's just the clearing that looked very random to me.

Maybe just a comment would have helped, but I get the feeling that it
migth as well just be cleared in "clear_inode()" or something like
that.

> > That code makes no sense what-so-ever. Why isn't it using
> > "folio_has_private()"?
>
> It should be, yes.
>
> > Why is this done as an open-coded - and *badly* so - version of
> > !folio_needs_release() that you for some reason made private to mm/vmscan.c?
>
> Yeah, in retrospect, I should have put that in mm/internal.h.

So if folio_needs_release() is in mm/internal.h, and then mm/filemap.c
uses it in filemap_release_folio() instead of the odd open-coding, I
think that would clear up my worries about both mm/filemap.c and
mm/vmscan.c.

                Linus


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
