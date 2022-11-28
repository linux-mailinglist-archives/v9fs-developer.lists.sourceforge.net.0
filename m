Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 67DEE63A2CD
	for <lists+v9fs-developer@lfdr.de>; Mon, 28 Nov 2022 09:23:07 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1ozZPs-0006z7-Fl;
	Mon, 28 Nov 2022 08:23:04 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <david@redhat.com>) id 1ozZPn-0006yo-4N
 for v9fs-developer@lists.sourceforge.net;
 Mon, 28 Nov 2022 08:22:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 Subject:From:References:Cc:To:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=08ACbZbm+f4rrW15utHPQxye3zrEyxUiKLzM8Bx4A7A=; b=O2yzbFdNCHMxfSj8nYuhho1Pp9
 RF32UvMbqwiV+xqTTouAbs5A6bYQQUHarO3MwFhfy2m5n2iZWDRU2QpPegQFUnocVaJJA16ozyJmc
 ZYrQ4PRtLUEFOX+/ovMb6gWzco07a77VKB4R0wGtq3iFPj6LFekM1bBpSFxGWPW4If2I=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:Subject:From:
 References:Cc:To:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=08ACbZbm+f4rrW15utHPQxye3zrEyxUiKLzM8Bx4A7A=; b=R/AMuSGbOiDjuvq7dvUaG0gU/e
 nnuNL2dlqlkcjyzqQLi0icP4K+zerGjifEBePNMxe8J0tdxqbsYYY9EGkfW3ORVYl364Zjm7afZRM
 nLTbSO2sSaFSRGVaCXE6TeQJVfWYYi0KbRBmKW+9sYiBlKowbt9g+tNkhbW3WYvhmpzg=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1ozZPg-00GMzm-D2 for v9fs-developer@lists.sourceforge.net;
 Mon, 28 Nov 2022 08:22:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1669623765;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=08ACbZbm+f4rrW15utHPQxye3zrEyxUiKLzM8Bx4A7A=;
 b=SUpPF0G0e0NB6CO9x3nq+Yil42xUzUucTVYoICoWAKVBZXB6GZCF4q+JV1xwPqS+XXJgCr
 FBYv7O6jz8dwSXfqRJvq/Me26avZCA98vDz+Jcso4s7mhzPHbRTkMPcjrik0HtcPv27BYI
 TBZ5xNPvhSE06W7qchDyJteVfqefsu8=
Received: from mail-wr1-f69.google.com (mail-wr1-f69.google.com
 [209.85.221.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-633-C-3KIpO8Nf2wEDHbbpVyWA-1; Mon, 28 Nov 2022 03:22:44 -0500
X-MC-Unique: C-3KIpO8Nf2wEDHbbpVyWA-1
Received: by mail-wr1-f69.google.com with SMTP id
 k1-20020adfb341000000b0024215e0f486so360585wrd.21
 for <v9fs-developer@lists.sourceforge.net>;
 Mon, 28 Nov 2022 00:22:44 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:in-reply-to:subject:organization:from
 :content-language:references:cc:to:user-agent:mime-version:date
 :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=08ACbZbm+f4rrW15utHPQxye3zrEyxUiKLzM8Bx4A7A=;
 b=7NXWXihhe0LCea2fxweHC6pOM3qcy3TnkRG/B1nqa/0YPCNWkPFI53gHAhXPuPWKdF
 g0TJRyM0TomoIlIQcK0VwpEH6eO88vg8xPTzi7hPINN8UiqNi9Cd0BgYKtU+Dn8f67RQ
 /N397ZAfxmUnVcjD2gBct6kKuuvcV8veybQM6eOrLUNW1ZGMxsBmOeqiTTarQ0HQH68C
 DeZG4rTLMXngKP4dgfL/FxDPbdnM4RtvsllWAfLYizmEnWULABIOtCfn+jYXMzlWDI+x
 rhJUC9pideJdKzAL0LIAmevS3xszIq6iiWCrq3Sg3IGFLxUNFfgiDfVgkHyejRqybUWB
 CxpQ==
X-Gm-Message-State: ANoB5pl4OulRL+H1gEobDcxFlhLbuWjRYFJWsyqiOQCj6aGlHt3+Jl0Y
 tJePTqeYw12/qXx42nNJF9EMQnO+gXPwFo7pSTGmCLKJe3u6SMek4kmIkyHU5ud69S60WbuoQB8
 UFQs6PmS32IkN3VcGiis6uolqz0t3VID4A7o=
X-Received: by 2002:adf:eb8a:0:b0:22e:31b2:ecb9 with SMTP id
 t10-20020adfeb8a000000b0022e31b2ecb9mr30942289wrn.693.1669623763100; 
 Mon, 28 Nov 2022 00:22:43 -0800 (PST)
X-Google-Smtp-Source: AA0mqf50AS2I3KjwPnQrek1jGvg+yRK5+MF+33CkcubpJsA9CW/SHNSir8fcEWGsp4QA6DOlcXT2PQ==
X-Received: by 2002:adf:eb8a:0:b0:22e:31b2:ecb9 with SMTP id
 t10-20020adfeb8a000000b0022e31b2ecb9mr30942267wrn.693.1669623762803; 
 Mon, 28 Nov 2022 00:22:42 -0800 (PST)
Received: from ?IPV6:2003:cb:c702:9000:3d6:e434:f8b4:80cf?
 (p200300cbc702900003d6e434f8b480cf.dip0.t-ipconnect.de.
 [2003:cb:c702:9000:3d6:e434:f8b4:80cf])
 by smtp.gmail.com with ESMTPSA id
 l19-20020a056000023300b00241de5be3f0sm10082939wrz.37.2022.11.28.00.22.41
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 28 Nov 2022 00:22:42 -0800 (PST)
Message-ID: <af62e7fe-d848-acb8-ca77-cdf01022b8de@redhat.com>
Date: Mon, 28 Nov 2022 09:22:40 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.1
To: Li Zetao <lizetao1@huawei.com>, mst@redhat.com, jasowang@redhat.com,
 pbonzini@redhat.com, stefanha@redhat.com, axboe@kernel.dk,
 kraxel@redhat.com, ericvh@gmail.com, lucho@ionkov.net,
 asmadeus@codewreck.org, linux_oss@crudebyte.com, davem@davemloft.net,
 edumazet@google.com, kuba@kernel.org, pabeni@redhat.com,
 rusty@rustcorp.com.au
References: <20221128021005.232105-1-lizetao1@huawei.com>
 <20221128021005.232105-3-lizetao1@huawei.com>
From: David Hildenbrand <david@redhat.com>
Organization: Red Hat
In-Reply-To: <20221128021005.232105-3-lizetao1@huawei.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-Spam-Score: -0.5 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 28.11.22 03:10, Li Zetao wrote: > When doing the following
 test steps, an error was found: > step 1: modprobe virtio_mem succeeded >
 # modprobe virtio_mem <-- OK > > step 2: fault injection in virt [...] 
 Content analysis details:   (-0.5 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [170.10.129.124 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [170.10.129.124 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.3 NICE_REPLY_A           Looks like a legit reply (A)
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1ozZPg-00GMzm-D2
Subject: Re: [V9fs-developer] [PATCH 2/4] virtio-mem: Fix probe failed when
 modprobe virtio_mem
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
Cc: linux-block@vger.kernel.org, v9fs-developer@lists.sourceforge.net,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 virtualization@lists.linux-foundation.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On 28.11.22 03:10, Li Zetao wrote:
> When doing the following test steps, an error was found:
>    step 1: modprobe virtio_mem succeeded
>      # modprobe virtio_mem      <-- OK
> 
>    step 2: fault injection in virtio_mem_init()
>      # modprobe -r virtio_mem   <-- OK
>      # ...
>        CPU: 0 PID: 1837 Comm: modprobe Not tainted
>        6.1.0-rc6-00285-g6a1e40c4b995-dirty
>        Hardware name: QEMU Standard PC (i440FX + PIIX, 1996)
>        Call Trace:
>         <TASK>
>         should_fail.cold+0x5/0x1f
>         ...
>         virtio_mem_init_hotplug+0x9ae/0xe57 [virtio_mem]
>         virtio_mem_init.cold+0x327/0x339 [virtio_mem]
>         virtio_mem_probe+0x48e/0x910 [virtio_mem]
>         virtio_dev_probe+0x608/0xae0
>         ...
>         </TASK>
>        virtio_mem virtio4: could not reserve device region
>        virtio_mem: probe of virtio4 failed with error -16
> 
>    step 3: modprobe virtio_net failed

virtio_net ?

>      # modprobe virtio_mem       <-- failed
>        virtio_mem: probe of virtio4 failed with error -16
> 
> The root cause of the problem is that the virtqueues are not
> stopped on the error handling path when virtio_mem_init()
> fails in virtio_mem_probe(), resulting in an error "-ENOENT"
> returned in the next modprobe call in setup_vq().
> 
> virtio_pci_modern_device uses virtqueues to send or
> receive message, and "queue_enable" records whether the
> queues are available. In vp_modern_find_vqs(), all queues
> will be selected and activated, but once queues are enabled
> there is no way to go back except reset.
> 
> Fix it by reset virtio device on error handling path. After
> virtio_mem_init_vq() succeeded, all virtqueues should be
> stopped on error handling path.
> 
> Fixes: 1fcf0512c9c8 ("virtio_pci: modern driver")

That commit is from 2014. virtio-mem was merged in 2020

Fixes: 5f1f79bbc9e2 ("virtio-mem: Paravirtualized memory hotplug")

> Signed-off-by: Li Zetao <lizetao1@huawei.com>
> ---
>   drivers/virtio/virtio_mem.c | 1 +
>   1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/virtio/virtio_mem.c b/drivers/virtio/virtio_mem.c
> index 0c2892ec6817..c7f09c2ce982 100644
> --- a/drivers/virtio/virtio_mem.c
> +++ b/drivers/virtio/virtio_mem.c
> @@ -2793,6 +2793,7 @@ static int virtio_mem_probe(struct virtio_device *vdev)
>   
>   	return 0;
>   out_del_vq:
> +	virtio_reset_device(vdev);
>   	vdev->config->del_vqs(vdev);
>   out_free_vm:
>   	kfree(vm);


Apart from that

Reviewed-by: David Hildenbrand <david@redhat.com>

-- 
Thanks,

David / dhildenb



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
