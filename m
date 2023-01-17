Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C8CF66E123
	for <lists+v9fs-developer@lfdr.de>; Tue, 17 Jan 2023 15:44:58 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1pHnCr-00034s-6q;
	Tue, 17 Jan 2023 14:44:56 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <linux_oss@crudebyte.com>) id 1pHnCn-00034j-76
 for v9fs-developer@lists.sourceforge.net;
 Tue, 17 Jan 2023 14:44:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Content-Transfer-Encoding:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=IH1dX8f7PPyC//ThIbbm4HMr9Qt84xTuAQl0SWp4l84=; b=ZXpyW5k1RjU93etMt8z1HhhIn8
 U+RzfFDl5S+g0Z0zRWiCT6Vuvneebo8e6TfhDxYfEcbJ5jZmOclGW69L2d9Sv4vBOqGsFNnH8ewA3
 FXrYxC1e7R/WRhWpvvPLcABR3dKjgpkYE/SAKgegLLvseUYA6kVrW3igflrp0MCXu8uc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=IH1dX8f7PPyC//ThIbbm4HMr9Qt84xTuAQl0SWp4l84=; b=UBXrCmI0/ENwe2j6rXBnfGnZjN
 76iOln7eeyocGOiN+zzgtNQ6K2EmHeuSbpFF5HdjlXCru9YBzmsocrDzjCavtmKZ6kgdR314O0Csc
 TtmGqJWHg6vCTzcKMTA6YQKl0ph+xkFfv1RX03IHs2gzAEGehJqQNOiZiPrVp8wxfo0U=;
Received: from kylie.crudebyte.com ([5.189.157.229])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1pHnCl-0004jH-7g for v9fs-developer@lists.sourceforge.net;
 Tue, 17 Jan 2023 14:44:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=crudebyte.com; s=kylie; h=Content-Type:Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
 Content-ID:Content-Description;
 bh=IH1dX8f7PPyC//ThIbbm4HMr9Qt84xTuAQl0SWp4l84=; b=J/EPpo2OtkyXoS8OJejsz9tBJs
 E5HLG87n+Ne1IA0cyHoNBAERgmPCwZPESTrtz8VfjWGW7VkCXFA3Jxp3t+2jcXZCMNJGZV8xSjo2m
 dsky52rpEnetF7yNKWkZoFX5bf7bLz7iaUlyXdZtWMgIQH3pe3X91wI7r8v3xfu/Xqt8h5KHHfr5m
 TLVRUN3pD6pLKVikfCC2Kd4r6ufYmAtkDupL+zS51sW7EVPnZ87gNq58U8KGIfcZtdc72RcArTVE2
 LzhwlheWKUX2Mq78RJey6kmgPmJoU6phbc+iyoibX53+tIPzGrtPIkbVL6MsT/561q+YJ8gMeM3f0
 KJGn1IGZy32YvdGQi8BgUTPfywhh4zu+GyFlhLUikiJw4zRv2yrIYIdaEA3QRahe7yYJusr6o9sp5
 0HgGqfbZyrRP+NCF1ASr3TObe1J6BABeBWleR0k3fxnK60mbWs7Gj2kytU320poFs7p9njLWEZ98s
 rqC6kM8brtgFqUiCovIInmL7OlI/s7xf0HU1158xAM/P8np9gGvV+383sosoiCmmYj+Wx1DPeXoRm
 d2iGDbpsr8TDFfn46D7XAG+w9TZqKXLfD9fYYvUfcsJzyC8BM0kv6KTcNYKtz4tcl7BibsEz+HJrf
 +ctbFre5e4xV007WN6XkSiLmfFkBFivAcBcKJ3ORY=;
To: mst@redhat.com, jasowang@redhat.com,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>
Date: Tue, 17 Jan 2023 15:44:25 +0100
Message-ID: <2158632.51e1oXcLo3@silver>
In-Reply-To: <20230117135800.39184-4-alexander.shishkin@linux.intel.com>
References: <20230117135800.39184-1-alexander.shishkin@linux.intel.com>
 <20230117135800.39184-4-alexander.shishkin@linux.intel.com>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Tuesday, January 17,
 2023 2:57:58 PM CET Alexander Shishkin
 wrote: > From: Andi Kleen <ak@linux.intel.com> > > tag_len is read as a u16
 from the untrusted host. It could overflow > in the memory al [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Headers-End: 1pHnCl-0004jH-7g
Subject: Re: [V9fs-developer] [PATCH 3/5] virtio 9p: Fix an overflow
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
Cc: Latchesar Ionkov <lucho@ionkov.net>, Andi Kleen <ak@linux.intel.com>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 virtualization@lists.linux-foundation.org,
 Eric Van Hensbergen <ericvh@gmail.com>, v9fs-developer@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Tuesday, January 17, 2023 2:57:58 PM CET Alexander Shishkin wrote:
> From: Andi Kleen <ak@linux.intel.com>
> 
> tag_len is read as a u16 from the untrusted host. It could overflow
> in the memory allocation, which would lead to a too small buffer.
> 
> Some later loops use it when extended to 32bit, so they could overflow
> the too small buffer.
> 
> Make sure to do the arithmetic for the buffer size in 32bit to avoid
> wrapping.
> 
> Signed-off-by: Andi Kleen <ak@linux.intel.com>
> Signed-off-by: Alexander Shishkin <alexander.shishkin@linux.intel.com>
> Cc: Eric Van Hensbergen <ericvh@gmail.com>
> Cc: Latchesar Ionkov <lucho@ionkov.net>
> Cc: Dominique Martinet <asmadeus@codewreck.org>
> Cc: Christian Schoenebeck <linux_oss@crudebyte.com>
> Cc: v9fs-developer@lists.sourceforge.net
> ---
>  net/9p/trans_virtio.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/net/9p/trans_virtio.c b/net/9p/trans_virtio.c
> index 3c27ffb781e3..a78e4d80e5ba 100644
> --- a/net/9p/trans_virtio.c
> +++ b/net/9p/trans_virtio.c
> @@ -629,7 +629,7 @@ static int p9_virtio_probe(struct virtio_device *vdev)
>  		err = -EINVAL;
>  		goto out_free_vq;
>  	}
> -	tag = kzalloc(tag_len + 1, GFP_KERNEL);
> +	tag = kzalloc((u32)tag_len + 1, GFP_KERNEL);
>  	if (!tag) {

We actually do trust host and tag_len of 2^16 would be odd, but sure why not:

Reviewed-by: Christian Schoenebeck <linux_oss@crudebyte.com>

>  		err = -ENOMEM;
>  		goto out_free_vq;
> 




_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
