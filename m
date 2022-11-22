Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DD5E633B2F
	for <lists+v9fs-developer@lfdr.de>; Tue, 22 Nov 2022 12:20:25 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1oxRKB-00010H-PC;
	Tue, 22 Nov 2022 11:20:23 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <linux_oss@crudebyte.com>) id 1oxRKA-0000zs-Fw
 for v9fs-developer@lists.sourceforge.net;
 Tue, 22 Nov 2022 11:20:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Content-Transfer-Encoding:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=i7zhY67HvXsANWaMrM7PgcglBFkDMzl8D8aIeEogL08=; b=KM/uCzF3TylEuPf2kvAQzk9o27
 eXbfvUArcl9qNisOLOacToBGqjR/kRpFabOtbSoih++xry5HI8uiS3SBJbz3n2ThBNmV/amnTPPqk
 3fKDfCzagnVweL02dVejPeFgqGETFJjoqhKF80LDRkq7C0CciS+BqJ8gMhTEtaCdN7lw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=i7zhY67HvXsANWaMrM7PgcglBFkDMzl8D8aIeEogL08=; b=SVmONPqmhB8Xb7Q7I2NXuXxLZI
 MuBDcTAD9mZx8S6LFmMwxtemE5LAtMjnTYvQ07qyDphjkUys+jEUKeOLkqxtc2njtKr1Q2DgFfKhw
 SIkDmtc2PPbqQzNXKhVhIrQ3HupMqlzjBsvniu77pGed935Ltib4fIUK5Nx5vaeQ6iXI=;
Received: from kylie.crudebyte.com ([5.189.157.229])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1oxRK8-00BYJu-NK for v9fs-developer@lists.sourceforge.net;
 Tue, 22 Nov 2022 11:20:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=crudebyte.com; s=kylie; h=Content-Type:Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
 Content-ID:Content-Description;
 bh=i7zhY67HvXsANWaMrM7PgcglBFkDMzl8D8aIeEogL08=; b=T922QQ41QNfXRiKkPBs6IilCD2
 mfwcj4X4w9JP9blv78Y36yEJXwYQTEuxvWDbjuFOGv888tfIcdl+URcwnTK3zFKfUkpfnOeHKT2/8
 dE7h9O0yVj9jFIwS2qWExD/cXlRFN/OC7fFs8bt8ff5eYQPICphtC29cpK1LqG7OmKzaor2WOJp0W
 1JVXlpw9uDRmQtaHU4sjZT9ucyPNXqltGSKxhb1r1Z2SLDMsVpEMjWyj69VFun8uSp5dhIVmWgzZI
 8acITSPAfWoVsSQLjPxVQzi5boMPeAU3BMLvtpCYLyYjgqhPZMG6vOVkGhwOegLz4jcBYdHGk103p
 OE/c/jRbdCkkv6gbteXYAxsN5lpmIjDfhymSGZV7hTRKEeGJ1lsM/KnUmLI+0fy+Thdg4+Bvp01CZ
 qpGKffntcK+z8Gf+GJNyR+sfzjVpalQLzG8PvgQDxZjckR8CkztmSOkZD2npMBzWcNzCNPNlMNt1R
 Hh6u5MIQr7qYIPNyPuDlyoR8UOirpomSaQBOvyZ23cpMUte3Oe0J2zVz1cneJ/Y+IhHBvds257wcy
 C1uTchNGh2fviTgpIEJbGSiG9NkhV/zWvmyFxCBkziY0J5J0di1OVah4e2Rxf/YsqiNXse93XyycL
 tjb5Lnn/VFO658Fb+w2CzXstf8XP6hxfrvmldB+oM=;
To: Dominique Martinet <asmadeus@codewreck.org>
Date: Tue, 22 Nov 2022 12:20:12 +0100
Message-ID: <2474218.LCornM2og2@silver>
In-Reply-To: <Y3wWFxRVpei71PQt@codewreck.org>
References: <cover.1669072186.git.linux_oss@crudebyte.com>
 <fffb512c532bf1290f0f2b1df6068b2ff6cd14c0.1669072186.git.linux_oss@crudebyte.com>
 <Y3wWFxRVpei71PQt@codewreck.org>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Tuesday, November 22,
 2022 1:21:43 AM CET Dominique Martinet
 wrote: > Christian Schoenebeck wrote on Tue, Nov 22, 2022 at 12:04:08AM +0100:
 > > Since 60ece0833b6c (net/9p: allocate appropriate redu [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-Headers-End: 1oxRK8-00BYJu-NK
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
From: Christian Schoenebeck via V9fs-developer
 <v9fs-developer@lists.sourceforge.net>
Reply-To: Christian Schoenebeck <linux_oss@crudebyte.com>
Cc: v9fs-developer@lists.sourceforge.net,
 Stefano Stabellini <sstabellini@kernel.org>, linux-kernel@vger.kernel.org,
 GUO Zihua <guozihua@huawei.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Tuesday, November 22, 2022 1:21:43 AM CET Dominique Martinet wrote:
> Christian Schoenebeck wrote on Tue, Nov 22, 2022 at 12:04:08AM +0100:
> > Since 60ece0833b6c (net/9p: allocate appropriate reduced message buffers)
> > it is no longer appropriate to check server's response size against
> > msize. Check against the previously allocated buffer capacity instead.
> 
> Thanks for the follow up!
> 
> >  - Omit this size check entirely for zero-copy messages, as those always
> >    allocate 4k (P9_ZC_HDR_SZ) linear buffers which are not used for actual
> >    payload and can be much bigger than 4k.
> 
> [review includes the new flag patch]
> 
> hmm, unless there's anywhere else you think we might use these flags it
> looks simpler to just pass a flag to p9_check_errors?

For now that would do as well of course. I just had a feeling that this might
be used for other purposes as well in future and some of these functions are
already somewhat overloaded with arguments.

No strong opinion, your choice.

> In particular adding a bool in this position is not particularly efficient:
> -------(pahole)-----
> struct p9_fcall {
> 	u32                        size;                 /*     0     4 */
> 	u8                         id;                   /*     4     1 */
> 
> 	/* XXX 1 byte hole, try to pack */
> 
> 	u16                        tag;                  /*     6     2 */
> 	size_t                     offset;               /*     8     8 */
> 	size_t                     capacity;             /*    16     8 */
> 	bool                       zc;                   /*    24     1 */
> 
> 	/* XXX 7 bytes hole, try to pack */
> 
> 	struct kmem_cache *        cache;                /*    32     8 */
> 	u8 *                       sdata;                /*    40     8 */
> 
> 	/* size: 48, cachelines: 1, members: 8 */
> 	/* sum members: 40, holes: 2, sum holes: 8 */
> 	/* last cacheline: 48 bytes */
> };
> ----------------
> Not that adding it between id and tag sounds better to me, so this is
> probably just as good as anywhere else :-D

Yeah, that layout optimization would make sense indeed.

> Anyway, I'm just nitpicking -- on principle I agree just whitelisting zc
> requests from this check makes most sense, happy with either way if you
> think this is better for the future.
> 
> >  - Replace p9_debug() by pr_err() to make sure this message is always
> >    printed in case this error is triggered.
> > 
> >  - Add 9p message type to error message to ease investigation.
> 
> Yes to these log changes!
> 
> > 
> > Signed-off-by: Christian Schoenebeck <linux_oss@crudebyte.com>
> > ---
> >  net/9p/client.c | 8 ++++----
> >  1 file changed, 4 insertions(+), 4 deletions(-)
> > 
> > diff --git a/net/9p/client.c b/net/9p/client.c
> > index 30dd82f49b28..63f13dd1ecff 100644
> > --- a/net/9p/client.c
> > +++ b/net/9p/client.c
> > @@ -514,10 +514,10 @@ static int p9_check_errors(struct p9_client *c, struct p9_req_t *req)
> >  	int ecode;
> >  
> >  	err = p9_parse_header(&req->rc, NULL, &type, NULL, 0);
> > -	if (req->rc.size >= c->msize) {
> > -		p9_debug(P9_DEBUG_ERROR,
> > -			 "requested packet size too big: %d\n",
> > -			 req->rc.size);
> > +	if (req->rc.size > req->rc.capacity && !req->rc.zc) {
> > +		pr_err(
> > +			 "requested packet size too big: %d does not fit %ld (type=%d)\n",
> > +			 req->rc.size, req->rc.capacity, req->rc.id);
> 
> Haven't seen this style before -- is that what qemu uses?
> We normally keep the message on first line and align e.g.

Lazy me, I haven't run checkpatch.pl this time. I'll fix that.

I also have to fix the format specifier for `capacity` that kernel test bot
barked on.

> > +             pr_err("requested packet size too big: %d does not fit %ld (type=%d)\n",
> > +                    req->rc.size, req->rc.capacity, req->rc.id);
> 
> (at least what's what other grep -A 1 'pr_err.*,$' seem to do, and
> checkpatch is happier with that)





_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
