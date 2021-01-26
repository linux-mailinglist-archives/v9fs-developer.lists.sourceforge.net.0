Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B65313047A4
	for <lists+v9fs-developer@lfdr.de>; Tue, 26 Jan 2021 20:11:27 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1l4TkL-0004Ao-Gd; Tue, 26 Jan 2021 19:11:25 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <dwysocha@redhat.com>) id 1l4TkH-0004Aa-Nb
 for v9fs-developer@lists.sourceforge.net; Tue, 26 Jan 2021 19:11:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=dhSDWdgO45oMOw4U14ZD4IpWy4LqGlGQzgyJ+NX3F9s=; b=hvq5boNDs5wQRaKSzaPDqFbB8U
 +nj7ow2cCSdhZJvugDUrccjfoXnESbSCx1tHM7RST/oSJp8+IykNOqVpaWEEj/5JjkM62T+1mJh8m
 dKomT2OtY16QAUqRWdaZyTKJiJhLSVLWTRTn7SistITnHqUvmVEqb4vIWBR1iN+TaqnQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=dhSDWdgO45oMOw4U14ZD4IpWy4LqGlGQzgyJ+NX3F9s=; b=h20SptNFzGmvd6IbIzCGU0YkRf
 3kShEBnUK2wBX2eNNY7ZRLQYsDNsk9ozBPvgxEbSjUiM4iZ+7PYoL3oTGJNa/wUHI5HQJEwEYc8/f
 G7cD84Zpl2g3h/YQrd8OHr4Fnsn9Fwrj9R9J6nxZCZaUzE6LwavGekGDk9l1OOQd0Nhc=;
Received: from us-smtp-delivery-124.mimecast.com ([63.128.21.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.2)
 id 1l4Tk8-007h7i-2z
 for v9fs-developer@lists.sourceforge.net; Tue, 26 Jan 2021 19:11:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1611688266;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=dhSDWdgO45oMOw4U14ZD4IpWy4LqGlGQzgyJ+NX3F9s=;
 b=gK2M9rdaSBOo74B9x0hO1a1vreMXL5LpzXZ+Ilqr7IK/SZcf1yZjETgCbgDXX2R5FfgoKK
 9mUmKCjJZeU5xNWaIAL8bV9fcx4RrPrKKqc6A2v2gf3pCVjz+9C0AMAvElRFY7WrIWfGzt
 XwRXO3ki+LMz3Tcj/6ecR1/MXCdCDVU=
Received: from mail-ed1-f72.google.com (mail-ed1-f72.google.com
 [209.85.208.72]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-236-5Z6wlO7DPAOyBRjj-wCtEA-1; Tue, 26 Jan 2021 14:11:04 -0500
X-MC-Unique: 5Z6wlO7DPAOyBRjj-wCtEA-1
Received: by mail-ed1-f72.google.com with SMTP id a26so9924988edx.8
 for <v9fs-developer@lists.sourceforge.net>;
 Tue, 26 Jan 2021 11:11:04 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=dhSDWdgO45oMOw4U14ZD4IpWy4LqGlGQzgyJ+NX3F9s=;
 b=q9snhh+xlkCaURFeiTZo8KVyBPNzpVlGFTDq6Yx234HIQOdjVRHo+cuRT9iClWHRiP
 qFQxQNcGiVu486dg7t4a2DNkumpRVlDmu3NCl8wDIlKUhLDbViRNDirvJV4UmenG5Uw1
 XgprKri3DNRy60awFazozEKmXzFIheleZ3HUJA4p+noFF3I/QYqeEksOtSPsa8DY4k7V
 gbz/Mz0FvyORRAKbFqvhiLd6Eqcr0UcK4vmBJOQgQaDjSWyFkZDj2GAP/LIdvZyjaIKs
 pvs0Z/oh6HInWeT2f4pcQ0BxxTSRhYYce4IHWGzfCmdE+DciCfLRwgvwIb91rSN7VqT+
 J7uA==
X-Gm-Message-State: AOAM532pfmZHWSp6PmfOX33fB3DAC0zzfbMHoJPDqDUWcrr3029H3voq
 chVnwpImmoHxymnHczkr8vFXLLvjLXdOsGF5KHO03PN/LlTTetml/1h9wsbANvzfp70ywyBscjI
 fsmrgs2g9ul0ABBj1Q6WCeZ0hXqg5HTW1sg94YcfEPsldlPmqF30=
X-Received: by 2002:aa7:ce87:: with SMTP id y7mr5760858edv.211.1611688263260; 
 Tue, 26 Jan 2021 11:11:03 -0800 (PST)
X-Google-Smtp-Source: ABdhPJw9khL2OyLeDGiHbXxhgFxEoiQEWhWSGq0ZEPFvGyzCXtwZceNpjSLzAw970dmzg8NCnH9M4SKeWZSU2be3AaE=
X-Received: by 2002:aa7:ce87:: with SMTP id y7mr5760842edv.211.1611688263103; 
 Tue, 26 Jan 2021 11:11:03 -0800 (PST)
MIME-Version: 1.0
References: <161161025063.2537118.2009249444682241405.stgit@warthog.procyon.org.uk>
 <161161064956.2537118.3354798147866150631.stgit@warthog.procyon.org.uk>
 <20210126013611.GI308988@casper.infradead.org>
 <D6C85B77-17CA-4BA6-9C2C-C63A8AF613AB@oracle.com>
In-Reply-To: <D6C85B77-17CA-4BA6-9C2C-C63A8AF613AB@oracle.com>
From: David Wysochanski <dwysocha@redhat.com>
Date: Tue, 26 Jan 2021 14:10:26 -0500
Message-ID: <CALF+zOm++OzAebR4wu+Hdf8Aa8GpXZu8Am9eVajVUiDMBJE63w@mail.gmail.com>
To: Chuck Lever <chuck.lever@oracle.com>
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=dwysocha@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-Spam-Score: -0.4 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [63.128.21.124 listed in wl.mailspike.net]
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: infradead.org]
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.3 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1l4Tk8-007h7i-2z
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
Cc: Steve French <sfrench@samba.org>,
 Linux NFS Mailing List <linux-nfs@vger.kernel.org>,
 Jeff Layton <jlayton@redhat.com>, CIFS <linux-cifs@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Matthew Wilcox <willy@infradead.org>,
 "linux-afs@lists.infradead.org" <linux-afs@lists.infradead.org>,
 David Howells <dhowells@redhat.com>, linux-cachefs <linux-cachefs@redhat.com>,
 Al Viro <viro@zeniv.linux.org.uk>, Trond Myklebust <trondmy@hammerspace.com>,
 linux-fsdevel <linux-fsdevel@vger.kernel.org>,
 "v9fs-developer@lists.sourceforge.net" <v9fs-developer@lists.sourceforge.net>,
 "ceph-devel@vger.kernel.org" <ceph-devel@vger.kernel.org>,
 Anna Schumaker <anna.schumaker@netapp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Tue, Jan 26, 2021 at 10:25 AM Chuck Lever <chuck.lever@oracle.com> wrote:
>
>
>
> > On Jan 25, 2021, at 8:36 PM, Matthew Wilcox <willy@infradead.org> wrote:
> >
> >
> > For Subject: s/readpage/readpages/
> >
> > On Mon, Jan 25, 2021 at 09:37:29PM +0000, David Howells wrote:
> >> +int __nfs_readahead_from_fscache(struct nfs_readdesc *desc,
> >> +                             struct readahead_control *rac)
> >
> > I thought you wanted it called ractl instead of rac?  That's what I've
> > been using in new code.
> >
> >> -    dfprintk(FSCACHE, "NFS: nfs_getpages_from_fscache (0x%p/%u/0x%p)\n",
> >> -             nfs_i_fscache(inode), npages, inode);
> >> +    dfprintk(FSCACHE, "NFS: nfs_readahead_from_fscache (0x%p/0x%p)\n",
> >> +             nfs_i_fscache(inode), inode);
> >
> > We do have readahead_count() if this is useful information to be logging.
>
> As a sidebar, the Linux NFS community is transitioning to tracepoints.
> It would be helpful (but not completely necessary) to use tracepoints
> in new code instead of printk.
>

The netfs API has a lot of good tracepoints and to be honest I think we can
get rid of fscache's rpcdebug, but let me take a closer look to be
sure.  I didn't use rpcdebug much, if at all, in the latest rounds of debugging.



>
> >> +static inline int nfs_readahead_from_fscache(struct nfs_readdesc *desc,
> >> +                                         struct readahead_control *rac)
> >> {
> >> -    if (NFS_I(inode)->fscache)
> >> -            return __nfs_readpages_from_fscache(ctx, inode, mapping, pages,
> >> -                                                nr_pages);
> >> +    if (NFS_I(rac->mapping->host)->fscache)
> >> +            return __nfs_readahead_from_fscache(desc, rac);
> >>      return -ENOBUFS;
> >> }
> >
> > Not entirely sure that it's worth having the two functions separated any more.
> >
> >>      /* attempt to read as many of the pages as possible from the cache
> >>       * - this returns -ENOBUFS immediately if the cookie is negative
> >>       */
> >> -    ret = nfs_readpages_from_fscache(desc.ctx, inode, mapping,
> >> -                                     pages, &nr_pages);
> >> +    ret = nfs_readahead_from_fscache(&desc, rac);
> >>      if (ret == 0)
> >>              goto read_complete; /* all pages were read */
> >>
> >>      nfs_pageio_init_read(&desc.pgio, inode, false,
> >>                           &nfs_async_read_completion_ops);
> >>
> >> -    ret = read_cache_pages(mapping, pages, readpage_async_filler, &desc);
> >> +    while ((page = readahead_page(rac))) {
> >> +            ret = readpage_async_filler(&desc, page);
> >> +            put_page(page);
> >> +    }
> >
> > I thought with the new API we didn't need to do this kind of thing
> > any more?  ie no matter whether fscache is configured in or not, it'll
> > submit the I/Os.
>
> --
> Chuck Lever
>
>
>



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
