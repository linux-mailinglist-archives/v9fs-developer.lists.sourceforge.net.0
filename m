Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C5590304636
	for <lists+v9fs-developer@lfdr.de>; Tue, 26 Jan 2021 19:26:58 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1l4T3I-0007kO-3N; Tue, 26 Jan 2021 18:26:56 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <dwysocha@redhat.com>) id 1l4T3G-0007kG-2N
 for v9fs-developer@lists.sourceforge.net; Tue, 26 Jan 2021 18:26:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=2fOOzn8pPhlTKm9KikLbj00xwMG7fV3rZ/r/LGxiqKA=; b=Orv8KbgUOcIvtQzR26ZxEnNJVq
 xKjKTtXOFGXanoEREWOLxQAZlF03TEoyjWWJOuvMX0DwYIX83J5/N6jFZ4yGfpdoqdb3j0K10AWsz
 XcOrM48NzefEeg+Tgodt0tbIlThDotFsZeSO8+y5TQLPzK42thlxAD1s0YMqJkBmbIuk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=2fOOzn8pPhlTKm9KikLbj00xwMG7fV3rZ/r/LGxiqKA=; b=U0IcCyDITNBZvXlwtEE9lbzR3W
 dTl2IaV+TWWGGNiT+Rlg6Gn0ATE6zGkqlZ006pTbd8igO8CYOug4UkKULayq7UeKLL+L+newG1XLB
 RVwpl3KrpjhARuXrkQg/dRfYRloF/8pgoE4bKlP741O6u8geK/wWt1qZCrhd2AwfJwxc=;
Received: from us-smtp-delivery-124.mimecast.com ([63.128.21.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.2)
 id 1l4T36-007Ena-TT
 for v9fs-developer@lists.sourceforge.net; Tue, 26 Jan 2021 18:26:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1611685599;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=2fOOzn8pPhlTKm9KikLbj00xwMG7fV3rZ/r/LGxiqKA=;
 b=Xa2hKFcM0sU+OHX2iVFQoCA4n/l9/VsJM7fjMdPrc3PYVRc62Y9xsczhv+bu1Z9KRpXuOB
 6Mo9OGRh5FqH3TJ+/YceMT2bvRbdQfol+GyYeVwaAP4rmoWDhAW/UnEhx1BliP5I1pyvnO
 wSePq/CZgFLw7tOHdk2d3sRSsVAhw9U=
Received: from mail-ed1-f72.google.com (mail-ed1-f72.google.com
 [209.85.208.72]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-60-aMGtY7B-O021xLjxTS3Agg-1; Tue, 26 Jan 2021 13:26:37 -0500
X-MC-Unique: aMGtY7B-O021xLjxTS3Agg-1
Received: by mail-ed1-f72.google.com with SMTP id w4so9787730edu.0
 for <v9fs-developer@lists.sourceforge.net>;
 Tue, 26 Jan 2021 10:26:36 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=2fOOzn8pPhlTKm9KikLbj00xwMG7fV3rZ/r/LGxiqKA=;
 b=aodRyhc8xZpXQ7mYzxKQQ+mERSQtfCyPTLQNKjyBWhHge4iYC7SHxm1MDhmo4ekg05
 pBaLFBB5yU35RteRCPU7pQ7RByyvw46aLh+5sFJUg41f+sje8wt9D9+uzfh0Cb9Q/ruf
 9tDTQxecsTobTz3FoCNm3+yCk56shpjezXcPUxMcM5pxgyBWZe87fPnToCkuIwotoQS+
 JsmRFUMfFp7vwmzsZUD6smX8AadURQzW8IpIcr4d0wLxa/Niu3uyv5FkzusWLrJsS3Rg
 mIbGGR45YLrsF9NOvkiFLUi5DgHzOGHrJiszt5Qsg+enK88axkhlBnkjgei4aFuTedOs
 HBig==
X-Gm-Message-State: AOAM531OvSO2xrpg6dR0Uwp/Y3j/eWEDYsU9X6hlWKFMZHh39lybAW9U
 i3YHBxxhtsW0KwfeV5gCSiogXhykeYDYiSftHT52jD2sS2StWJcBszlo/gxi6KH5uEWtMHLFhof
 48tnkt3v8rvS/IX8nLj2t6OKFO4yfQkzgq6zDSRwtcB8JSCmP3sk=
X-Received: by 2002:a17:906:409:: with SMTP id d9mr4137068eja.70.1611685595819; 
 Tue, 26 Jan 2021 10:26:35 -0800 (PST)
X-Google-Smtp-Source: ABdhPJyEFq3YOlGW6iMDijn0AhVKCr8FbAfIU0rqEW4JxM7phQSOhY8lxoG5RgplzfjnQ6XssK0VTMbS4BNxu0SuS8k=
X-Received: by 2002:a17:906:409:: with SMTP id d9mr4137063eja.70.1611685595666; 
 Tue, 26 Jan 2021 10:26:35 -0800 (PST)
MIME-Version: 1.0
References: <161161025063.2537118.2009249444682241405.stgit@warthog.procyon.org.uk>
 <161161064956.2537118.3354798147866150631.stgit@warthog.procyon.org.uk>
 <20210126013611.GI308988@casper.infradead.org>
In-Reply-To: <20210126013611.GI308988@casper.infradead.org>
From: David Wysochanski <dwysocha@redhat.com>
Date: Tue, 26 Jan 2021 13:25:59 -0500
Message-ID: <CALF+zO=4kyvR+9T48ZF6Cu-izLkbs-1m3S_ebDNWv-zuC5GSRA@mail.gmail.com>
To: Matthew Wilcox <willy@infradead.org>
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=dwysocha@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-Spam-Score: -0.4 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: infradead.org]
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [63.128.21.124 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.3 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1l4T36-007Ena-TT
Subject: Re: [V9fs-developer] [PATCH 32/32] NFS: Convert readpage to
 readahead and use netfs_readahead for fscache
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
Cc: Steve French <sfrench@samba.org>, linux-nfs <linux-nfs@vger.kernel.org>,
 Jeff Layton <jlayton@redhat.com>, linux-cifs <linux-cifs@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linux-afs@lists.infradead.org, David Howells <dhowells@redhat.com>,
 linux-cachefs@redhat.com, Alexander Viro <viro@zeniv.linux.org.uk>,
 Trond Myklebust <trondmy@hammerspace.com>,
 linux-fsdevel <linux-fsdevel@vger.kernel.org>,
 v9fs-developer@lists.sourceforge.net, ceph-devel@vger.kernel.org,
 Anna Schumaker <anna.schumaker@netapp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Mon, Jan 25, 2021 at 8:37 PM Matthew Wilcox <willy@infradead.org> wrote:
>
>
> For Subject: s/readpage/readpages/
>
Fixed

> On Mon, Jan 25, 2021 at 09:37:29PM +0000, David Howells wrote:
> > +int __nfs_readahead_from_fscache(struct nfs_readdesc *desc,
> > +                              struct readahead_control *rac)
>
> I thought you wanted it called ractl instead of rac?  That's what I've
> been using in new code.
>
Fixed

> > -     dfprintk(FSCACHE, "NFS: nfs_getpages_from_fscache (0x%p/%u/0x%p)\n",
> > -              nfs_i_fscache(inode), npages, inode);
> > +     dfprintk(FSCACHE, "NFS: nfs_readahead_from_fscache (0x%p/0x%p)\n",
> > +              nfs_i_fscache(inode), inode);
>
> We do have readahead_count() if this is useful information to be logging.
>
Right, I used it elsewhere so I'll add here as well.

> > +static inline int nfs_readahead_from_fscache(struct nfs_readdesc *desc,
> > +                                          struct readahead_control *rac)
> >  {
> > -     if (NFS_I(inode)->fscache)
> > -             return __nfs_readpages_from_fscache(ctx, inode, mapping, pages,
> > -                                                 nr_pages);
> > +     if (NFS_I(rac->mapping->host)->fscache)
> > +             return __nfs_readahead_from_fscache(desc, rac);
> >       return -ENOBUFS;
> >  }
>
> Not entirely sure that it's worth having the two functions separated any more.
>
Yeah it's questionable so I'll collapse.  I'll also do that with
nfs_readpage_from_fscache().

> >       /* attempt to read as many of the pages as possible from the cache
> >        * - this returns -ENOBUFS immediately if the cookie is negative
> >        */
> > -     ret = nfs_readpages_from_fscache(desc.ctx, inode, mapping,
> > -                                      pages, &nr_pages);
> > +     ret = nfs_readahead_from_fscache(&desc, rac);
> >       if (ret == 0)
> >               goto read_complete; /* all pages were read */
> >
> >       nfs_pageio_init_read(&desc.pgio, inode, false,
> >                            &nfs_async_read_completion_ops);
> >
> > -     ret = read_cache_pages(mapping, pages, readpage_async_filler, &desc);
> > +     while ((page = readahead_page(rac))) {
> > +             ret = readpage_async_filler(&desc, page);
> > +             put_page(page);
> > +     }
>
> I thought with the new API we didn't need to do this kind of thing
> any more?  ie no matter whether fscache is configured in or not, it'll
> submit the I/Os.
>

We don't. This patchset was only intended as a stepping stone to get the
netfs API accepted with minimal invasiveness in NFS.

I have another patch which will unconditionally call netfs API but I
didn't post it. Since I'm not an NFS maintainer, and maintainer's didn't
weigh in on the approach, I opted to go with the least invasive approach.

There's an NFS "remote bakeathon" coming up at the end of Feb.
That would probably be a good time to get further testing on NFS
unconditionally calling the netfs API, and we should be able to
cover things like any performance concerns, etc.



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
