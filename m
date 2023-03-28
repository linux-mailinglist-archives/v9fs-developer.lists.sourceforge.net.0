Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E4C126CB39C
	for <lists+v9fs-developer@lfdr.de>; Tue, 28 Mar 2023 04:14:05 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1pgyqa-0004uB-94;
	Tue, 28 Mar 2023 02:14:03 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <asmadeus@codewreck.org>) id 1pgyqY-0004tv-8L
 for v9fs-developer@lists.sourceforge.net;
 Tue, 28 Mar 2023 02:14:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=wqMNk37v7ep6rr1jhz7sYBORs1dIt3NXHYcIbaQ7jIg=; b=F3WqNfAjWszprEKWd4hq1mcE1o
 3MMEATev/l9GHEfBB47k/L4zNUNVgaInTWYU9xXxF4v/PjttxOrO/yOKe68OlpCQUBzl0OQQeMzrp
 en7GVkY0kWdst/5rnf8KEeDHKAyZSXM4pubvHrZN2flEDCXLyo60M+lv6pwIjVukNlXQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=wqMNk37v7ep6rr1jhz7sYBORs1dIt3NXHYcIbaQ7jIg=; b=Zj1CI3CXt3g9YPIo2SxOOZQBuX
 6PeYlCqq9SA7R1CiqUfW18sRaTVstQU5GQPywp6nQ9epeYuCa6ftlf4ifdsFaHP9agsBGAP3gkZ2f
 v8o6e21EoQrhFJHk05IDDXYcxxQZJS0uaF0nekBJtc+Jr1uB1LdsVFsuyC4kb9PbUibo=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1pgyqW-0002ml-8n for v9fs-developer@lists.sourceforge.net;
 Tue, 28 Mar 2023 02:14:01 +0000
Received: by nautica.notk.org (Postfix, from userid 108)
 id 05ABDC01D; Tue, 28 Mar 2023 04:13:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1679969634; bh=wqMNk37v7ep6rr1jhz7sYBORs1dIt3NXHYcIbaQ7jIg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=JaJ9nxJiUyIPy8ueCwiEx/oeUQU9Le68MAl7WiYoUySqzr/SBKQ9DFwCvyQ0cK4wJ
 vm/Q/DJhKOMMTElGC6JWubgHWfHf4NqIolq6uhzwmxd6lz9J6R4HABcEY9msuO4Uim
 pAkTecob9/2RSDwpOzp+LfNvzQO4eJsSC2QXVR6VfxgjoOl0+tJTwueKCDCHbX2d7Z
 WCEkGgdx8g9olpLET/6ZMPqvqwKYA++G0dHeVn3CI95QUFx/WV23tAlS3baZFOavp0
 YDUib7Y2blGbb6rWhbebdS6l97tr6xeY+qX/YoRziQYqeRGIZTc2e91XLu7B6dP5V6
 DKFWSJgIruyxg==
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on nautica.notk.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=UNPARSEABLE_RELAY
 autolearn=unavailable version=3.3.2
Received: from odin.codewreck.org (localhost [127.0.0.1])
 by nautica.notk.org (Postfix) with ESMTPS id 7569FC009;
 Tue, 28 Mar 2023 04:13:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1679969633; bh=wqMNk37v7ep6rr1jhz7sYBORs1dIt3NXHYcIbaQ7jIg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=xPW62TJvFSHPl3Gv9JQ8HAfCEesqn8fdPlrV/CljUx8VPMf1mGBfubqVsMbbBLDP1
 k/nyIvbgcrXG1s6YDRs3CA0dcn2CAUE1rBN2WGUpmWHfJ2yUYVKV3K7GDV0camJXxY
 uJTGxrpr4i6TbwJtSv/zBV8oLhJWFv9ShJwHjSKFOHAe376n/xtBtayDrsxdKYOgv1
 RDxRmc5C8zR2V6Fj69hCPWk1hi+UFbd/7EzKdE923DKvf5XqwU0J5t40q/ie2PQR+x
 GbwSmpsScKd8D44OkV+Vo3YLetFhBfoxgMG197N335V0aiPlAWRN8JCmlS8YG97Q/d
 GvX97CEcOLOog==
Received: from localhost (odin.codewreck.org [local])
 by odin.codewreck.org (OpenSMTPD) with ESMTPA id c6bb0979;
 Tue, 28 Mar 2023 02:13:48 +0000 (UTC)
Date: Tue, 28 Mar 2023 11:13:32 +0900
From: Dominique Martinet <asmadeus@codewreck.org>
To: Albert Huang <huangjie.albert@bytedance.com>,
 "Michael S. Tsirkin" <mst@redhat.com>
Message-ID: <ZCJNTBQLZeyLBKKB@codewreck.org>
References: <20230325105633.58592-1-huangjie.albert@bytedance.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230325105633.58592-1-huangjie.albert@bytedance.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi Michael, Albert, Albert Huang wrote on Sat, Mar 25, 2023
 at 06:56:33PM +0800: > in virtio_net, if we disable the napi_tx, when we
 triger a tx interrupt, > the vq->event_triggered will be set to true. It will
 no longer [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
X-Headers-End: 1pgyqW-0002ml-8n
Subject: [V9fs-developer] 9p regression (Was: [PATCH v2] virtio_ring: don't
 update event idx on get_buf)
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
Cc: Eric Van Hensbergen <ericvh@gmail.com>, Jason Wang <jasowang@redhat.com>,
 Christian Schoenebeck <linux_oss@crudebyte.com>, linux-kernel@vger.kernel.org,
 virtualization@lists.linux-foundation.org,
 Luis Chamberlain <mcgrof@kernel.org>, v9fs-developer@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Hi Michael, Albert,

Albert Huang wrote on Sat, Mar 25, 2023 at 06:56:33PM +0800:
> in virtio_net, if we disable the napi_tx, when we triger a tx interrupt,
> the vq->event_triggered will be set to true. It will no longer be set to
> false. Unless we explicitly call virtqueue_enable_cb_delayed or
> virtqueue_enable_cb_prepare.

This patch (commited as 35395770f803 ("virtio_ring: don't update event
idx on get_buf") in next-20230327 apparently breaks 9p, as reported by
Luis in https://lkml.kernel.org/r/ZCI+7Wg5OclSlE8c@bombadil.infradead.org

I've just hit had a look at recent patches[1] and reverted this to test
and I can mount again, so I'm pretty sure this is the culprit, but I
didn't look at the content at all yet so cannot advise further.
It might very well be that we need some extra handling for 9p
specifically that can be added separately if required.

[1] git log 0ec57cfa721fbd36b4c4c0d9ccc5d78a78f7fa35..HEAD drivers/virtio/


This can be reproduced with a simple mount, run qemu with some -virtfs
argument and `mount -t 9p -o debug=65535 tag mountpoint` will hang after
these messages:
9pnet: -- p9_virtio_request (83): 9p debug: virtio request
9pnet: -- p9_virtio_request (83): virtio request kicked

So I suspect we're just not getting a callback.


I'll have a closer look after work, but any advice meanwhile will be
appreciated!
(I'm sure Luis would also like a temporary drop from -next until
this is figured out, but I'll leave this up to you)


> 
> If we disable the napi_tx, it will only be called when the tx ring
> buffer is relatively small.
> 
> Because event_triggered is true. Therefore, VRING_AVAIL_F_NO_INTERRUPT or
> VRING_PACKED_EVENT_FLAG_DISABLE will not be set. So we update
> vring_used_event(&vq->split.vring) or vq->packed.vring.driver->off_wrap
> every time we call virtqueue_get_buf_ctx. This will bring more interruptions.
> 
> To summarize:
> 1) event_triggered was set to true in vring_interrupt()
> 2) after this nothing will happen for virtqueue_disable_cb() so
>    VRING_AVAIL_F_NO_INTERRUPT is not set in avail_flags_shadow
> 3) virtqueue_get_buf_ctx_split() will still think the cb is enabled
>    then it tries to publish new event
> 
> To fix, if event_triggered is set to true, do not update
> vring_used_event(&vq->split.vring) or vq->packed.vring.driver->off_wrap
> 
> Tested with iperf:
> iperf3 tcp stream:
> vm1 -----------------> vm2
> vm2 just receives tcp data stream from vm1, and sends the ack to vm1,
> there are many tx interrupts in vm2.
> but without event_triggered there are just a few tx interrupts.
> 
> Fixes: 8d622d21d248 ("virtio: fix up virtio_disable_cb")
> Signed-off-by: Albert Huang <huangjie.albert@bytedance.com>
> Message-Id: <20230321085953.24949-1-huangjie.albert@bytedance.com>
> Signed-off-by: Michael S. Tsirkin <mst@redhat.com>
> ---
>  drivers/virtio/virtio_ring.c | 6 ++++--
>  1 file changed, 4 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/virtio/virtio_ring.c b/drivers/virtio/virtio_ring.c
> index cbeeea1b0439..1c36fa477966 100644
> --- a/drivers/virtio/virtio_ring.c
> +++ b/drivers/virtio/virtio_ring.c
> @@ -914,7 +914,8 @@ static void *virtqueue_get_buf_ctx_split(struct virtqueue *_vq,
>  	/* If we expect an interrupt for the next entry, tell host
>  	 * by writing event index and flush out the write before
>  	 * the read in the next get_buf call. */
> -	if (!(vq->split.avail_flags_shadow & VRING_AVAIL_F_NO_INTERRUPT))
> +	if (unlikely(!(vq->split.avail_flags_shadow & VRING_AVAIL_F_NO_INTERRUPT) &&
> +		     !vq->event_triggered))
>  		virtio_store_mb(vq->weak_barriers,
>  				&vring_used_event(&vq->split.vring),
>  				cpu_to_virtio16(_vq->vdev, vq->last_used_idx));
> @@ -1744,7 +1745,8 @@ static void *virtqueue_get_buf_ctx_packed(struct virtqueue *_vq,
>  	 * by writing event index and flush out the write before
>  	 * the read in the next get_buf call.
>  	 */
> -	if (vq->packed.event_flags_shadow == VRING_PACKED_EVENT_FLAG_DESC)
> +	if (unlikely(vq->packed.event_flags_shadow == VRING_PACKED_EVENT_FLAG_DESC &&
> +		     !vq->event_triggered))
>  		virtio_store_mb(vq->weak_barriers,
>  				&vq->packed.vring.driver->off_wrap,
>  				cpu_to_le16(vq->last_used_idx));


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
