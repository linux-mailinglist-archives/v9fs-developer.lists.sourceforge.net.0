Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0513667FCF7
	for <lists+v9fs-developer@lfdr.de>; Sun, 29 Jan 2023 06:50:58 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1pM0ad-00073w-Hm;
	Sun, 29 Jan 2023 05:50:54 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <jasowang@redhat.com>) id 1pM0ab-00073p-Mj
 for v9fs-developer@lists.sourceforge.net;
 Sun, 29 Jan 2023 05:50:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=1ESfJeO4v/Sc9kZuGNKusexDTFykbAPKz0X+uhnEfDU=; b=YLAD2/NtQ0sX/EYVsXEprmUydg
 VSZkyc6uk1498sj912cITq+sokzZlzTz7QJtjQ6W6m9W9F3mxS8rA+sxVFP6geiwS5TR9K7sXvmNQ
 iFlXFqL7i+HcVwiCJDC1YFss7rQd+aHJcGRkIRNn8Gu83tBw1vHDizxkr0iURUSRbaRA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=1ESfJeO4v/Sc9kZuGNKusexDTFykbAPKz0X+uhnEfDU=; b=itfxLyPiYm6bw0uXIwmB9BhSZB
 IU1rbrEuIWx0IZoIkRMv7mWtN1WJqNb/Nvgj7bPa3zaDUyU7Lo8p+t77SyynfQrz22c8FW20ZriXv
 18oiji4wCEHdqTurJ6SOY1ufr4KPiuuJDoYRXM0XCDmY5I7JM9vH+3T5WlGKNWcqBw9E=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1pM0aX-002CT6-Mh for v9fs-developer@lists.sourceforge.net;
 Sun, 29 Jan 2023 05:50:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1674971443;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=1ESfJeO4v/Sc9kZuGNKusexDTFykbAPKz0X+uhnEfDU=;
 b=MLV/P/Rdubq5VcL7aPcEpSPNS8/P6co70ymJohI84/ffAPeYeKeI+9TvQ+faXRDdtoW8Le
 OlV4y0hJC0PqYecotHk+uRu3b3vxP5pqsX8XsAV5Mr+a7k2RRupJ1Ijfn03khcJEZTxtKr
 uAOMlzf6WN4AraIQeg4sRxoYxJUYYeI=
Received: from mail-oa1-f69.google.com (mail-oa1-f69.google.com
 [209.85.160.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-336-Yviw68PsMqCdEJYFZiFG4w-1; Sun, 29 Jan 2023 00:50:41 -0500
X-MC-Unique: Yviw68PsMqCdEJYFZiFG4w-1
Received: by mail-oa1-f69.google.com with SMTP id
 586e51a60fabf-1631a8c8507so3055157fac.3
 for <v9fs-developer@lists.sourceforge.net>;
 Sat, 28 Jan 2023 21:50:41 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=1ESfJeO4v/Sc9kZuGNKusexDTFykbAPKz0X+uhnEfDU=;
 b=mbswnT7nuO5YghHfvZUc4WxNu9nUodN4VQVLuN++QPeh5M8gS7mxHZGkt6x3w3S/VW
 Ce4SRU3cJ7b50hidsB7aE0tXeCtsPjtqmlHYEX3zjNNxx0fYcyT5sH5+h8dz+sGtnpkX
 6Qbs6DNPA4NhBBZ0XcDy2hfQao5215nV8alQa17ha2eumWI4Le7gZGInChQazEA/c/pc
 6ywHjkC4l7hQ7ukjN3c9bKdXkSrd/d3N2VteKvuVCqzDrJFrRxGGroZTft/k6fnM2Xeh
 RJffULkE1OiT+k6L2WZQYBkuO5aujNCr8QE/XSUIa0TK42NjHzQedgH8W7zF0Ht31ZfP
 voBw==
X-Gm-Message-State: AO0yUKUOveMGw/EhuzzESX2Ts0m+oIVQyExH13VfWpEeHLFTAoMNLbQ0
 oNrXj1Owx6DKgdhry4xhBD2SNTmzlrbWrZmmAt9A03h+w1gQYxo0YjnVIxe3rxNynMqUgdKrhUn
 3dsGGHAXvaPGHkBwxB76DaEMUf9u+9KlBRsJq2ivo1Bkv1hXcpGI=
X-Received: by 2002:a05:6870:959e:b0:163:9cea:eea7 with SMTP id
 k30-20020a056870959e00b001639ceaeea7mr115406oao.35.1674971440500; 
 Sat, 28 Jan 2023 21:50:40 -0800 (PST)
X-Google-Smtp-Source: AK7set+UoO/1kphXCPY28/DKX9hwQUG6JjAGE74TUF7dLTKDNr1tk08D4Bhi3bKgLWdo5+0Rqlh3eus5Dyvey48IMPg=
X-Received: by 2002:a05:6870:959e:b0:163:9cea:eea7 with SMTP id
 k30-20020a056870959e00b001639ceaeea7mr115403oao.35.1674971440262; Sat, 28 Jan
 2023 21:50:40 -0800 (PST)
MIME-Version: 1.0
References: <20221128021005.232105-1-lizetao1@huawei.com>
 <20221128042945-mutt-send-email-mst@kernel.org>
 <20230127061055-mutt-send-email-mst@kernel.org>
In-Reply-To: <20230127061055-mutt-send-email-mst@kernel.org>
From: Jason Wang <jasowang@redhat.com>
Date: Sun, 29 Jan 2023 13:50:29 +0800
Message-ID: <CACGkMEszd0O-juD93nMQEmOA0w+rq_pE-je5xj+XkMc7nwUR4w@mail.gmail.com>
To: "Michael S. Tsirkin" <mst@redhat.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Fri, Jan 27,
 2023 at 7:12 PM Michael S. Tsirkin <mst@redhat.com>
 wrote: > > On Mon, Nov 28, 2022 at 05:14:44AM -0500, Michael S. Tsirkin wrote:
 > > On Mon, Nov 28, 2022 at 10:10:01AM +0800, Li Zeta [...] 
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [170.10.133.124 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [170.10.133.124 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1pM0aX-002CT6-Mh
Subject: Re: [V9fs-developer] [PATCH 0/4] Fix probe failed when modprobe
 modules
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
Cc: axboe@kernel.dk, lucho@ionkov.net, rusty@rustcorp.com.au, david@redhat.com,
 ericvh@gmail.com, netdev@vger.kernel.org, linux_oss@crudebyte.com,
 Li Zetao <lizetao1@huawei.com>, linux-kernel@vger.kernel.org,
 virtualization@lists.linux-foundation.org, linux-block@vger.kernel.org,
 v9fs-developer@lists.sourceforge.net, edumazet@google.com, kraxel@redhat.com,
 stefanha@redhat.com, kuba@kernel.org, pbonzini@redhat.com, pabeni@redhat.com,
 davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Fri, Jan 27, 2023 at 7:12 PM Michael S. Tsirkin <mst@redhat.com> wrote:
>
> On Mon, Nov 28, 2022 at 05:14:44AM -0500, Michael S. Tsirkin wrote:
> > On Mon, Nov 28, 2022 at 10:10:01AM +0800, Li Zetao wrote:
> > > This patchset fixes similar issue, the root cause of the
> > > problem is that the virtqueues are not stopped on error
> > > handling path.
> >
> > I've been thinking about this.
> > Almost all drivers are affected.
> >
> > The reason really is that it used to be the right thing to do:
> > On legacy pci del_vqs writes 0
> > into vq index and this resets the device as a side effect
> > (we actually do this multiple times, what e.g. writes of MSI vector
> >  after the 1st reset do I have no idea).
> >
> > mmio ccw and modern pci don't.
> >
> > Given this has been with us for a while I am inlined to look for
> > a global solution rather than tweaking each driver.
> >
> > Given many drivers are supposed to work on legacy too, we know del_vqs
> > includes a reset for many of them. So I think I see a better way to do
> > this:
> >
> > Add virtio_reset_device_and_del_vqs()
> >
> > and convert all drivers to that.
> >
> > When doing this, we also need to/can fix a related problem (and related
> > to the hardening that Jason Wang was looking into):
> > virtio_reset_device is inherently racy: vq interrupts could
> > be in flight when we do reset. We need to prevent handlers from firing in
> > the window between reset and freeing the irq, so we should first
> > free irqs and only then start changing the state by e.g.
> > device reset.
> >
> >
> > Quite a lot of core work here. Jason are you still looking into
> > hardening?
> >
>
> Li Zetao, Jason, any updates. You guys looking into this?

At least I will continue the work of IRQ hardening. And this work
could be done on top.

Thanks

>
>
> >
> > > Li Zetao (4):
> > >   9p: Fix probe failed when modprobe 9pnet_virtio
> > >   virtio-mem: Fix probe failed when modprobe virtio_mem
> > >   virtio-input: Fix probe failed when modprobe virtio_input
> > >   virtio-blk: Fix probe failed when modprobe virtio_blk
> > >
> > >  drivers/block/virtio_blk.c    | 1 +
> > >  drivers/virtio/virtio_input.c | 1 +
> > >  drivers/virtio/virtio_mem.c   | 1 +
> > >  net/9p/trans_virtio.c         | 1 +
> > >  4 files changed, 4 insertions(+)
> > >
> > > --
> > > 2.25.1
>



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
