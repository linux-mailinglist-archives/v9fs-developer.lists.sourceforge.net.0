Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CD2C67E2CB
	for <lists+v9fs-developer@lfdr.de>; Fri, 27 Jan 2023 12:12:17 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1pLMeW-0006wW-3P;
	Fri, 27 Jan 2023 11:12:15 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <mst@redhat.com>) id 1pLMeS-0006vy-8D
 for v9fs-developer@lists.sourceforge.net;
 Fri, 27 Jan 2023 11:12:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:In-Reply-To:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=DHdIigeHoqEjPUOvZqjrQoWLn5deR3YQuYptQY45zS0=; b=Wgxbqc+eM79WDxIGuNt1N+QCoo
 3asNeOUGoAZK2hS6q1LwVFQSWEmRxpBApfbDhLeWegk/n9OjYAygjGyMme1zEahqx/1gQbnmpI4Kv
 YJer0ofU8Y1CY/5KugfCOGBeJJxp6ZJYkgOIHD0DSKLChwQF9oDDKYG51eEfF82uYeq0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=DHdIigeHoqEjPUOvZqjrQoWLn5deR3YQuYptQY45zS0=; b=h26hfFHvJd3iacEKLLt56eKUe6
 kR05VoSJuCGwr8n7KwS1ati5zVjf78LV6cpya18VzK44QX45PDQxusOGLj9/uOubbX4WOHQthmVGH
 kdR6C/LL5yqj8dZOVe+qS07vgf4OGyW2yIZHrTztdRb+XcIp01BnTcnFYRAMEXaP+ajI=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1pLMeK-000OOB-MI for v9fs-developer@lists.sourceforge.net;
 Fri, 27 Jan 2023 11:12:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1674817918;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=DHdIigeHoqEjPUOvZqjrQoWLn5deR3YQuYptQY45zS0=;
 b=YX1kyrjUGB9CnVGZZrsAgZccqqGffNJdJDse3HVsdot5mRiABjrye8WmvNqCbZsCgo2QCr
 0iFCjF7eglcbBTTQDfv8C3/yzW9ojDq98XzzqJ5JknJgnAyDtVhjCilkzGg/lQ9GsPw5nH
 iiASuoaQ1uXoZR8qj8NAnxlUy/756Yw=
Received: from mail-ej1-f70.google.com (mail-ej1-f70.google.com
 [209.85.218.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-322-QUIj_GcANDSZwA8iCERn1A-1; Fri, 27 Jan 2023 06:11:57 -0500
X-MC-Unique: QUIj_GcANDSZwA8iCERn1A-1
Received: by mail-ej1-f70.google.com with SMTP id
 gb18-20020a170907961200b008715e951f02so3246118ejc.11
 for <v9fs-developer@lists.sourceforge.net>;
 Fri, 27 Jan 2023 03:11:56 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=DHdIigeHoqEjPUOvZqjrQoWLn5deR3YQuYptQY45zS0=;
 b=vvlPXWiFQKGVwK8d8vYnjqOc/S8W+qCHu0K8Z5Rno2BJ5GCZD4CeVHZjNi+Wu8wJtt
 yNrz5X5N94mgpTIwi+BchZD1BXL7SohcHwFluJgBKHShbazRsxXzKeLyb6sbP8ME1bVa
 xfNVYAprpxilTJhKB9neE4iEJaGY3T8vzTHgv58HHxKIpI8S3uMthjJmH1E3W0A5Pw1K
 U2YaLzIBfXXfVXhSpVEvpEDFWXE2STWOqT55Hdty8Y2pDFYLriuof+VTvxXPzXvP/Bw9
 0w/sxFb2mIXHrlu2NfI+DVdm0HTox8tDY3rcIfL7vTGl7G+WmzeiFZ84+JojjpMG0h/F
 A3+w==
X-Gm-Message-State: AFqh2krDt4bQih48btR8J63foC/QwMWs7Syhzz3XAc1VyDnVws7RnkJQ
 dlLK1dgM7syRrEqTYvhlJZzqGw8raPNLGOgsdcxDX6SJ2b7DUzsM2WSyXJIym/dnPhxywh6u3SM
 rZBdsAnMSaVUalbCb7lRMjrYwqjIu6EtK7qg=
X-Received: by 2002:a17:907:9a09:b0:85d:3771:18b7 with SMTP id
 kr9-20020a1709079a0900b0085d377118b7mr42740079ejc.70.1674817915957; 
 Fri, 27 Jan 2023 03:11:55 -0800 (PST)
X-Google-Smtp-Source: AMrXdXsScJCcghnX87V9jwJo9iQJunv09UWVsejj9/e/mmA0Ci2VvxS4YOTGCYGulNVAT6QXBdRv0w==
X-Received: by 2002:a17:907:9a09:b0:85d:3771:18b7 with SMTP id
 kr9-20020a1709079a0900b0085d377118b7mr42740046ejc.70.1674817915717; 
 Fri, 27 Jan 2023 03:11:55 -0800 (PST)
Received: from redhat.com ([2.52.137.69]) by smtp.gmail.com with ESMTPSA id
 y14-20020a17090668ce00b0084d3bf4498csm2082705ejr.140.2023.01.27.03.11.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 27 Jan 2023 03:11:55 -0800 (PST)
Date: Fri, 27 Jan 2023 06:11:49 -0500
From: "Michael S. Tsirkin" <mst@redhat.com>
To: Li Zetao <lizetao1@huawei.com>
Message-ID: <20230127061055-mutt-send-email-mst@kernel.org>
References: <20221128021005.232105-1-lizetao1@huawei.com>
 <20221128042945-mutt-send-email-mst@kernel.org>
MIME-Version: 1.0
In-Reply-To: <20221128042945-mutt-send-email-mst@kernel.org>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Mon, Nov 28, 2022 at 05:14:44AM -0500, Michael S. Tsirkin
 wrote: > On Mon, Nov 28, 2022 at 10:10:01AM +0800, Li Zetao wrote: > > This
 patchset fixes similar issue, the root cause of the > > problem [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [170.10.133.124 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [170.10.133.124 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1pLMeK-000OOB-MI
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
 ericvh@gmail.com, netdev@vger.kernel.org, jasowang@redhat.com,
 linux_oss@crudebyte.com, linux-kernel@vger.kernel.org, davem@davemloft.net,
 linux-block@vger.kernel.org, v9fs-developer@lists.sourceforge.net,
 edumazet@google.com, kraxel@redhat.com, stefanha@redhat.com, kuba@kernel.org,
 pbonzini@redhat.com, pabeni@redhat.com,
 virtualization@lists.linux-foundation.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Mon, Nov 28, 2022 at 05:14:44AM -0500, Michael S. Tsirkin wrote:
> On Mon, Nov 28, 2022 at 10:10:01AM +0800, Li Zetao wrote:
> > This patchset fixes similar issue, the root cause of the
> > problem is that the virtqueues are not stopped on error
> > handling path.
> 
> I've been thinking about this.
> Almost all drivers are affected.
> 
> The reason really is that it used to be the right thing to do:
> On legacy pci del_vqs writes 0
> into vq index and this resets the device as a side effect
> (we actually do this multiple times, what e.g. writes of MSI vector
>  after the 1st reset do I have no idea).
> 
> mmio ccw and modern pci don't.
> 
> Given this has been with us for a while I am inlined to look for
> a global solution rather than tweaking each driver.
> 
> Given many drivers are supposed to work on legacy too, we know del_vqs
> includes a reset for many of them. So I think I see a better way to do
> this:
> 
> Add virtio_reset_device_and_del_vqs()
> 
> and convert all drivers to that.
> 
> When doing this, we also need to/can fix a related problem (and related
> to the hardening that Jason Wang was looking into):
> virtio_reset_device is inherently racy: vq interrupts could
> be in flight when we do reset. We need to prevent handlers from firing in
> the window between reset and freeing the irq, so we should first
> free irqs and only then start changing the state by e.g.
> device reset.
> 
> 
> Quite a lot of core work here. Jason are you still looking into
> hardening?
> 

Li Zetao, Jason, any updates. You guys looking into this?


> 
> > Li Zetao (4):
> >   9p: Fix probe failed when modprobe 9pnet_virtio
> >   virtio-mem: Fix probe failed when modprobe virtio_mem
> >   virtio-input: Fix probe failed when modprobe virtio_input
> >   virtio-blk: Fix probe failed when modprobe virtio_blk
> > 
> >  drivers/block/virtio_blk.c    | 1 +
> >  drivers/virtio/virtio_input.c | 1 +
> >  drivers/virtio/virtio_mem.c   | 1 +
> >  net/9p/trans_virtio.c         | 1 +
> >  4 files changed, 4 insertions(+)
> > 
> > -- 
> > 2.25.1



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
