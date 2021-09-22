Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 81876414840
	for <lists+v9fs-developer@lfdr.de>; Wed, 22 Sep 2021 13:56:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:References:In-Reply-To:
	Message-ID:Date:To:Sender:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=TO3TRU5QeQJuLc+JfYBHTd1Iu+bXOWPEioYg2KNNPl8=; b=MrsoFCHJrBTqy+R9pYLbEDAxp
	MRsQLjJb943sodhIB/PhRa8OYpmVdV9CvP8w/6WMyAlhQSk7qIlG2/w2WQNUqSm2AzNqQup/c6vpG
	Oll2Y0vjnrwqwJjhRbybgg3j/NBXv9ZtEvyaBDHmak92JcKB/U9LVDVCU1iFXwpoWCobc=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1mT0rE-0004Sr-HK; Wed, 22 Sep 2021 11:56:12 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <linux_oss@crudebyte.com>) id 1mT0rD-0004Sh-7z
 for v9fs-developer@lists.sourceforge.net; Wed, 22 Sep 2021 11:56:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Content-Transfer-Encoding:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=OKfVFxrpko5QMAAtDRTPC75OYX8uz3xyIWxgAq8hnf8=; b=Mxy2MBg9LRGLhMMMCRtaftYA4l
 BYWeG7LKAEREA7SKlIH9uD7A2aoMvnAnF8Kc/nY79FWgZkJDa5DGsWrYQMur7QOhu5Ksgb81TDznn
 UodlSNsF8WQ+lmdxtTZ4SX42PCPibjnxnfxrqnVvI1XOsYwFhHW0e9Q6nJN65+MyuVSA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=OKfVFxrpko5QMAAtDRTPC75OYX8uz3xyIWxgAq8hnf8=; b=NbI29Tw8oK9CH0/x+r9PAe+Mjm
 ie/hTZhC9MZBUvLXI2fe3EZRoJ0dOV5EpbX4QC1/X0oZ4eGl0tSU+8zHolXuspbG/71bubPlGLQnL
 OPAIC4WHe3Gb65XFcX8ZW2xP+17mC3btejC07Na8QxCqOgqeoalEHp1Mcw0vl2863Gcg=;
Received: from kylie.crudebyte.com ([5.189.157.229])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mT0rB-000250-Be
 for v9fs-developer@lists.sourceforge.net; Wed, 22 Sep 2021 11:56:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=crudebyte.com; s=kylie; h=Content-Type:Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
 Content-ID:Content-Description;
 bh=OKfVFxrpko5QMAAtDRTPC75OYX8uz3xyIWxgAq8hnf8=; b=SR/90fyAUGmsJOYhzXLCnXiiEb
 lzZAX/eD275hpQQGTlQumLEg9MgbjYj9FiWsCem6Im0Bs18reQGbCNATCTedi9A/rpBUxMfBR2QJ0
 PuxrZ1O4njGlX1z/LSsURaIWf31Misbw7LsmrJcKvSwAXuTv3Z9FLRW5d67ynQTbarbRot7ggkKge
 NX4Xfj2CmUPsKKM4Sjqsxe7kqzYfGF3YCWCVjA/KJS9OOwXaJ1RTpKukW6Pkoy6R1i5cC1eLnCoqh
 K4seZ4R50H25J8Z0jYaRjq/L0KWZiU5KAHjaiG/s4FQdCYSNkBLohwmOWlrmfTnmzp8pRXjEymMER
 Qm02o2F9946WCWUlGD9ds23LYjGgnwvX6+3j+doQ+2E8Mf2bQ/VwOTa+pj3lnQSfGNvyAiZ5ctFQ1
 deN743UPT/Y/fvrvXmxh4kZEeJJ/qJt6OsxWEt62NxfGPAtCLPFv60yB1T3sMNHx3Nr0y5D6c+4GU
 hf2J5O7n8y8Jd0e2SFCub+i3LwhRAm7BZCu9elzhY3NUhRfJvGvpgk9wuf8ZLh//7F8m21wSq2pI+
 t3VS03fZzd3eIUoY2O4obt62u4gsUH/6QN6sNF3GcLeUWWWy89/2QlEFQ3RLQLC9YExUi7NtdMIL9
 GXaQkd8dhHifmL3VoDWuxEFCffBkBKBhQ0fod3C3Q=;
To: v9fs-developer@lists.sourceforge.net
Date: Wed, 22 Sep 2021 13:56:01 +0200
Message-ID: <3557953.c9VYo6GAZX@silver>
In-Reply-To: <0a2c16b9acf580a679f38354b5d60a68c5fb6c99.1632156835.git.linux_oss@crudebyte.com>
References: <cover.1632156835.git.linux_oss@crudebyte.com>
 <0a2c16b9acf580a679f38354b5d60a68c5fb6c99.1632156835.git.linux_oss@crudebyte.com>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Montag,
 20. September 2021 18:44:20 CEST Christian Schoenebeck
 wrote: > Right now vq_sg_resize() used a lazy implementation following >
 the all-or-nothing princible. So it either resized exactly to [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-Headers-End: 1mT0rB-000250-Be
Subject: Re: [V9fs-developer] [PATCH v2 7/7] 9p/trans_virtio: resize sg
 lists to whatever is possible
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
Cc: Latchesar Ionkov <lucho@ionkov.net>, Eric Van Hensbergen <ericvh@gmail.com>,
 netdev@vger.kernel.org, Greg Kurz <groug@kaod.org>,
 Vivek Goyal <vgoyal@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Montag, 20. September 2021 18:44:20 CEST Christian Schoenebeck wrote:
> Right now vq_sg_resize() used a lazy implementation following
> the all-or-nothing princible. So it either resized exactly to
> the requested new amount of sg lists, or it did not resize at
> all.
> 
> The problem with this is if a user supplies a very large msize
> value, resize would simply fail and the user would stick to
> the default maximum msize supported by the virtio transport.
> 
> To resolve this potential issue, change vq_sg_resize() to resize
> the passed sg list to whatever is possible on the machine.
> 
> Signed-off-by: Christian Schoenebeck <linux_oss@crudebyte.com>
> ---
>  net/9p/trans_virtio.c | 65 ++++++++++++++++++++++++++++++++++++-------
>  1 file changed, 55 insertions(+), 10 deletions(-)
> 
> diff --git a/net/9p/trans_virtio.c b/net/9p/trans_virtio.c
> index 4cb75f45aa15..b9bab7ed2768 100644
> --- a/net/9p/trans_virtio.c
> +++ b/net/9p/trans_virtio.c
> @@ -205,24 +205,66 @@ static struct virtqueue_sg *vq_sg_alloc(unsigned int
> nsgl) * amount of lists
>   * @_vq_sg: scatter/gather lists to be resized
>   * @nsgl: new amount of scatter/gather lists
> + *
> + * Old scatter/gather lists are retained. Only growing the size is
> supported. + * If the requested amount cannot be satisfied, then lists are
> increased to + * whatever is possible.
>   */
>  static int vq_sg_resize(struct virtqueue_sg **_vq_sg, unsigned int nsgl)
>  {
>  	struct virtqueue_sg *vq_sg;
> +	unsigned int i;
> +	size_t sz;
> +	int ret = 0;
> 
>  	BUG_ON(!_vq_sg || !nsgl);
>  	vq_sg = *_vq_sg;
> +	if (nsgl > VIRTQUEUE_SG_NSGL_MAX)
> +		nsgl = VIRTQUEUE_SG_NSGL_MAX;
>  	if (vq_sg->nsgl == nsgl)
>  		return 0;
> +	if (vq_sg->nsgl > nsgl)
> +		return -ENOTSUPP;
> +
> +	vq_sg = kzalloc(sizeof(struct virtqueue_sg) +
> +			nsgl * sizeof(struct scatterlist *),
> +			GFP_KERNEL);
> 
> -	/* lazy resize implementation for now */
> -	vq_sg = vq_sg_alloc(nsgl);
>  	if (!vq_sg)
>  		return -ENOMEM;
> 
> -	kfree(*_vq_sg);
> +	/* copy over old scatter gather lists */
> +	sz = sizeof(struct virtqueue_sg) +
> +		(*_vq_sg)->nsgl * sizeof(struct scatterlist *);
> +	memcpy(vq_sg, *_vq_sg, sz);

Missing

	kfree(*_vq_sg);

here.

> +
> +	vq_sg->nsgl = nsgl;
> +
> +	for (i = (*_vq_sg)->nsgl; i < nsgl; ++i) {
> +		vq_sg->sgl[i] = kmalloc_array(
> +			SG_MAX_SINGLE_ALLOC, sizeof(struct scatterlist),
> +			GFP_KERNEL
> +		);
> +		/*
> +		 * handle failed allocation as soft error, we take whatever
> +		 * we get
> +		 */
> +		if (!vq_sg->sgl[i]) {
> +			ret = -ENOMEM;
> +			vq_sg->nsgl = nsgl = i;
> +			break;
> +		}
> +		sg_init_table(vq_sg->sgl[i], SG_MAX_SINGLE_ALLOC);
> +		if (i) {
> +			/* chain the lists */
> +			sg_chain(vq_sg->sgl[i - 1], SG_MAX_SINGLE_ALLOC,
> +				 vq_sg->sgl[i]);
> +		}
> +	}
> +	sg_mark_end(&vq_sg->sgl[nsgl - 1][SG_MAX_SINGLE_ALLOC - 1]);
> +
>  	*_vq_sg = vq_sg;
> -	return 0;
> +	return ret;
>  }
> 
>  /**
> @@ -839,13 +881,16 @@ p9_virtio_create(struct p9_client *client, const char
> *devname, char *args) if (nsgl > chan->vq_sg->nsgl) {
>  			/*
>  			 * if resize fails, no big deal, then just
> -			 * continue with default msize instead
> +			 * continue with whatever we got
>  			 */
> -			if (!vq_sg_resize(&chan->vq_sg, nsgl)) {
> -				client->trans_maxsize =
> -					PAGE_SIZE *
> -					((nsgl * SG_USER_PAGES_PER_LIST) - 3);
> -			}
> +			vq_sg_resize(&chan->vq_sg, nsgl);
> +			/*
> +			 * actual allocation size might be less than
> +			 * requested, so use vq_sg->nsgl instead of nsgl
> +			 */
> +			client->trans_maxsize =
> +				PAGE_SIZE * ((chan->vq_sg->nsgl *
> +				SG_USER_PAGES_PER_LIST) - 3);

As with patch 6, here should probably be an additional

		if (chan->vq_sg->nsgl < nsgl) {
			pr_inf(...);
		}

to explain the user that not all required sg lists could be allocated suiting 
user's requested msize option.

>  		}
>  #endif /* CONFIG_ARCH_NO_SG_CHAIN */
>  	}






_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
