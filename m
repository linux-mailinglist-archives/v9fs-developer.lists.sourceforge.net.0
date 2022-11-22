Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id BC6C6633148
	for <lists+v9fs-developer@lfdr.de>; Tue, 22 Nov 2022 01:22:18 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1oxH3J-0007WB-A0;
	Tue, 22 Nov 2022 00:22:17 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <asmadeus@codewreck.org>) id 1oxH3I-0007W5-DZ
 for v9fs-developer@lists.sourceforge.net;
 Tue, 22 Nov 2022 00:22:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=vM/wC+9ICJ1E4nrONeaPjLJNoVIGOsJr7BNc+BzMDJY=; b=hgSs1FFChHlcq0ZcSivxj+FzS7
 U1lGbtNsPpgSVHLMJhSCLvuMBdypFfLAeX84qpMGe7OPogvNIe8wapxgbVcVRjNTduvAYkkSHRxkA
 dXGTcBR1innsVxcLNzJ4CQpGbMEY3v8COOuFtjtsVKBrDiqfiBSwGcwEv8+hpULeg+ek=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=vM/wC+9ICJ1E4nrONeaPjLJNoVIGOsJr7BNc+BzMDJY=; b=jlI/7XXJhIHXOBqgLkOsSLNl7W
 yQbBVJ2LvzdGvyCMed56G/MItAvJn5XqE2GZrGlaRM+DEpXA1R385hcfBrb29o4gFCGOTEdIfjDKF
 TFnDbXK+UaO8aNdhHsufBIZMWWnHZ3l19CCwxbHDwjTuZoiTTp6zS0/+69L+KE+STqMY=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1oxH3F-0006v0-Dl for v9fs-developer@lists.sourceforge.net;
 Tue, 22 Nov 2022 00:22:16 +0000
Received: by nautica.notk.org (Postfix, from userid 108)
 id 1D644C01D; Tue, 22 Nov 2022 01:22:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1669076531; bh=vM/wC+9ICJ1E4nrONeaPjLJNoVIGOsJr7BNc+BzMDJY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=vIjKLPrsg3FMz7iYQrv8nJOeLWQJeV7HrP5gu7PUgAR19sM8DbYU9xaTI29HkTqRu
 5sFafQw0OYQMYbTmIaEJGFR5lcSxbXFuOzyZyxvgZCiZsg4z+Y6txnBBeZGM4Pry44
 cy9R5z0TGsRnuj8tC1CYcyHXRwDyCJYRmrTxqpwgtITtpAImkfvW0RXLnvZjXa/TOM
 xQjeRiepZw4ehmhrod1t/WS1/AnCPCfBqAJ96KuYXgQF11JaVF+DsP3lJ5I41Gr/oG
 dhowSN7yjtbIlh0sPEMTgwO7BZNGTpsSLg/crOlGRbeKFjYjkEaxmRonxL/4C7zWFJ
 gJpvn1U4s9+Bw==
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on nautica.notk.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=UNPARSEABLE_RELAY
 autolearn=unavailable version=3.3.2
Received: from odin.codewreck.org (localhost [127.0.0.1])
 by nautica.notk.org (Postfix) with ESMTPS id 82C4DC009;
 Tue, 22 Nov 2022 01:22:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1669076530; bh=vM/wC+9ICJ1E4nrONeaPjLJNoVIGOsJr7BNc+BzMDJY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Azpd+Ag7r50uyVvo3SYjrM1ns9DPJ9H8KV5jIAgDPd/2FctqIxvaTYOGd11KUrGTx
 e6SGxZOqtm0DUcJp2hrHcKc2sAlwJs4hEQcJ7fSQdEq3yIPGP4lV8TculjCIXJlmUL
 LhY7MFumlAFAKhMMwAH7MT2oXym6cgv3XRvhxMGVPiLBDrfIdiiv84KwIm4f8r6L5s
 wgb5rpWaANh9zHqWM0YLOe13T8No3FIWellJPs6T17H1fh3K/VgXiSo1X0AlZkn3GK
 5+0a2DT+mOOcz+VYF+Rsrbn1U72uZ4X+auOJjugnUi+v2S2lgTgUOth1fUwlA76hv3
 6yxZHHFg5VkRA==
Received: from localhost (odin.codewreck.org [local])
 by odin.codewreck.org (OpenSMTPD) with ESMTPA id fe24522f;
 Tue, 22 Nov 2022 00:21:59 +0000 (UTC)
Date: Tue, 22 Nov 2022 09:21:43 +0900
From: Dominique Martinet <asmadeus@codewreck.org>
To: Christian Schoenebeck <linux_oss@crudebyte.com>
Message-ID: <Y3wWFxRVpei71PQt@codewreck.org>
References: <cover.1669072186.git.linux_oss@crudebyte.com>
 <fffb512c532bf1290f0f2b1df6068b2ff6cd14c0.1669072186.git.linux_oss@crudebyte.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <fffb512c532bf1290f0f2b1df6068b2ff6cd14c0.1669072186.git.linux_oss@crudebyte.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Christian Schoenebeck wrote on Tue, Nov 22,
 2022 at 12:04:08AM
 +0100: > Since 60ece0833b6c (net/9p: allocate appropriate reduced message
 buffers) > it is no longer appropriate to check server's respon [...] 
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
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
X-Headers-End: 1oxH3F-0006v0-Dl
Subject: Re: [V9fs-developer] [PATCH 2/2] net/9p: fix response size check in
 p9_check_errors()
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
Cc: v9fs-developer@lists.sourceforge.net,
 Stefano Stabellini <sstabellini@kernel.org>, linux-kernel@vger.kernel.org,
 GUO Zihua <guozihua@huawei.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Christian Schoenebeck wrote on Tue, Nov 22, 2022 at 12:04:08AM +0100:
> Since 60ece0833b6c (net/9p: allocate appropriate reduced message buffers)
> it is no longer appropriate to check server's response size against
> msize. Check against the previously allocated buffer capacity instead.

Thanks for the follow up!

>  - Omit this size check entirely for zero-copy messages, as those always
>    allocate 4k (P9_ZC_HDR_SZ) linear buffers which are not used for actual
>    payload and can be much bigger than 4k.

[review includes the new flag patch]

hmm, unless there's anywhere else you think we might use these flags it
looks simpler to just pass a flag to p9_check_errors?

In particular adding a bool in this position is not particularly efficient:
-------(pahole)-----
struct p9_fcall {
	u32                        size;                 /*     0     4 */
	u8                         id;                   /*     4     1 */

	/* XXX 1 byte hole, try to pack */

	u16                        tag;                  /*     6     2 */
	size_t                     offset;               /*     8     8 */
	size_t                     capacity;             /*    16     8 */
	bool                       zc;                   /*    24     1 */

	/* XXX 7 bytes hole, try to pack */

	struct kmem_cache *        cache;                /*    32     8 */
	u8 *                       sdata;                /*    40     8 */

	/* size: 48, cachelines: 1, members: 8 */
	/* sum members: 40, holes: 2, sum holes: 8 */
	/* last cacheline: 48 bytes */
};
----------------
Not that adding it between id and tag sounds better to me, so this is
probably just as good as anywhere else :-D

Anyway, I'm just nitpicking -- on principle I agree just whitelisting zc
requests from this check makes most sense, happy with either way if you
think this is better for the future.

>  - Replace p9_debug() by pr_err() to make sure this message is always
>    printed in case this error is triggered.
> 
>  - Add 9p message type to error message to ease investigation.

Yes to these log changes!

> 
> Signed-off-by: Christian Schoenebeck <linux_oss@crudebyte.com>
> ---
>  net/9p/client.c | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
> 
> diff --git a/net/9p/client.c b/net/9p/client.c
> index 30dd82f49b28..63f13dd1ecff 100644
> --- a/net/9p/client.c
> +++ b/net/9p/client.c
> @@ -514,10 +514,10 @@ static int p9_check_errors(struct p9_client *c, struct p9_req_t *req)
>  	int ecode;
>  
>  	err = p9_parse_header(&req->rc, NULL, &type, NULL, 0);
> -	if (req->rc.size >= c->msize) {
> -		p9_debug(P9_DEBUG_ERROR,
> -			 "requested packet size too big: %d\n",
> -			 req->rc.size);
> +	if (req->rc.size > req->rc.capacity && !req->rc.zc) {
> +		pr_err(
> +			 "requested packet size too big: %d does not fit %ld (type=%d)\n",
> +			 req->rc.size, req->rc.capacity, req->rc.id);

Haven't seen this style before -- is that what qemu uses?
We normally keep the message on first line and align e.g.
> +             pr_err("requested packet size too big: %d does not fit %ld (type=%d)\n",
> +                    req->rc.size, req->rc.capacity, req->rc.id);

(at least what's what other grep -A 1 'pr_err.*,$' seem to do, and
checkpatch is happier with that)

-- 
Dominique


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
