Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4371A63A519
	for <lists+v9fs-developer@lfdr.de>; Mon, 28 Nov 2022 10:30:55 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1ozaTU-00085f-MN;
	Mon, 28 Nov 2022 09:30:52 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <mst@redhat.com>) id 1ozaSd-0007zM-OC
 for v9fs-developer@lists.sourceforge.net;
 Mon, 28 Nov 2022 09:29:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:In-Reply-To:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=yXe5/Gs5NMc9hqQvF6Q+od4uwWeU4d6k98E6eiWSSHg=; b=V9rL2/PCdON2oYFVHcxm8IdF2D
 58xcus2zH8fmC0h8+ZpeJpTTgdT9DFs9gegJM5pIwTns7TPxOWt7Xq9Jucs3/cusZvhWakPNDFh5z
 TfAEtsEdcAaQ83A9oyGZ2St0412mMIfuTqDymbiocMHP2yqJLTnVSO6Yzpk3YFnvVEF4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=yXe5/Gs5NMc9hqQvF6Q+od4uwWeU4d6k98E6eiWSSHg=; b=TK7ZrmuH1+eNi/2liFXVpvcaAE
 meLuP39YaIlilvVWEUm4Uy576fQy+Q3L4iQHl43tYfJWw7iAMYlLT7i3EhGfPCJZn7Odi2KMuKvYU
 ovf1PrHgvWGUdBN4n8fq6WXMo4LGf17MUHyKxOFa8E9NcGoJBhYK4ts1F/vu4ePl1i5Y=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1ozaSU-0006al-3R for v9fs-developer@lists.sourceforge.net;
 Mon, 28 Nov 2022 09:29:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1669627783;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=yXe5/Gs5NMc9hqQvF6Q+od4uwWeU4d6k98E6eiWSSHg=;
 b=XbbuDL3BjwfV4Vmwn0kxV6whNzsWb0Z95Dx4P/mWMucnyMwbzBtLjy93AtEkcx/vQkBWHL
 NzQPbqpbaoc/riiiLcLkq6C9WMooENQ0rCk7dlJ4aNL1fXOVj+ezvws0K5Ye8kZRK9OZUP
 QJmtQ64TTPLRV6+FLjfEEHEMSCT4Ugo=
Received: from mail-wm1-f70.google.com (mail-wm1-f70.google.com
 [209.85.128.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-277-cZi1d1E0MFiz64TwzdLRew-1; Mon, 28 Nov 2022 04:29:42 -0500
X-MC-Unique: cZi1d1E0MFiz64TwzdLRew-1
Received: by mail-wm1-f70.google.com with SMTP id
 v125-20020a1cac83000000b003cfa148576dso6066792wme.3
 for <v9fs-developer@lists.sourceforge.net>;
 Mon, 28 Nov 2022 01:29:42 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=yXe5/Gs5NMc9hqQvF6Q+od4uwWeU4d6k98E6eiWSSHg=;
 b=it6aYCOXCA46CT/nxrv0MYKiEaC9Pqcnfr2gQ3qNY6+FB3/4ZV2JBdRixNZKwWNFih
 0lbWYwHRr8q81zAit8Cu2ltJTiA7Gp3wtUmPEusSCxIw+uXi1P53h3fc+VC/OPfTJ5RL
 Tx3Gb6RvmqxTifuRkjXdvJVlfAQ/MRufzub0fpmor0eKDIs1MWAb3VWz4GJYDnqUvcqn
 X6dqmDqxwsKGhk1gQPcWMrx4ObF7MhYnv6LJ5JhgjbiE8u2Qjqp88G9m4yq0o2I4rZvE
 d7bYnCV3o5TdzpwegE3J0Ny7GGwDzNbN6o1T3QOo+cioJ4Lon31j87VxnQ7+OD3XZe0S
 nbig==
X-Gm-Message-State: ANoB5pmtWh5S+5SPslYZLVormRjhTPbbLzvsIXvDNsV+XxqvdnYnToWa
 Yi1cd7huurFl4AojA/na3qDQfFtc9lBFMhIYN6ph1On3rZXELhDwctEholsKdgl1+l6RB2zlVIY
 9u2C9pgmMDrkxanxnDYuugmRNzAik1Ht8Qf4=
X-Received: by 2002:adf:ebc6:0:b0:241:c6d8:be83 with SMTP id
 v6-20020adfebc6000000b00241c6d8be83mr22842210wrn.454.1669627781379; 
 Mon, 28 Nov 2022 01:29:41 -0800 (PST)
X-Google-Smtp-Source: AA0mqf5NNWLiFYkS/4BWx2K5W3KIsae1W7cB7QkH/0YG2DaPbKUxNFXJ8iBUflEeJZH3AcNSktTgUw==
X-Received: by 2002:adf:ebc6:0:b0:241:c6d8:be83 with SMTP id
 v6-20020adfebc6000000b00241c6d8be83mr22842182wrn.454.1669627781095; 
 Mon, 28 Nov 2022 01:29:41 -0800 (PST)
Received: from redhat.com ([2.52.149.178]) by smtp.gmail.com with ESMTPSA id
 z14-20020a7bc7ce000000b003cf78aafdd7sm14055513wmk.39.2022.11.28.01.29.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 28 Nov 2022 01:29:40 -0800 (PST)
Date: Mon, 28 Nov 2022 04:29:36 -0500
From: "Michael S. Tsirkin" <mst@redhat.com>
To: Li Zetao <lizetao1@huawei.com>
Message-ID: <20221128042649-mutt-send-email-mst@kernel.org>
References: <20221128021005.232105-1-lizetao1@huawei.com>
 <20221128021005.232105-4-lizetao1@huawei.com>
MIME-Version: 1.0
In-Reply-To: <20221128021005.232105-4-lizetao1@huawei.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Mon, Nov 28, 2022 at 10:10:04AM +0800, Li Zetao wrote:
 > When doing the following test steps, an error was found: > step 1: modprobe
 virtio_input succeeded > # modprobe virtio_input <-- OK > > step [...] 
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [170.10.129.124 listed in wl.mailspike.net]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [170.10.129.124 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1ozaSU-0006al-3R
Subject: Re: [V9fs-developer] [PATCH 3/4] virtio-input: Fix probe failed
 when modprobe virtio_input
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

On Mon, Nov 28, 2022 at 10:10:04AM +0800, Li Zetao wrote:
> When doing the following test steps, an error was found:
>   step 1: modprobe virtio_input succeeded
>     # modprobe virtio_input      <-- OK
> 
>   step 2: fault injection in input_allocate_device()
>     # modprobe -r virtio_input   <-- OK
>     # ...
>       CPU: 0 PID: 4260 Comm: modprobe Tainted: G        W
>       6.1.0-rc6-00285-g6a1e40c4b995-dirty #109
>       Hardware name: QEMU Standard PC (i440FX + PIIX, 1996),
>       Call Trace:
>        <TASK>
>        should_fail.cold+0x5/0x1f
>        ...
>        kmalloc_trace+0x27/0xa0
>        input_allocate_device+0x43/0x280
>        virtinput_probe+0x23b/0x1648 [virtio_input]
>        ...
>        </TASK>
>       virtio_input: probe of virtio5 failed with error -12
> 
>   step 3: modprobe virtio_net failed
>     # modprobe virtio_input       <-- failed
>       virtio_input: probe of virtio1 failed with error -2
> 
> The root cause of the problem is that the virtqueues are not
> stopped on the error handling path when input_allocate_device()
> fails in virtinput_probe(), resulting in an error "-ENOENT"
> returned in the next modprobe call in setup_vq().
> 
> virtio_pci_modern_device uses virtqueues to send or
> receive message, and "queue_enable" records whether the
> queues are available. In vp_modern_find_vqs(), all queues
> will be selected and activated, but once queues are enabled
> there is no way to go back except reset.
> 
> Fix it by reset virtio device on error handling path. After
> virtinput_init_vqs() succeeded, all virtqueues should be
> stopped on error handling path.
> 
> Fixes: 1fcf0512c9c8 ("virtio_pci: modern driver")

Probably 271c865161c57cfabca45b93eaa712b19da365bc


> Signed-off-by: Li Zetao <lizetao1@huawei.com>
> ---
>  drivers/virtio/virtio_input.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/virtio/virtio_input.c b/drivers/virtio/virtio_input.c
> index 3aa46703872d..f638f1cd3531 100644
> --- a/drivers/virtio/virtio_input.c
> +++ b/drivers/virtio/virtio_input.c
> @@ -330,6 +330,7 @@ static int virtinput_probe(struct virtio_device *vdev)
>  err_mt_init_slots:
>  	input_free_device(vi->idev);
>  err_input_alloc:
> +	virtio_reset_device(vdev);
>  	vdev->config->del_vqs(vdev);
>  err_init_vq:
>  	kfree(vi);
> -- 
> 2.25.1



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
