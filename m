Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id DF26263AAD7
	for <lists+v9fs-developer@lfdr.de>; Mon, 28 Nov 2022 15:28:02 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1ozf72-0004hg-SP;
	Mon, 28 Nov 2022 14:28:00 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <linux_oss@crudebyte.com>) id 1ozf71-0004hQ-LZ
 for v9fs-developer@lists.sourceforge.net;
 Mon, 28 Nov 2022 14:27:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Content-Transfer-Encoding:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=6y8qtBVWyVYV+kHOTmBodkRQ5Mtx1AgXX7cehonYoLI=; b=VudIEOR5UNrXOHUwp8FrCjzQdZ
 dNkCpUOt+ifVdyvWBlPsjVkLUiLCpLhvhqovXvOJM9CjWisOSQ7yDBdw6XRiov7AmSgqUP8JFljzW
 Dhg5e0rYsT3SMC5qUbaFw3zGETQdYukxo4pRcWBnj+UCfw8Swu297S7t5sYgZ3NZbUR0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=6y8qtBVWyVYV+kHOTmBodkRQ5Mtx1AgXX7cehonYoLI=; b=P5gOheeHgv64AWztDdQByB65R2
 /sr0YEHljfUzRFhkd+3UvYMV7CezjqOZjGsbGTyq8s/gFPAFH/7k0uq+zlBZfiCIPKk50c3IKMuRM
 xx/U+QeoN4HvOC7p8/6t5i7boI2N1HKg8MHm8jTEsKICHJh2eYX819bg+MfCfvZSLP/E=;
Received: from kylie.crudebyte.com ([5.189.157.229])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1ozf6x-00Gh7t-7S for v9fs-developer@lists.sourceforge.net;
 Mon, 28 Nov 2022 14:27:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=crudebyte.com; s=kylie; h=Content-Type:Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
 Content-ID:Content-Description;
 bh=6y8qtBVWyVYV+kHOTmBodkRQ5Mtx1AgXX7cehonYoLI=; b=MnC6Hi29ZLGxJmlJOrpukroGFu
 Gx+zUdlvsgFJXJnbdbA/MDiHDgEv99YPt72TJOxn00O8JogVMcbmKx50sjdJxj6qBedQyMgH2hYyi
 OsUxLmAz5qct429ffXgYRWfTb6LlqBriGYBWqkDVZlwVYPjslEb35+3gyd+6cGSkw7fOwpqUK7aTP
 pLcdtXpgoxq8yIu84pEAzwuPtlngHNQ83jMe0g/FOR8AOSo8QWTAhqS8NNMVFldMUvlsFzAILbbsv
 +3+Pt8oYGB8ouP5Gni5ql3iACYHNnBQDWO1uuVUHyXt/lpq0ZT9WU4OToD7H7bP/dFj7p0Gf01dM6
 Q/83nsFfNKvPKfLCRnabao9+cQApCUC6Rajzq8ySmdCQVYqKaiun8A1OAPT69fS+/5kBgt91lCZ01
 a6htQUJw/PQytt9gNExLtjAkHoDGj5eLZYsAcUvZV9wG7FXMJWdbU1Off/e3CtqEoDHOcooX9dN4W
 1PyZjyU2Nd8WxJ6HBLO0vvH5wmpAMESfkiCJpOFghmM9dDQQ+rk0Z30lJS8qtAnRfJMfW4/di8vtz
 fpVfMaog+ZGC3J55w9uVSh55VtBDmVfvE6tTp5CTRUrSKx0YIHYQE0y8iRcgqFdv9UUYfTuut0Eg7
 YA1FND8HIdKagQiNtjiLdB3Q+XyIns4lvnvVlHoqA=;
To: mst@redhat.com, jasowang@redhat.com, pbonzini@redhat.com,
 stefanha@redhat.com, axboe@kernel.dk, kraxel@redhat.com, david@redhat.com,
 ericvh@gmail.com, lucho@ionkov.net, asmadeus@codewreck.org,
 davem@davemloft.net, edumazet@google.com, kuba@kernel.org, pabeni@redhat.com, 
 rusty@rustcorp.com.au, Li Zetao <lizetao1@huawei.com>
Date: Mon, 28 Nov 2022 15:27:16 +0100
Message-ID: <12013317.ToeGUHxLYt@silver>
In-Reply-To: <20221128021005.232105-2-lizetao1@huawei.com>
References: <20221128021005.232105-1-lizetao1@huawei.com>
 <20221128021005.232105-2-lizetao1@huawei.com>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Monday, November 28, 2022 3:10:02 AM CET Li Zetao wrote:
 > When doing the following test steps, an error was found: > step 1: modprobe
 9pnet_virtio succeeded > # modprobe 9pnet_virtio <-- OK > > st [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Headers-End: 1ozf6x-00Gh7t-7S
Subject: Re: [V9fs-developer] [PATCH 1/4] 9p: Fix probe failed when modprobe
 9pnet_virtio
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
From: Christian Schoenebeck via V9fs-developer
 <v9fs-developer@lists.sourceforge.net>
Reply-To: Christian Schoenebeck <linux_oss@crudebyte.com>
Cc: netdev@vger.kernel.org, lizetao1@huawei.com, linux-kernel@vger.kernel.org,
 virtualization@lists.linux-foundation.org, linux-block@vger.kernel.org,
 v9fs-developer@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Monday, November 28, 2022 3:10:02 AM CET Li Zetao wrote:
> When doing the following test steps, an error was found:
>   step 1: modprobe 9pnet_virtio succeeded
>     # modprobe 9pnet_virtio      <-- OK
> 
>   step 2: fault injection in sysfs_create_file()
>     # modprobe -r 9pnet_virtio   <-- OK
>     # ...
>       FAULT_INJECTION: forcing a failure.
>       name failslab, interval 1, probability 0, space 0, times 0
>       CPU: 0 PID: 3790 Comm: modprobe Tainted: G        W
>       6.1.0-rc6-00285-g6a1e40c4b995-dirty #108
>       Hardware name: QEMU Standard PC (i440FX + PIIX, 1996)
>       Call Trace:
>        <TASK>
>        ...
>        should_failslab+0xa/0x20
>        ...
>        sysfs_create_file_ns+0x130/0x1d0
>        p9_virtio_probe+0x662/0xb30 [9pnet_virtio]
>        virtio_dev_probe+0x608/0xae0
>        ...
>        </TASK>
>       9pnet_virtio: probe of virtio3 failed with error -12
> 
>   step 3: modprobe virtio_net failed
>     # modprobe 9pnet_virtio       <-- failed
>       9pnet_virtio: probe of virtio3 failed with error -2
> 
> The root cause of the problem is that the virtqueues are not
> stopped on the error handling path when sysfs_create_file()
> fails in p9_virtio_probe(), resulting in an error "-ENOENT"
> returned in the next modprobe call in setup_vq().
> 
> virtio_pci_modern_device uses virtqueues to send or
> receive message, and "queue_enable" records whether the
> queues are available. In vp_modern_find_vqs(), all queues
> will be selected and activated, but once queues are enabled
> there is no way to go back except reset.
> 
> Fix it by reset virtio device on error handling path. After
> virtio_find_single_vq() succeeded, all virtqueues should be
> stopped on error handling path.
> 
> Fixes: 1fcf0512c9c8 ("virtio_pci: modern driver")
> Signed-off-by: Li Zetao <lizetao1@huawei.com>
> ---

As others said, comment should probably be adjusted, apart from that:

Reviewed-by: Christian Schoenebeck <linux_oss@crudebyte.com>

>  net/9p/trans_virtio.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/net/9p/trans_virtio.c b/net/9p/trans_virtio.c
> index e757f0601304..39933187284b 100644
> --- a/net/9p/trans_virtio.c
> +++ b/net/9p/trans_virtio.c
> @@ -668,6 +668,7 @@ static int p9_virtio_probe(struct virtio_device *vdev)
>  out_free_tag:
>  	kfree(tag);
>  out_free_vq:
> +	virtio_reset_device(vdev);
>  	vdev->config->del_vqs(vdev);
>  out_free_chan:
>  	kfree(chan);
> 






_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
