Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 777F6414815
	for <lists+v9fs-developer@lfdr.de>; Wed, 22 Sep 2021 13:42:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:References:In-Reply-To:
	Message-ID:Date:To:Sender:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=wG88MMXLbV+pjDUO4qp//uCwPIG1lEgtv1opW8JPJL8=; b=ICMGInFaNAOfUbKhUy2zZxHb6
	WgQoytjc+JKFn/Hcym2Xe/yjNIUZ/MOCNBbZFAdcjyPFaBl0MmT4VXLIlLZKfccZSpVJnpCkuU4rr
	sMSJZIMECiP085PZb6hkVl03ypF1l8NJ4dukiz+1rLcA3PqxxxcJy/jj5o4FRe5sdZuWc=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1mT0e2-000427-O4; Wed, 22 Sep 2021 11:42:34 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <linux_oss@crudebyte.com>) id 1mT0e1-00041z-2N
 for v9fs-developer@lists.sourceforge.net; Wed, 22 Sep 2021 11:42:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Content-Transfer-Encoding:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=f+TBhxT2WVtVBk+dWgN9z+Pp/Os61DB2NMLecJFKkBQ=; b=eUDO0HyqeD9JFRFGTpR9S2Jxtr
 pWG9YP3Sz5k9UOFZPGsQ3ZNC7Elo1vtSjH2LBh9XnoS9euRPqfoHuQ9bOlOtM0KDpTR7dI3K9N850
 o6m43Pv6+Q2HhUuUMYWARQF2jh0RhNuEgqb3zY6rr/lHO6bRZz5w8guIiTOoj61sA0yc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=f+TBhxT2WVtVBk+dWgN9z+Pp/Os61DB2NMLecJFKkBQ=; b=Kb3r/p7uU1RPnBnDnk4BjT1ZEz
 6biOR/27xg9xianTnQN273d92ECZ4w/eImmkRvGQCuqEkDwiXhWbXBHsJSyNlZejwy8mT4Tz2ENyb
 6N+8z12qL4K1XuJlogakR4kiQT6IfTvlVP51059S+zWIL8opHjJklmwhrWD9iiasIWCI=;
Received: from kylie.crudebyte.com ([5.189.157.229])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mT0dy-0001LD-M6
 for v9fs-developer@lists.sourceforge.net; Wed, 22 Sep 2021 11:42:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=crudebyte.com; s=kylie; h=Content-Type:Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
 Content-ID:Content-Description;
 bh=f+TBhxT2WVtVBk+dWgN9z+Pp/Os61DB2NMLecJFKkBQ=; b=WBUjIPcMT3+rCZijgFDe+c7jxF
 0ohfU3F89VLTJvqpTlmG3MQcSKHcoWEEwoI7frYf0DD6+ZSxJ+BoNO4iu72TGO4A2aUgfdueNNkPg
 ZX7HEopP8CBr771CnmhrVdo87U1rIj5SdYjG5Xa3mZ/ItCXzn8o9UPY38PcCHuwiQSBB8tPQ4yQhV
 mSNcRmobvFd/Yyr1nvJASR/vEv7iSyn0+d5IvB3UN5ODrR9hYu+lDkcmk6aF39joFq3lg0Xmy8DDO
 rEYkmzWfvl8+XLftnueUox8p8yCBKhhXYM8XBE3u2VRaBxzhVWHGH6AbFiOPZQ8ByO6o5WSO/RdRg
 7UV5W74suT9s7MnwMqo6vWGL1x1GsbnzJNvYT0Pe87BZEjlxk4vyKxbjI6oNuiwcGsKymDxh81C/t
 /IhQ0zsoRxzfvU68eIRjacrCl+dDqJS8e2hOLcpEBq+81bP9F2bJtkmBauPtTOq36GtOXmskXjhmK
 +dcVbDc7IE7ED2Wef02O6ydfi1x0R0lXwBDIrA7HPnglTqA2mE8jvBmFB+hI5N806WYER9zavfIvP
 GnsYEBbnoTzGRATvzeGzgeATZJxFcKUHBu2XG0Wp92M/Bchqpp73MnNSZp7KQzfcr5IZeQcskx5Xq
 LRcJCdctriq+p1M8SYz905jS+aw6fbjJBl9paHgwM=;
To: v9fs-developer@lists.sourceforge.net
Date: Wed, 22 Sep 2021 13:42:18 +0200
Message-ID: <2845466.DzA3qLHUVI@silver>
In-Reply-To: <f31e80bc67774d08f8d3bfb7ca0a970eeb369ca5.1632156835.git.linux_oss@crudebyte.com>
References: <cover.1632156835.git.linux_oss@crudebyte.com>
 <f31e80bc67774d08f8d3bfb7ca0a970eeb369ca5.1632156835.git.linux_oss@crudebyte.com>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Montag,
 20. September 2021 18:44:13 CEST Christian Schoenebeck
 wrote: > The virtio transport supports by default a 9p 'msize' of up to >
 approximately 500 kB. This patch adds support for larger 'ms [...] 
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
X-Headers-End: 1mT0dy-0001LD-M6
Subject: Re: [V9fs-developer] [PATCH v2 6/7] 9p/trans_virtio: support larger
 msize values
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

On Montag, 20. September 2021 18:44:13 CEST Christian Schoenebeck wrote:
> The virtio transport supports by default a 9p 'msize' of up to
> approximately 500 kB. This patch adds support for larger 'msize'
> values by resizing the amount of scatter/gather lists if required.
> 
> Signed-off-by: Christian Schoenebeck <linux_oss@crudebyte.com>
> ---
>  net/9p/trans_virtio.c | 57 +++++++++++++++++++++++++++++++++++++++++++
>  1 file changed, 57 insertions(+)
> 
> diff --git a/net/9p/trans_virtio.c b/net/9p/trans_virtio.c
> index 0db8de84bd51..4cb75f45aa15 100644
> --- a/net/9p/trans_virtio.c
> +++ b/net/9p/trans_virtio.c
> @@ -200,6 +200,31 @@ static struct virtqueue_sg *vq_sg_alloc(unsigned int
> nsgl) return vq_sg;
>  }
> 
> +/**
> + * vq_sg_resize - resize passed virtqueue scatter/gather lists to the
> passed + * amount of lists
> + * @_vq_sg: scatter/gather lists to be resized
> + * @nsgl: new amount of scatter/gather lists
> + */
> +static int vq_sg_resize(struct virtqueue_sg **_vq_sg, unsigned int nsgl)
> +{
> +	struct virtqueue_sg *vq_sg;
> +
> +	BUG_ON(!_vq_sg || !nsgl);
> +	vq_sg = *_vq_sg;
> +	if (vq_sg->nsgl == nsgl)
> +		return 0;
> +
> +	/* lazy resize implementation for now */
> +	vq_sg = vq_sg_alloc(nsgl);
> +	if (!vq_sg)
> +		return -ENOMEM;
> +
> +	kfree(*_vq_sg);
> +	*_vq_sg = vq_sg;
> +	return 0;
> +}
> +
>  /**
>   * p9_virtio_close - reclaim resources of a channel
>   * @client: client instance
> @@ -771,6 +796,10 @@ p9_virtio_create(struct p9_client *client, const char
> *devname, char *args) struct virtio_chan *chan;
>  	int ret = -ENOENT;
>  	int found = 0;
> +#if !defined(CONFIG_ARCH_NO_SG_CHAIN)
> +	size_t npages;
> +	size_t nsgl;
> +#endif
> 
>  	if (devname == NULL)
>  		return -EINVAL;
> @@ -793,6 +822,34 @@ p9_virtio_create(struct p9_client *client, const char
> *devname, char *args) return ret;
>  	}
> 
> +	/*
> +	 * if user supplied an 'msize' option that's larger than what this
> +	 * transport supports by default, then try to allocate more sg lists
> +	 */
> +	if (client->msize > client->trans_maxsize) {
> +#ifdef CONFIG_ARCH_NO_SG_CHAIN
> +		pr_info("limiting 'msize' to %d because architecture does not "
> +			"support chained scatter gather lists\n",
> +			client->trans_maxsize);
> +#else
> +		npages = DIV_ROUND_UP(client->msize, PAGE_SIZE);
> +		if (npages > chan->p9_max_pages)
> +			npages = chan->p9_max_pages;
> +		nsgl = DIV_ROUND_UP(npages, SG_USER_PAGES_PER_LIST);
> +		if (nsgl > chan->vq_sg->nsgl) {
> +			/*
> +			 * if resize fails, no big deal, then just
> +			 * continue with default msize instead
> +			 */
> +			if (!vq_sg_resize(&chan->vq_sg, nsgl)) {
> +				client->trans_maxsize =
> +					PAGE_SIZE *
> +					((nsgl * SG_USER_PAGES_PER_LIST) - 3);
> +			}
> +		}

Maybe an ...

			} else {
				pr_info(...);
			}

would be useful here to explain the user why transport refrained from 
increasing its max size even though user's msize option demanded it.

> +#endif /* CONFIG_ARCH_NO_SG_CHAIN */
> +	}
> +
>  	client->trans = (void *)chan;
>  	client->status = Connected;
>  	chan->client = client;






_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
