Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B35BD572753
	for <lists+v9fs-developer@lfdr.de>; Tue, 12 Jul 2022 22:34:14 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1oBMaC-0005mk-Et; Tue, 12 Jul 2022 20:34:11 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <asmadeus@codewreck.org>) id 1oBMaA-0005md-HT
 for v9fs-developer@lists.sourceforge.net; Tue, 12 Jul 2022 20:34:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=C5F3rSQ7GqIANd5Bt9J8Do3iD0oialhIYzeN1rNK98U=; b=LpfiWetPwHhGO3ha4CtZ2if2KV
 kzKZKrAGP5+IFempWH0qz3mLKZQAQdU5BRbVwvN2ZUaq8brnHujgUBPCkrp//9sCx8WNPy5/Ix1p1
 8VrBmUFTOWH2egUnD3vhi3Z7AAfon8i5zNiSlAKIWrNPv+xIdDKzwx4kdHH5MKm09J0U=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=C5F3rSQ7GqIANd5Bt9J8Do3iD0oialhIYzeN1rNK98U=; b=nDDSXtWVo1jwLDRZbdFweK6pU5
 tMEhVH2QODqWIy+UgW8U3T2ShQClIy4X03CBmUaWmtxVrkejEBz7P0PzRiIkba6WpGORef7Wzo90p
 xYaDrNyQ+Ftpxg5edHt/MeU8Tj+vmhtwEkSfzjGV2RJzLa04mRT6OYaYhHq0WWrlKZis=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1oBMa5-00F44h-SN
 for v9fs-developer@lists.sourceforge.net; Tue, 12 Jul 2022 20:34:09 +0000
Received: by nautica.notk.org (Postfix, from userid 108)
 id A363FC01D; Tue, 12 Jul 2022 22:33:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1657658037; bh=C5F3rSQ7GqIANd5Bt9J8Do3iD0oialhIYzeN1rNK98U=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=zKpbdHLikR/bjHsdfF9rH35FM5AZ3TGSKFimIfkxa3Rmhu6tkIi398rMl9eva03Q3
 Z1ZBt5ep+nS+gIJlGfuXRZ9iK8XGxYMUCcpUsL6uyv5RYYqjawxZtdMUa8y6jyBq8j
 UD+9jEpJjdaA8zlt1oVorWrVsKuLz5v9qHT9VVgnJkfhENLToSWB67LfJlly7I8ff2
 Ni76jyMVI9poxiuXJGY4xYBYWOUO6heJsyE9bREvb58a58uGPiZrE1v+fnqNzAmw6G
 OS5e1EbFcMgMlvfhA/x3GnaAL061W5k85gNzgLDyUgTFXWRmbK7ZW/NoS1mnGxTYrc
 3P4+GExUM+hdQ==
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on nautica.notk.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=UNPARSEABLE_RELAY
 autolearn=unavailable version=3.3.2
Received: from odin.codewreck.org (localhost [127.0.0.1])
 by nautica.notk.org (Postfix) with ESMTPS id 4371EC009;
 Tue, 12 Jul 2022 22:33:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1657658035; bh=C5F3rSQ7GqIANd5Bt9J8Do3iD0oialhIYzeN1rNK98U=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=sxXn7Tn63jw18ZRLEkuGV7tM/0hbMBT6Gekzbju/A01d2VYBufV+pY6ncXc1TDYn0
 0B9T6Ne7AXuswTSeDgYifyuX6RiBSk8JZsp6k7qD2iZ9DpFQCHV5kl0087ggW8Wnr8
 P38QC++nxtZH8O9/8+HEh5K5NNP7YDRZC0NwoDwggrbX4mXnLahhaCWVbZ7NnQ9hr7
 BRaJ3uPASF9c4jaYTU5q1zP+L6rCYOuREkDxIO5oJFVewhBXIAQDgTbbtHAUomw9kV
 9Kzzj9UJu+FcyTf5eVsb6ROqj1MpCkpp/nfdqd9EwNCEBx99AqkrTLS7XBktiN9jHz
 uaRLZyb123oug==
Received: from localhost (odin.codewreck.org [local])
 by odin.codewreck.org (OpenSMTPD) with ESMTPA id c1db48ba;
 Tue, 12 Jul 2022 20:33:49 +0000 (UTC)
Date: Wed, 13 Jul 2022 05:33:34 +0900
From: Dominique Martinet <asmadeus@codewreck.org>
To: Christian Schoenebeck <linux_oss@crudebyte.com>
Message-ID: <Ys3antr+zrP5eQ1Z@codewreck.org>
References: <cover.1657636554.git.linux_oss@crudebyte.com>
 <862eef0d6d4b14faaea0d2aab982a3c8dfd8056b.1657636554.git.linux_oss@crudebyte.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <862eef0d6d4b14faaea0d2aab982a3c8dfd8056b.1657636554.git.linux_oss@crudebyte.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Christian Schoenebeck wrote on Tue, Jul 12,
 2022 at 04:31:16PM
 +0200: > The amount of elements in a scatter/gather list is limited to >
 approximately 128 elements. To allow going beyond that limit > w [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
X-Headers-End: 1oBMa5-00F44h-SN
Subject: Re: [V9fs-developer] [PATCH v5 03/11] 9p/trans_virtio: introduce
 struct virtqueue_sg
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
Cc: Latchesar Ionkov <lucho@ionkov.net>, Eric Van Hensbergen <ericvh@gmail.com>,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 v9fs-developer@lists.sourceforge.net, Nikolay Kichukov <nikolay@oldum.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Christian Schoenebeck wrote on Tue, Jul 12, 2022 at 04:31:16PM +0200:
> The amount of elements in a scatter/gather list is limited to
> approximately 128 elements. To allow going beyond that limit
> with subsequent patches, pave the way by turning the one-
> dimensional sg list array into a two-dimensional array, i.e:
> 
>   sg[128]
> 
> becomes
> 
>   sgl[nsgl][SG_MAX_SINGLE_ALLOC]
> 
> As the value of 'nsgl' is exactly (still) 1 in this commit
> and the compile-time (compiler and architecture dependent)
> value of 'SG_MAX_SINGLE_ALLOC' equals approximately the
> previous hard coded 128 elements, this commit is therefore
> more of a preparatory refactoring then actual behaviour
> change.
> 
> A custom struct virtqueue_sg is defined instead of using
> shared API struct sg_table, because the latter would not
> allow to resize the table after allocation. sg_append_table
> API OTOH would not fit either, because it requires a list
> of pages beforehand upon allocation. And both APIs only
> support all-or-nothing allocation.
> 
> Signed-off-by: Christian Schoenebeck <linux_oss@crudebyte.com>
> ---
> 
> The question is whether that should really become 9p specifc SG list
> code, or whether it should rather be squeezed into shared SG list code
> base. Opinions by maintainers needed.

hmm from the 9p side I'd say the type is simple enough that we can just
keep it here; most people don't want to resize these lists...

How much do you care about the all-or-nothing case you described in this
commit message? From the look of it, patch 6 -- at what point did you
actually see this being useful?

>  net/9p/trans_virtio.c | 193 ++++++++++++++++++++++++++++++++----------
>  1 file changed, 147 insertions(+), 46 deletions(-)
> 
> diff --git a/net/9p/trans_virtio.c b/net/9p/trans_virtio.c
> index 18bdfa64b934..f63cd1b08bca 100644
> --- a/net/9p/trans_virtio.c
> +++ b/net/9p/trans_virtio.c
> @@ -36,7 +36,31 @@
>  #include <linux/virtio_9p.h>
>  #include "trans_common.h"
>  
> -#define VIRTQUEUE_DEFAULT_NUM	128
> +/**
> + * struct virtqueue_sg - (chained) scatter gather lists for virtqueue data
> + * transmission
> + * @nsgl: amount of elements (in first dimension) of array field @sgl
> + * @sgl: two-dimensional array, i.e. sgl[nsgl][SG_MAX_SINGLE_ALLOC]
> + */
> +struct virtqueue_sg {
> +	unsigned int nsgl;
> +	struct scatterlist *sgl[];
> +};
> +
> +/*
> + * Default value for field nsgl in struct virtqueue_sg, which defines the
> + * initial virtio data transmission capacity when this virtio transport is
> + * probed.
> + */
> +#define VIRTQUEUE_SG_NSGL_DEFAULT 1
> +
> +/* maximum value for field nsgl in struct virtqueue_sg */
> +#define VIRTQUEUE_SG_NSGL_MAX						\
> +	((PAGE_SIZE - sizeof(struct virtqueue_sg)) /			\
> +	sizeof(struct scatterlist *))					\
> +
> +/* last entry per sg list is used for chaining (pointer to next list) */
> +#define SG_USER_PAGES_PER_LIST	(SG_MAX_SINGLE_ALLOC - 1)
>  
>  /* a single mutex to manage channel initialization and attachment */
>  static DEFINE_MUTEX(virtio_9p_lock);
> @@ -53,8 +77,7 @@ static atomic_t vp_pinned = ATOMIC_INIT(0);
>   * @ring_bufs_avail: flag to indicate there is some available in the ring buf
>   * @vc_wq: wait queue for waiting for thing to be added to ring buf
>   * @p9_max_pages: maximum number of pinned pages
> - * @sg: scatter gather list which is used to pack a request (protected?)
> - * @sg_n: amount of elements in sg array
> + * @vq_sg: table of scatter gather lists, which are used to pack a request
>   * @chan_list: linked list of channels
>   *
>   * We keep all per-channel information in a structure.
> @@ -77,9 +100,7 @@ struct virtio_chan {
>  	 * will be placing it in each channel.
>  	 */
>  	unsigned long p9_max_pages;
> -	/* Scatterlist: can be too big for stack. */
> -	struct scatterlist *sg;
> -	size_t sg_n;
> +	struct virtqueue_sg *vq_sg;
>  	/**
>  	 * @tag: name to identify a mount null terminated
>  	 */
> @@ -96,6 +117,92 @@ static unsigned int rest_of_page(void *data)
>  	return PAGE_SIZE - offset_in_page(data);
>  }
>  
> +/**
> + * vq_sg_page - returns user page for given page index
> + * @vq_sg: scatter gather lists used by this transport
> + * @page: user page index across all scatter gather lists
> + */
> +static struct scatterlist *vq_sg_page(struct virtqueue_sg *vq_sg, size_t page)
> +{
> +	unsigned int node = page / SG_USER_PAGES_PER_LIST;
> +	unsigned int leaf = page % SG_USER_PAGES_PER_LIST;
> +	BUG_ON(node >= VIRTQUEUE_SG_NSGL_MAX);

probably awnt to check with vq_sg->sg_n instead?
(we already check sg_n <= MAX on alloc)


> +	return &vq_sg->sgl[node][leaf];
> +}
> +
> +/**
> + * vq_sg_npages - returns total number of individual user pages in passed
> + * scatter gather lists
> + * @vq_sg: scatter gather lists to be counted
> + */
> +static size_t vq_sg_npages(struct virtqueue_sg *vq_sg)
> +{
> +	return vq_sg->nsgl * SG_USER_PAGES_PER_LIST;
> +}
> +
> +/**
> + * vq_sg_free - free all memory previously allocated for @vq_sg
> + * @vq_sg: scatter gather lists to be freed
> + */
> +static void vq_sg_free(struct virtqueue_sg *vq_sg)
> +{
> +	unsigned int i;
> +
> +	if (!vq_sg)
> +		return;
> +
> +	for (i = 0; i < vq_sg->nsgl; ++i) {
> +		kfree(vq_sg->sgl[i]);
> +	}
> +	kfree(vq_sg);
> +}
> +
> +/**
> + * vq_sg_alloc - allocates and returns @nsgl scatter gather lists
> + * @nsgl: amount of scatter gather lists to be allocated
> + * If @nsgl is larger than one then chained lists are used if supported by
> + * architecture.
> + */
> +static struct virtqueue_sg *vq_sg_alloc(unsigned int nsgl)
> +{
> +	struct virtqueue_sg *vq_sg;
> +	unsigned int i;
> +
> +	BUG_ON(!nsgl || nsgl > VIRTQUEUE_SG_NSGL_MAX);
> +#ifdef CONFIG_ARCH_NO_SG_CHAIN
> +	if (WARN_ON_ONCE(nsgl > 1))
> +		return NULL;
> +#endif
> +
> +	vq_sg = kzalloc(sizeof(struct virtqueue_sg) +
> +			nsgl * sizeof(struct scatterlist *),
> +			GFP_KERNEL);
> +
> +	if (!vq_sg)
> +		return NULL;
> +
> +	vq_sg->nsgl = nsgl;
> +
> +	for (i = 0; i < nsgl; ++i) {
> +		vq_sg->sgl[i] = kmalloc_array(
> +			SG_MAX_SINGLE_ALLOC, sizeof(struct scatterlist),
> +			GFP_KERNEL
> +		);
> +		if (!vq_sg->sgl[i]) {
> +			vq_sg_free(vq_sg);
> +			return NULL;
> +		}
> +		sg_init_table(vq_sg->sgl[i], SG_MAX_SINGLE_ALLOC);
> +		if (i) {
> +			/* chain the lists */
> +			sg_chain(vq_sg->sgl[i - 1], SG_MAX_SINGLE_ALLOC,
> +				 vq_sg->sgl[i]);
> +		}
> +	}
> +	sg_mark_end(&vq_sg->sgl[nsgl - 1][SG_MAX_SINGLE_ALLOC - 1]);
> +	return vq_sg;
> +}
> +
>  /**
>   * p9_virtio_close - reclaim resources of a channel
>   * @client: client instance
> @@ -158,9 +265,8 @@ static void req_done(struct virtqueue *vq)
>  
>  /**
>   * pack_sg_list - pack a scatter gather list from a linear buffer
> - * @sg: scatter/gather list to pack into
> + * @vq_sg: scatter/gather lists to pack into
>   * @start: which segment of the sg_list to start at
> - * @limit: maximum segment to pack data to
>   * @data: data to pack into scatter/gather list
>   * @count: amount of data to pack into the scatter/gather list
>   *
> @@ -170,11 +276,12 @@ static void req_done(struct virtqueue *vq)
>   *
>   */
>  
> -static int pack_sg_list(struct scatterlist *sg, int start,
> -			int limit, char *data, int count)
> +static int pack_sg_list(struct virtqueue_sg *vq_sg, int start,
> +			char *data, int count)
>  {
>  	int s;
>  	int index = start;
> +	size_t limit = vq_sg_npages(vq_sg);
>  
>  	while (count) {
>  		s = rest_of_page(data);
> @@ -182,13 +289,13 @@ static int pack_sg_list(struct scatterlist *sg, int start,
>  			s = count;
>  		BUG_ON(index >= limit);
>  		/* Make sure we don't terminate early. */
> -		sg_unmark_end(&sg[index]);
> -		sg_set_buf(&sg[index++], data, s);
> +		sg_unmark_end(vq_sg_page(vq_sg, index));
> +		sg_set_buf(vq_sg_page(vq_sg, index++), data, s);
>  		count -= s;
>  		data += s;
>  	}
>  	if (index-start)
> -		sg_mark_end(&sg[index - 1]);
> +		sg_mark_end(vq_sg_page(vq_sg, index - 1));
>  	return index-start;
>  }
>  
> @@ -208,21 +315,21 @@ static int p9_virtio_cancelled(struct p9_client *client, struct p9_req_t *req)
>  /**
>   * pack_sg_list_p - Just like pack_sg_list. Instead of taking a buffer,
>   * this takes a list of pages.
> - * @sg: scatter/gather list to pack into
> + * @vq_sg: scatter/gather lists to pack into
>   * @start: which segment of the sg_list to start at
> - * @limit: maximum number of pages in sg list.
>   * @pdata: a list of pages to add into sg.
>   * @nr_pages: number of pages to pack into the scatter/gather list
>   * @offs: amount of data in the beginning of first page _not_ to pack
>   * @count: amount of data to pack into the scatter/gather list
>   */
>  static int
> -pack_sg_list_p(struct scatterlist *sg, int start, int limit,
> +pack_sg_list_p(struct virtqueue_sg *vq_sg, int start,
>  	       struct page **pdata, int nr_pages, size_t offs, int count)
>  {
>  	int i = 0, s;
>  	int data_off = offs;
>  	int index = start;
> +	size_t limit = vq_sg_npages(vq_sg);
>  
>  	BUG_ON(nr_pages > (limit - start));
>  	/*
> @@ -235,15 +342,16 @@ pack_sg_list_p(struct scatterlist *sg, int start, int limit,
>  			s = count;
>  		BUG_ON(index >= limit);
>  		/* Make sure we don't terminate early. */
> -		sg_unmark_end(&sg[index]);
> -		sg_set_page(&sg[index++], pdata[i++], s, data_off);
> +		sg_unmark_end(vq_sg_page(vq_sg, index));
> +		sg_set_page(vq_sg_page(vq_sg, index++), pdata[i++], s,
> +			    data_off);
>  		data_off = 0;
>  		count -= s;
>  		nr_pages--;
>  	}
>  
>  	if (index-start)
> -		sg_mark_end(&sg[index - 1]);
> +		sg_mark_end(vq_sg_page(vq_sg, index - 1));
>  	return index - start;
>  }
>  
> @@ -271,15 +379,13 @@ p9_virtio_request(struct p9_client *client, struct p9_req_t *req)
>  
>  	out_sgs = in_sgs = 0;
>  	/* Handle out VirtIO ring buffers */
> -	out = pack_sg_list(chan->sg, 0,
> -			   chan->sg_n, req->tc.sdata, req->tc.size);
> +	out = pack_sg_list(chan->vq_sg, 0, req->tc.sdata, req->tc.size);
>  	if (out)
> -		sgs[out_sgs++] = chan->sg;
> +		sgs[out_sgs++] = vq_sg_page(chan->vq_sg, 0);
>  
> -	in = pack_sg_list(chan->sg, out,
> -			  chan->sg_n, req->rc.sdata, req->rc.capacity);
> +	in = pack_sg_list(chan->vq_sg, out, req->rc.sdata, req->rc.capacity);
>  	if (in)
> -		sgs[out_sgs + in_sgs++] = chan->sg + out;
> +		sgs[out_sgs + in_sgs++] = vq_sg_page(chan->vq_sg, out);
>  
>  	err = virtqueue_add_sgs(chan->vq, sgs, out_sgs, in_sgs, req,
>  				GFP_ATOMIC);
> @@ -448,16 +554,15 @@ p9_virtio_zc_request(struct p9_client *client, struct p9_req_t *req,
>  	out_sgs = in_sgs = 0;
>  
>  	/* out data */
> -	out = pack_sg_list(chan->sg, 0,
> -			   chan->sg_n, req->tc.sdata, req->tc.size);
> +	out = pack_sg_list(chan->vq_sg, 0, req->tc.sdata, req->tc.size);
>  
>  	if (out)
> -		sgs[out_sgs++] = chan->sg;
> +		sgs[out_sgs++] = vq_sg_page(chan->vq_sg, 0);
>  
>  	if (out_pages) {
> -		sgs[out_sgs++] = chan->sg + out;
> -		out += pack_sg_list_p(chan->sg, out, chan->sg_n,
> -				      out_pages, out_nr_pages, offs, outlen);
> +		sgs[out_sgs++] = vq_sg_page(chan->vq_sg, out);
> +		out += pack_sg_list_p(chan->vq_sg, out, out_pages,
> +				      out_nr_pages, offs, outlen);
>  	}
>  
>  	/*
> @@ -467,15 +572,14 @@ p9_virtio_zc_request(struct p9_client *client, struct p9_req_t *req,
>  	 * Arrange in such a way that server places header in the
>  	 * allocated memory and payload onto the user buffer.
>  	 */
> -	in = pack_sg_list(chan->sg, out,
> -			  chan->sg_n, req->rc.sdata, in_hdr_len);
> +	in = pack_sg_list(chan->vq_sg, out, req->rc.sdata, in_hdr_len);
>  	if (in)
> -		sgs[out_sgs + in_sgs++] = chan->sg + out;
> +		sgs[out_sgs + in_sgs++] = vq_sg_page(chan->vq_sg, out);
>  
>  	if (in_pages) {
> -		sgs[out_sgs + in_sgs++] = chan->sg + out + in;
> -		in += pack_sg_list_p(chan->sg, out + in, chan->sg_n,
> -				     in_pages, in_nr_pages, offs, inlen);
> +		sgs[out_sgs + in_sgs++] = vq_sg_page(chan->vq_sg, out + in);
> +		in += pack_sg_list_p(chan->vq_sg, out + in, in_pages,
> +				     in_nr_pages, offs, inlen);
>  	}
>  
>  	BUG_ON(out_sgs + in_sgs > ARRAY_SIZE(sgs));
> @@ -576,14 +680,12 @@ static int p9_virtio_probe(struct virtio_device *vdev)
>  		goto fail;
>  	}
>  
> -	chan->sg = kmalloc_array(VIRTQUEUE_DEFAULT_NUM,
> -				 sizeof(struct scatterlist), GFP_KERNEL);
> -	if (!chan->sg) {
> +	chan->vq_sg = vq_sg_alloc(VIRTQUEUE_SG_NSGL_DEFAULT);
> +	if (!chan->vq_sg) {
>  		pr_err("Failed to allocate virtio 9P channel\n");
>  		err = -ENOMEM;
>  		goto out_free_chan_shallow;
>  	}
> -	chan->sg_n = VIRTQUEUE_DEFAULT_NUM;
>  
>  	chan->vdev = vdev;
>  
> @@ -596,8 +698,6 @@ static int p9_virtio_probe(struct virtio_device *vdev)
>  	chan->vq->vdev->priv = chan;
>  	spin_lock_init(&chan->lock);
>  
> -	sg_init_table(chan->sg, chan->sg_n);
> -
>  	chan->inuse = false;
>  	if (virtio_has_feature(vdev, VIRTIO_9P_MOUNT_TAG)) {
>  		virtio_cread(vdev, struct virtio_9p_config, tag_len, &tag_len);
> @@ -646,7 +746,7 @@ static int p9_virtio_probe(struct virtio_device *vdev)
>  out_free_vq:
>  	vdev->config->del_vqs(vdev);
>  out_free_chan:
> -	kfree(chan->sg);
> +	vq_sg_free(chan->vq_sg);
>  out_free_chan_shallow:
>  	kfree(chan);
>  fail:
> @@ -741,7 +841,7 @@ static void p9_virtio_remove(struct virtio_device *vdev)
>  	kobject_uevent(&(vdev->dev.kobj), KOBJ_CHANGE);
>  	kfree(chan->tag);
>  	kfree(chan->vc_wq);
> -	kfree(chan->sg);
> +	vq_sg_free(chan->vq_sg);
>  	kfree(chan);
>  
>  }
> @@ -780,7 +880,8 @@ static struct p9_trans_module p9_virtio_trans = {
>  	 * that are not at page boundary, that can result in an extra
>  	 * page in zero copy.
>  	 */
> -	.maxsize = PAGE_SIZE * (VIRTQUEUE_DEFAULT_NUM - 3),
> +	.maxsize = PAGE_SIZE *
> +		((VIRTQUEUE_SG_NSGL_DEFAULT * SG_USER_PAGES_PER_LIST) - 3),
>  	.def = 1,
>  	.owner = THIS_MODULE,
>  };


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
