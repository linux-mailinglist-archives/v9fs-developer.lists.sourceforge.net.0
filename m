Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 180C763B8CB
	for <lists+v9fs-developer@lfdr.de>; Tue, 29 Nov 2022 04:37:37 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1ozrR8-0005Cb-Cr;
	Tue, 29 Nov 2022 03:37:34 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <jasowang@redhat.com>) id 1ozrR7-0005CV-39
 for v9fs-developer@lists.sourceforge.net;
 Tue, 29 Nov 2022 03:37:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=DjWTah+2EKxcXo7oWQgA5SpjVxywoPSBhBg+WInwWOQ=; b=iF1Zc3szbY1CkIiilGDySvqJoq
 HgmWByOYWdfE9gTqcSdOMNumCDM6WE1ycPTyJe+vuEPAUOu6L3tCqmx2uZRDSr+LcNGUw1DWwE5br
 IvCrFB3j+9sDfsGPjvojbLAKM5aXIbg2fl9LFsX4cIqiQHzDwq4nkflb5rZVMJeGhAbw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=DjWTah+2EKxcXo7oWQgA5SpjVxywoPSBhBg+WInwWOQ=; b=ECTWXmHt69Cj1/qYwSt02vOGtn
 Lk8xEH07MzG8PkIdtAiN7rc6RzxA66D9t30D7sIpDiXD8vHj5KCXUbBOoRuIdUyuKMlJOg3cvULR8
 t2ZKw75ONIYZuhwr11YvZGRJK17P00IXEkgFCKDF2eDkf3h/ydi2sKNqXzJ5e5kfyE5U=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1ozrR2-0005LV-Ic for v9fs-developer@lists.sourceforge.net;
 Tue, 29 Nov 2022 03:37:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1669693042;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=DjWTah+2EKxcXo7oWQgA5SpjVxywoPSBhBg+WInwWOQ=;
 b=gfa7O35WEZiNpPLNiD4W1HnSy6Ac64D4P4fMl/Zml/QvKCZHx3T30QQtfufXzIu/ho3wAe
 q6jyY2C2uqvfAzqFcl5RbguTZjKnPvk8lRhT82blzDNjRkUqrZ0CG5b8Kg/mNh76i0yuVX
 dkg4xJokGvxULV4qVbchNxdLn92bj3U=
Received: from mail-oo1-f71.google.com (mail-oo1-f71.google.com
 [209.85.161.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-486-tWXitC8kNAmaakTIkpwgdg-1; Mon, 28 Nov 2022 22:37:21 -0500
X-MC-Unique: tWXitC8kNAmaakTIkpwgdg-1
Received: by mail-oo1-f71.google.com with SMTP id
 j2-20020a4a7502000000b0049bdd099de9so3040977ooc.0
 for <v9fs-developer@lists.sourceforge.net>;
 Mon, 28 Nov 2022 19:37:21 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=DjWTah+2EKxcXo7oWQgA5SpjVxywoPSBhBg+WInwWOQ=;
 b=lxqt2tuaEJ77rhG0iWJMlgtsAZSBc42+nR27BtkAIXOeIldZtyvNTiIkA29HmXqA5E
 9OKTvsLzXfdlvGmI1Y4PuQSygmQVg2HDDoZh2I4zlGiZ4aPR9G/Rajkz26sXxk9GV8eh
 b5q1CPGHVYoc8FH+Xp/0tIEybYKLrwvTbRzN8rn407DvVMnGycVViE4T9Z9UOIuhoJTE
 bTZ8jkZpDmCYeobxGFr/3nB8kVCAS/Os7yGl7EUbC6IVO7rzBeL2Jy92srAhSfTZkLVP
 PZrSRl9eeAoq3XTV5GWtjLr8ZasG/FE+cYyyp8DX3s/zGbva6TUXGzTUrwQyciOBihaU
 cJ1w==
X-Gm-Message-State: ANoB5pkAL+pup3MDd1plSIMbHmESsfOFn6ijiurmKY26OSwt7u+h0Eu4
 5JgJ8l0+UDRAYysGfZ13MdPYfyk779zQfwI7z2j2eH+E26kKZvMvNXrtLFRZBOPRRfG066WhhYa
 ZCd2R5BQebaQcAnXfx9K0UhP478SbcsdqFxy1EWUaaTLtSYYK0FY=
X-Received: by 2002:a9d:4f07:0:b0:66c:64d6:1bb4 with SMTP id
 d7-20020a9d4f07000000b0066c64d61bb4mr27085055otl.201.1669693040558; 
 Mon, 28 Nov 2022 19:37:20 -0800 (PST)
X-Google-Smtp-Source: AA0mqf6EmIDabO2AHcWjiaME3fUs69AGG9zkVypks4R3pv1UesNWwbFvYcjoNz9Z4Pyc98HwSff6j5CYa7YoG0PBT3E=
X-Received: by 2002:a9d:4f07:0:b0:66c:64d6:1bb4 with SMTP id
 d7-20020a9d4f07000000b0066c64d61bb4mr27085052otl.201.1669693040323; Mon, 28
 Nov 2022 19:37:20 -0800 (PST)
MIME-Version: 1.0
References: <20221128021005.232105-1-lizetao1@huawei.com>
 <20221128042945-mutt-send-email-mst@kernel.org>
In-Reply-To: <20221128042945-mutt-send-email-mst@kernel.org>
From: Jason Wang <jasowang@redhat.com>
Date: Tue, 29 Nov 2022 11:37:09 +0800
Message-ID: <CACGkMEtuOk+wyCsvY0uayGAvy926G381PC-csoXVAwCfiKCZQw@mail.gmail.com>
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
 Content preview:  On Mon, Nov 28,
 2022 at 6:14 PM Michael S. Tsirkin <mst@redhat.com>
 wrote: > > On Mon, Nov 28, 2022 at 10:10:01AM +0800, Li Zetao wrote: > >
 This patchset fixes similar issue, the root cause of the > [...] 
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [170.10.133.124 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [170.10.133.124 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1ozrR2-0005LV-Ic
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

On Mon, Nov 28, 2022 at 6:14 PM Michael S. Tsirkin <mst@redhat.com> wrote:
>
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
> into vq index

into vq address actually?

> and this resets the device as a side effect

I think there's no guarantee for a device to do this.

> (we actually do this multiple times, what e.g. writes of MSI vector
>  after the 1st reset do I have no idea).
>
> mmio ccw and modern pci don't.
>
> Given this has been with us for a while I am inlined to look for
> a global solution rather than tweaking each driver.

But do we still need patches for -stable at least?

>
> Given many drivers are supposed to work on legacy too, we know del_vqs
> includes a reset for many of them. So I think I see a better way to do
> this:
>
> Add virtio_reset_device_and_del_vqs()

What's the difference with the current del_vqs method? Is this something like:

virtio_reset_device();
config->del_vqs();

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

Yes.

>
>
> Quite a lot of core work here. Jason are you still looking into
> hardening?

Yes, last time we've discussed a solution that depends on the first
kick to enable the interrupt handler. But after some thought, it seems
risky since there's no guarantee that the device work in this way.

One example is the current vhost_net, it doesn't wait for the kick to
process the rx packets. Any more thought on this?

Thanks


>
>
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
>



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
