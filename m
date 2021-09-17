Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2324A40F703
	for <lists+v9fs-developer@lfdr.de>; Fri, 17 Sep 2021 14:02:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:References:In-Reply-To:
	Message-ID:Date:To:Sender:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=RcvnVFjDqepqRwkq9vuYvZAvMeGAb+SCC1DcY+STtxI=; b=atFuE7tUj+qLjbcOQhHHATEOx
	xP6dfjyFC7/e/I7arpIn9pRORedIdfyGYQJBlADH7ZDD3FYHGSQVMOZWmbAfp1DBrufSwwhCCdLD6
	tPN83rTnbwF+6124GlVOG56Wukm0yE3SY3tSqu3lFBn9CnzCBC1eG+cdPo5uEKywdOAK4=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1mRCZT-0003Cv-Bj; Fri, 17 Sep 2021 12:02:23 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <linux_oss@crudebyte.com>) id 1mRCZQ-0003Ck-GH
 for v9fs-developer@lists.sourceforge.net; Fri, 17 Sep 2021 12:02:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Content-Transfer-Encoding:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=mwDQ7yL65mWjimIO8xuhY5v9/PdKRAR76I1LgT/xIJw=; b=VsSyh9HKatboi/09orqUMNpMU6
 fzf01kDLjH0OnuVeTRDYamaWaNzbvQrO0SrMjz5lzn3KLyxzIp4ejv0gKH8/2PjktiFcTAxM3MhCn
 be2eQiTskTtDBC9USjAcvmfIk1tyCq3NDlsjckvyJf4F5PAR5qYh2H8YwTEn1vJOztG4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=mwDQ7yL65mWjimIO8xuhY5v9/PdKRAR76I1LgT/xIJw=; b=ef7pTEx70N3+zIfnUd39VzgIc5
 75m7yKlriHWln/9fChr5Q59r+Tx2aGYVkMD1zEKKv7KYUkaInj2HudJ8czys4OoKId9LhkdrKy0wy
 TSmrnQjvMbBf/eV8I+ShK7kdp0aQ/91b05cW5umxQ0RrkM7G+qQonOXpVCoA1Xgx6ld4=;
Received: from kylie.crudebyte.com ([5.189.157.229])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mRCZM-0005J5-M4
 for v9fs-developer@lists.sourceforge.net; Fri, 17 Sep 2021 12:02:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=crudebyte.com; s=kylie; h=Content-Type:Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
 Content-ID:Content-Description;
 bh=mwDQ7yL65mWjimIO8xuhY5v9/PdKRAR76I1LgT/xIJw=; b=qoUwGluFKe+XVtLgZIF3PxKGI9
 oGLtzS3umUMVjRMoQkSplxFOxgCZ9XmD5WfergkZF6C9kjoHaghNQrutdYHU2dbkvenJKbPLFPYM0
 RPPeywCmdmTaR0IHTSa4ctWaALVo/Q5VrraUVDirI28OEhZDJ4yCiwuxC/MH8Zbm8aSXqPoVg373/
 h1YVuK7NIQPR7ubAj/6Kt9IMGFAoqK9HIr8OvQXS+xhx99HDtCc97WLO7OJd7frPEbXgY2SBVNmNr
 VTc2y3B4WCdl6+svCPwJWrmpDlsg23qZ/NjHtmRGvP+gpIRFXQwueBT8Yam1oMVi7jP2UCamoArHO
 bVAGvHyDKzT9rdSZi7GYGFKh3KI4Mzx8xsFoubE3gaCIEIckbUGnjuvHkgfZKh7nag8Mw2TzoQEKI
 JzYe893yIimytwy4Q7W4ntqax26xoI1xLiS/hC06Cm+bLBK9ZU0nhRZ7lgMS4f86aPhYNbZNxP2lO
 pZZaFlT9qhbeXqpi1sy9/toFKrS+86sb6uS4xJYX+kKMguHw0lCdJQq06NKXJGJ/61oHBXZeDus4O
 Bl19z3E4TYP5oGXJOeObBOobKaqoxs0/i0gX7I131L5uAq+H1GAunpqmDJ3u/4T3pFHixPjkliin+
 8Zv9WebbrCDEHZQ7lk6WrdMz2SYuh6esq0DYZmMzI=;
To: v9fs-developer@lists.sourceforge.net
Date: Fri, 17 Sep 2021 14:02:04 +0200
Message-ID: <42945636.VKLsUkgjGN@silver>
In-Reply-To: <810050b76b9b04f045e3d21b0082358ea3f21391.1631816768.git.linux_oss@crudebyte.com>
References: <cover.1631816768.git.linux_oss@crudebyte.com>
 <810050b76b9b04f045e3d21b0082358ea3f21391.1631816768.git.linux_oss@crudebyte.com>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Donnerstag, 16. September 2021 20:25:16 CEST Christian
 Schoenebeck wrote: > The virtio transport supports by default a 9p 'msize'
 of up to > approximately 500 kB. This patches adds support for larg [...]
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: crudebyte.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-Headers-End: 1mRCZM-0005J5-M4
Subject: Re: [V9fs-developer] [PATCH 6/7] 9p/trans_virtio: support larger
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

On Donnerstag, 16. September 2021 20:25:16 CEST Christian Schoenebeck wrote:
> The virtio transport supports by default a 9p 'msize' of up to
> approximately 500 kB. This patches adds support for larger 'msize'
> values by resizing the amount of scatter/gather lists if required.
> 
> Signed-off-by: Christian Schoenebeck <linux_oss@crudebyte.com>
> ---

s/patches/patch/

>  net/9p/trans_virtio.c | 52 +++++++++++++++++++++++++++++++++++++++++++
>  1 file changed, 52 insertions(+)
> 
> diff --git a/net/9p/trans_virtio.c b/net/9p/trans_virtio.c
> index 1a45e0df2336..1f9a0283d7b8 100644
> --- a/net/9p/trans_virtio.c
> +++ b/net/9p/trans_virtio.c
> @@ -195,6 +195,30 @@ static struct virtqueue_sg *vq_sg_alloc(unsigned int
> nsgl) return vq_sg;
>  }
> 
> +/**
> + * Resize passed virtqueue scatter/gather lists to the passed amount of
> + * list blocks.
> + * @_vq_sg: scatter/gather lists to be resized
> + * @nsgl: new amount of scatter/gather list blocks
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

Missing

    kfree(*_vq_sg);

here, and probably also a prior memcpy() as in patch 7, i.e.:

    /* copy over old scatter gather lists */
    sz = sizeof(struct virtqueue_sg) +
        (*_vq_sg)->nsgl * sizeof(struct scatterlist *);
    memcpy(vq_sg, *_vq_sg, sz);

> +	*_vq_sg = vq_sg;
> +	return 0;
> +}
> +
>  /**
>   * p9_virtio_close - reclaim resources of a channel
>   * @client: client instance
> @@ -766,6 +790,10 @@ p9_virtio_create(struct p9_client *client, const char
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
> @@ -788,6 +816,30 @@ p9_virtio_create(struct p9_client *client, const char
> *devname, char *args) return ret;
>  	}
> 
> +	/*
> +	 * if user supplied an 'msize' option that's larger than what this
> +	 * transport supports by default, then try to allocate more sg lists
> +	 */
> +	if (client->msize > client->trans_maxsize) {
> +#if !defined(CONFIG_ARCH_NO_SG_CHAIN)
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
> +#endif /* !defined(CONFIG_ARCH_NO_SG_CHAIN) */
> +	}

Probably an error/info message for architectures not supporting SG chains 
would be useful here, to let users on those system know why they cannot get 
beyond 500k msize.

> +
>  	client->trans = (void *)chan;
>  	client->status = Connected;
>  	chan->client = client;






_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
