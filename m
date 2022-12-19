Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 957526509E6
	for <lists+v9fs-developer@lfdr.de>; Mon, 19 Dec 2022 11:15:33 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1p7DBD-0000C6-DO;
	Mon, 19 Dec 2022 10:15:31 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <mst@redhat.com>) id 1p7DBC-0000Bn-1X
 for v9fs-developer@lists.sourceforge.net;
 Mon, 19 Dec 2022 10:15:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:In-Reply-To:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=0F60KxR0W9IzjgTzMiPaONsb+3DC5K9NhR1i6GY+9bw=; b=M4/iAfa5xJsxEmM6shx7FHcZSp
 VpJOZ071GKCOCCbwzfeWEnM9ktMYaiVMQsnOfutSMgBwNBVtHMQooI/uPR3b9GNAeBapv35r+FCdO
 SnnIfWvZ+zzMA7jy3jol4MoikRgUzNSR4JsvIVRZLYWnI64nLluXxXCojUaA5dk7B5dU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=0F60KxR0W9IzjgTzMiPaONsb+3DC5K9NhR1i6GY+9bw=; b=KR9kflntmCaz9V7Lxibn6Qsj6s
 ZBSuy8oGMhmbJ1NQBJ3YlW5qrqeUDDhNxjxLE2EAN8AlTSGd9rLBp0iyvQSjWsHbrykDlBnjEEmuU
 cypW2pvllglU4AOvmqfyBBxkZykGwv6HoXjuSULcdC+8fM1uaahW6QlF7BtLTdHAjMr4=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1p7DB8-004Ztw-Nd for v9fs-developer@lists.sourceforge.net;
 Mon, 19 Dec 2022 10:15:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1671444920;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=0F60KxR0W9IzjgTzMiPaONsb+3DC5K9NhR1i6GY+9bw=;
 b=UCyJWuRWj0jWxC73KOYjHtojHh6nXW+7UV36fdidehnR2PGoybgiQHbLO7xspk1LJKiMYW
 4DpH62xFMl/9r/uo51fhf0x6wXc8Std2dAmQdqDLS/XAb8AzTFa26g5vvNQz/u2HKH3+vS
 IW8RfFFNLnp7n8LYPCrhO8/zSRGFJJs=
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com
 [209.85.219.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-15-_3qScbrrMaOzbyV57hxrmg-1; Mon, 19 Dec 2022 05:15:18 -0500
X-MC-Unique: _3qScbrrMaOzbyV57hxrmg-1
Received: by mail-qv1-f69.google.com with SMTP id
 oo9-20020a056214450900b004cfdcb99fa5so5380535qvb.13
 for <v9fs-developer@lists.sourceforge.net>;
 Mon, 19 Dec 2022 02:15:18 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=0F60KxR0W9IzjgTzMiPaONsb+3DC5K9NhR1i6GY+9bw=;
 b=7fcRtoz8wkAG9nj5p+wLXGs/t/qKoiA7zGb9uoOXfW0+9FmwIboXI3PSu/NkWYO0sP
 1dXdUsfmlg+vlWCKu/HkogYnzobPBoK+g/s5iYbb2j973GCDXgNGofjB65TPNYYP3td3
 SMrL3JFP3xmbb0uuN4fa7/zzhwgIkQejRuoyCd1kAMJxYbo/nGb3+B4skV1kxkQo26Z7
 jv7sP7Mb7eYDGl/xCjl+jj/5AMnGumQaVoFDwlWxAapwFW23jbGMlpK6laDWlamruQoQ
 Em9RWvxu7jVKSbgPRmO9qdszXjfNTtx587jOcEbsi6Z8VhVV6u9l5trGteD4BJhr1E9d
 5bDQ==
X-Gm-Message-State: ANoB5plXe5RC2HvCyVxiHWxWy6AvhIVbxJA3t8LQASzj8imOmyX1lPAk
 u3rxh+rYliolNnKwonRFi6/+IKaxcXA0CgRktTxbIxQTr3UizXc9E3MFfj3/XHZ0NM58o2BtXNl
 Nvdd4dbpOyEwxAc5/2TxS5QiLNN9i2IkprjU=
X-Received: by 2002:ac8:4e51:0:b0:3a5:2704:d4bd with SMTP id
 e17-20020ac84e51000000b003a52704d4bdmr74303342qtw.16.1671444918004; 
 Mon, 19 Dec 2022 02:15:18 -0800 (PST)
X-Google-Smtp-Source: AA0mqf5bm5Qnb85eW38Qmkj26T6UAoQXiAZKZbsD/6lF6kYKtBjYMui2UsCvc851kAw1QZmfTvQTLw==
X-Received: by 2002:ac8:4e51:0:b0:3a5:2704:d4bd with SMTP id
 e17-20020ac84e51000000b003a52704d4bdmr74303318qtw.16.1671444917765; 
 Mon, 19 Dec 2022 02:15:17 -0800 (PST)
Received: from redhat.com ([45.144.113.29]) by smtp.gmail.com with ESMTPSA id
 r17-20020a05620a299100b006fb8239db65sm6819951qkp.43.2022.12.19.02.15.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 19 Dec 2022 02:15:17 -0800 (PST)
Date: Mon, 19 Dec 2022 05:15:09 -0500
From: "Michael S. Tsirkin" <mst@redhat.com>
To: Jason Wang <jasowang@redhat.com>
Message-ID: <20221219050716-mutt-send-email-mst@kernel.org>
References: <20221128021005.232105-1-lizetao1@huawei.com>
 <20221128042945-mutt-send-email-mst@kernel.org>
 <CACGkMEtuOk+wyCsvY0uayGAvy926G381PC-csoXVAwCfiKCZQw@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CACGkMEtuOk+wyCsvY0uayGAvy926G381PC-csoXVAwCfiKCZQw@mail.gmail.com>
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
 Content preview:  On Tue, Nov 29, 2022 at 11:37:09AM +0800, Jason Wang wrote:
 > > > > > > Quite a lot of core work here. Jason are you still looking into
 > > hardening? > > Yes, last time we've discussed a solution tha [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [170.10.129.124 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [170.10.129.124 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1p7DB8-004Ztw-Nd
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

On Tue, Nov 29, 2022 at 11:37:09AM +0800, Jason Wang wrote:
> >
> >
> > Quite a lot of core work here. Jason are you still looking into
> > hardening?
> 
> Yes, last time we've discussed a solution that depends on the first
> kick to enable the interrupt handler. But after some thought, it seems
> risky since there's no guarantee that the device work in this way.
> 
> One example is the current vhost_net, it doesn't wait for the kick to
> process the rx packets. Any more thought on this?
> 
> Thanks

Specifically virtio net is careful to call virtio_device_ready
under rtnl lock so buffers are only added after DRIVER_OK.

However we do not need to tie this to kick, this is what I wrote:

> BTW Jason, I had the idea to disable callbacks until driver uses the
> virtio core for the first time (e.g. by calling virtqueue_add* family of
> APIs). Less aggressive than your ideas but I feel it will add security
> to the init path at least.

So not necessarily kick, we can make adding buffers allow the
interrupt.



-- 
MST



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
