Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id BAFCE651ADA
	for <lists+v9fs-developer@lfdr.de>; Tue, 20 Dec 2022 07:45:02 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1p7WN0-0001Hk-BB;
	Tue, 20 Dec 2022 06:44:58 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <jasowang@redhat.com>) id 1p7WMn-0001Hb-5y
 for v9fs-developer@lists.sourceforge.net;
 Tue, 20 Dec 2022 06:44:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=IwzbCVxJgzqh/hZntLgZPVw/8F+zWvpGjiJvEA/MIXQ=; b=gfqNadml6DfQ1OdbYQQnMaGfij
 K8IyY6loNn1Yh/7TF8+Mi9OWOyxRBLr6SAeZc3UCLM9LXmXW6M261Fb5V7DOVZ2TxsoIRZWrMLwbW
 sRQlqFaGDtyGgICk32sYqWc8tnXkUuUJgWr02i+uZ5NUGbUYUihd9UOvoyFKUU7AN8Do=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=IwzbCVxJgzqh/hZntLgZPVw/8F+zWvpGjiJvEA/MIXQ=; b=aYjEGSquCwhSXTKzGqMXxiyis/
 iQBWUiaHDcV3tH5hEF+cRK313xwyg2Zl5ljRTLKIkPZix9R92bYg8g6ysYEkLfXo7I2aQfVyuxzdM
 Qa+eQrQeRDhgrSyXRlObzJvqGnwUOyyDEV57+kIa7wkH/HVdSAijgPjEIAZt/lHNxp1I=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1p7WMd-0005ui-IG for v9fs-developer@lists.sourceforge.net;
 Tue, 20 Dec 2022 06:44:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1671518669;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=IwzbCVxJgzqh/hZntLgZPVw/8F+zWvpGjiJvEA/MIXQ=;
 b=fOT8LjDr7XUfp+a4RAtm99I9HZKBSmGtUs5DevYXnP1VicAX0sU7YKconJeIBCf2CGBndk
 rQs3jHOX8Y5FbW823MVFZcLo40XNGc7PVkyN8ef81sDUiH4oqTTSodFiv5wI3IJSGCz4Y1
 ustFzTjHLSCfVijSgtmCwflVEg+T2yY=
Received: from mail-ot1-f69.google.com (mail-ot1-f69.google.com
 [209.85.210.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-433-rgNi8mrfM1WDIettQOUp5Q-1; Tue, 20 Dec 2022 01:44:28 -0500
X-MC-Unique: rgNi8mrfM1WDIettQOUp5Q-1
Received: by mail-ot1-f69.google.com with SMTP id
 u11-20020a9d4d8b000000b006782ebb9bf5so2081386otk.11
 for <v9fs-developer@lists.sourceforge.net>;
 Mon, 19 Dec 2022 22:44:27 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=IwzbCVxJgzqh/hZntLgZPVw/8F+zWvpGjiJvEA/MIXQ=;
 b=uRsk05OBmFSwnsZcir0lb7kAZNzjZLvg3CAlhAtJxlespGEBYC5u9q479agJnoAy/u
 H+9gs6eV2nyJA8Ncd94Ms92pYR5BsfaaK9naeYs3ZBqhEkoNoSACMFKO0CDW1eRgPbSR
 8I8yMjyPReDacRTMW+sm/GbfACfaLunprN1S95zrbPxbDDbYAIgQzIw5MaHsENkogtXw
 kx8FOzkqOoK5srToQ6ZC1v57DgYgvlNqRM6sq2YCSNeKZbpHukrTjGRS+Uc5r0w4Q46K
 ryfMq7ZDwmFtcutMs70xRp+xVp+DIpeqEZm5RJucryiCWQnMUFflv4tkR7tzl65klOWl
 z7IA==
X-Gm-Message-State: ANoB5pkKO5pN4th1ahPvTRguVhWEDEb0Tp1ZdDMjDMi2lKYm+IHRRprx
 AmvrZsYEGCHwZZQH7/Gb5mAKNGTfAHPGswgZ1/v2JiQrP/d5ZxZtBiWz2X0rVANZ2V/vum6o4YI
 ZCCM0ri9swbJSZpfymyNUKCD9IfUikm+LK9MzR7DjYaMiE+DY6HA=
X-Received: by 2002:a05:6808:114c:b0:35e:7a42:7ab5 with SMTP id
 u12-20020a056808114c00b0035e7a427ab5mr1228663oiu.280.1671518667332; 
 Mon, 19 Dec 2022 22:44:27 -0800 (PST)
X-Google-Smtp-Source: AA0mqf7jGysDqwGrWJu197Nisc2Stp5MBJuSZWK+fp7URpsNdbjTOdPL95/ws7E6NNNRPis0ciTrq34bL9g/AETi3fk=
X-Received: by 2002:a05:6808:114c:b0:35e:7a42:7ab5 with SMTP id
 u12-20020a056808114c00b0035e7a427ab5mr1228649oiu.280.1671518667107; Mon, 19
 Dec 2022 22:44:27 -0800 (PST)
MIME-Version: 1.0
References: <20221128021005.232105-1-lizetao1@huawei.com>
 <20221128042945-mutt-send-email-mst@kernel.org>
 <CACGkMEtuOk+wyCsvY0uayGAvy926G381PC-csoXVAwCfiKCZQw@mail.gmail.com>
 <20221219050716-mutt-send-email-mst@kernel.org>
In-Reply-To: <20221219050716-mutt-send-email-mst@kernel.org>
From: Jason Wang <jasowang@redhat.com>
Date: Tue, 20 Dec 2022 14:44:16 +0800
Message-ID: <CACGkMEsHojBVQWUDH4L1xiVTjNm3JgkYBppyOHKr8QLUg3=FsQ@mail.gmail.com>
To: "Michael S. Tsirkin" <mst@redhat.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-Spam-Score: -1.6 (-)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Mon, Dec 19,
 2022 at 6:15 PM Michael S. Tsirkin <mst@redhat.com>
 wrote: > > On Tue, Nov 29, 2022 at 11:37:09AM +0800, Jason Wang wrote: >
 > > > > > > > > Quite a lot of core work here. Jason are yo [...] 
 Content analysis details:   (-1.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [170.10.129.124 listed in wl.mailspike.net]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [170.10.129.124 listed in list.dnswl.org]
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
X-Headers-End: 1p7WMd-0005ui-IG
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

On Mon, Dec 19, 2022 at 6:15 PM Michael S. Tsirkin <mst@redhat.com> wrote:
>
> On Tue, Nov 29, 2022 at 11:37:09AM +0800, Jason Wang wrote:
> > >
> > >
> > > Quite a lot of core work here. Jason are you still looking into
> > > hardening?
> >
> > Yes, last time we've discussed a solution that depends on the first
> > kick to enable the interrupt handler. But after some thought, it seems
> > risky since there's no guarantee that the device work in this way.
> >
> > One example is the current vhost_net, it doesn't wait for the kick to
> > process the rx packets. Any more thought on this?
> >
> > Thanks
>
> Specifically virtio net is careful to call virtio_device_ready
> under rtnl lock so buffers are only added after DRIVER_OK.

Right but it only got fixed this year after some code audit.

>
> However we do not need to tie this to kick, this is what I wrote:
>
> > BTW Jason, I had the idea to disable callbacks until driver uses the
> > virtio core for the first time (e.g. by calling virtqueue_add* family of
> > APIs). Less aggressive than your ideas but I feel it will add security
> > to the init path at least.
>
> So not necessarily kick, we can make adding buffers allow the
> interrupt.

Some questions:

1) It introduces a code defined behaviour other than depending on the
spec defined behavior like DRIVER_OK, this will lead extra complexity
in auditing
2) there's no guarantee that the interrupt handler is ready before
virtqueue_add(), or it requires barriers before virtqueue_add() to
make sure the handler is commit

So it looks to me the virtio_device_ready() should be still the
correct way to go:

1) it depends on spec defined behaviour like DRIVER_OK, and it then
can comply with possible future security requirement of drivers
defined in the spec
2) choose to use a new boolean instead of reusing vq->broken
3) enable the harden in driver one by one

Does it make sense?

Thanks

>
>
>
> --
> MST
>



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
