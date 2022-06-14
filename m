Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4ED9354B32D
	for <lists+v9fs-developer@lfdr.de>; Tue, 14 Jun 2022 16:28:37 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1o17X0-0001pQ-KO; Tue, 14 Jun 2022 14:28:35 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <asmadeus@codewreck.org>) id 1o17Wz-0001pA-1z
 for v9fs-developer@lists.sourceforge.net; Tue, 14 Jun 2022 14:28:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=yAoaM3WVMZZxJ+LV3cWyu5SL2IaFaK4FrSuNs/YyNhQ=; b=UeHiWE3CI1Xvg56KKcOaWge4nc
 0Zh1jdJtx6utV0XJ9lFjtssZkwmpmpceS5hY+Z1Wy9ZhOXTLFGwlALuWzmKt8AIhAVCLP2jGW5DPO
 rLe6KgChXUPjFYnSruR3kDcg7gLt7Y59LjDhmaADUiDeqWBnTMnunD69U7kN0JOHKkEM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=yAoaM3WVMZZxJ+LV3cWyu5SL2IaFaK4FrSuNs/YyNhQ=; b=SB8vOiL23t+4mHRRMmC4G3pVTW
 b/jnmQ3YXlThdll38GV3kCYjomFHErwA2qVdqVN0rhcSkP09dDIpAFncsklwZRR/r9y9qvHr3rj/c
 B6ohHvnrsRC4M9HperGN+yVQMdvwvDSTlQglLKsGyeAUnb7ZfDSbzxXv8RmWrImIOqHA=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1o17Ws-001LeY-UQ
 for v9fs-developer@lists.sourceforge.net; Tue, 14 Jun 2022 14:28:33 +0000
Received: by nautica.notk.org (Postfix, from userid 108)
 id 7F565C020; Tue, 14 Jun 2022 16:28:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1655216900; bh=yAoaM3WVMZZxJ+LV3cWyu5SL2IaFaK4FrSuNs/YyNhQ=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Fe26ntZMxrht4o7gA1fYpW51vtB2R+rnoapoPPwL38kNO4flg2zegOLVRaZCPncjp
 R+1hKVow633DVXnW2rqqRk5wKLslIrGjXpPDWCNB2VwwyZrwxzrhpXHUnS/rV7r44O
 tHUDUX+oVCSGSkEPbcRTXS/hKhGJLbNkSHuTym1UUXXwiwdaYk7DVrcAcOFuUhzqbl
 B+h9PPWJ+RljxRRXmTvhX3f6sxwgrIEPQD/b/rnzi4Gjm2Ly6zuvw9YaE+ZjVW31i0
 TGJx0NTeswofPTruqC6D9+kvhN33QzRIYdmi2riPikVigkQ7Ae/qliOYJ7952R7GYz
 I5KF96AdkBKCQ==
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on nautica.notk.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=UNPARSEABLE_RELAY
 autolearn=unavailable version=3.3.2
Received: from odin.codewreck.org (localhost [127.0.0.1])
 by nautica.notk.org (Postfix) with ESMTPS id 50271C009;
 Tue, 14 Jun 2022 16:28:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1655216899; bh=yAoaM3WVMZZxJ+LV3cWyu5SL2IaFaK4FrSuNs/YyNhQ=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=4DP1tVmKf3k7VrOCUmSKlygxvN8WdSF+OPArFv5SIbtqUq8qT8OS/78jU+cc1PKLo
 4p7cmLbE+0Ewwb2jmiLTA98Mh+4EeIMdvhrp2e+kKwcBTTSS8Ndi6ayIspJV/sRHVc
 hI4LE+jPn9hYngfnkmohMMNku0G9LfpeMe0y62bAiaFZcHg54LUPV1v7alG8wZe60p
 r5wcJKnrUi+V8QMdX6RTn9mggIbTIIjwDydMsJoHPdNIJIbBleobXuSXh67OO9ULC8
 cQK49TUYg5vcmELBWRK3GzvVzmdYjpkpsvvqKyGabd97GLYviNOhMXCFz3TahHt8me
 METx1cr+9RrmQ==
Received: from localhost (odin.codewreck.org [local])
 by odin.codewreck.org (OpenSMTPD) with ESMTPA id 76306788;
 Tue, 14 Jun 2022 14:28:12 +0000 (UTC)
Date: Tue, 14 Jun 2022 23:27:57 +0900
From: Dominique Martinet <asmadeus@codewreck.org>
To: Christian Schoenebeck <linux_oss@crudebyte.com>
Message-ID: <Yqia7Xr9WAgtZ6zr@codewreck.org>
References: <20220612085330.1451496-5-asmadeus@codewreck.org>
 <20220612234557.1559736-1-asmadeus@codewreck.org>
 <7044959.MN0D2SvuAq@silver>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <7044959.MN0D2SvuAq@silver>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Thanks for the reviews :) Christian Schoenebeck wrote on Tue,
 Jun 14, 2022 at 03:55:39PM +0200: > On Montag, 13. Juni 2022 01:45:54 CEST
 Dominique Martinet wrote: > > I was recently reminded that it is not clear
 that p9_client [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1o17Ws-001LeY-UQ
Subject: Re: [V9fs-developer] [PATCH v2 04/06] 9p fid refcount: add
 p9_fid_get/put wrappers
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
 Tyler Hicks <tyhicks@linux.microsoft.com>,
 v9fs-developer@lists.sourceforge.net, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net


Thanks for the reviews :)

Christian Schoenebeck wrote on Tue, Jun 14, 2022 at 03:55:39PM +0200:
> On Montag, 13. Juni 2022 01:45:54 CEST Dominique Martinet wrote:
> > I was recently reminded that it is not clear that p9_client_clunk()
> > was actually just decrementing refcount and clunking only when that
> > reaches zero: make it clear through a set of helpers.
> > 
> > This will also allow instrumenting refcounting better for debugging
> > next patch, which is the reason these are not defined as static inline:
> > we won't be able to add trace events there...
> 
> Looks like you forgot to adjust the commit log sentence here, ...
> 
> > Signed-off-by: Dominique Martinet <asmadeus@codewreck.org>
> > ---
> > v1 -> v2: p9_fid_get/put are now static inline in .h
> 
> ... as the two functions are in fact static inlined in this v2 now.

Good point, will fix!


> > diff --git a/include/net/9p/client.h b/include/net/9p/client.h
> > index ec1d1706f43c..9fd38d674057 100644
> > --- a/include/net/9p/client.h
> > +++ b/include/net/9p/client.h
> > @@ -237,6 +237,24 @@ static inline int p9_req_try_get(struct p9_req_t *r)
> > 
> >  int p9_req_put(struct p9_req_t *r);
> > 
> > +static inline struct p9_fid *p9_fid_get(struct p9_fid *fid)
> > +{
> 
> Isn't this missing a check here?
> 
>     if (!fid)
>         return NULL;

It doesn't really make sense to get a null or error fid: whatever wants
to take a ref will error out first, so this didn't get a check unlike
put, which is nice to use without `if (fid && !IS_ERR(fid)) put(fid)`
all the time.


> 
> > +	refcount_inc(&fid->count);
> > +
> > +	return fid;
> > +}
> > +
> > +static inline int p9_fid_put(struct p9_fid *fid)
> > +{
> > +	if (!fid || IS_ERR(fid))
> > +		return 0;
> > +
> > +	if (!refcount_dec_and_test(&fid->count))
> > +		return 0;
> > +
> > +	return p9_client_clunk(fid);
> > +}
> > +
> 
> I don't know the common symbol name patterns in the Linux kernel for acquiring
> and releasing counted references are (if there is a common one at all), but I
> think those two functions deserve a short API comment to make it clear they
> belong together, i.e. that a p9_fid_get() call should be paired with
> subsequent p9_fid_put(). It's maybe just nitpicking, as the code is quite
> short and probably already speaks for itself.

I guess "but none of the other 50 functions do!" isn't a good reason not
to start, but it sure was enough to make me think it'd be silly to
document p9_fid_get/put right next to p9_req_get/put that don't have
their comment...
Better late than never though, I'll add something in v3.

As for common names you can see get/put in various places (kref_get/put,
of_node_get/put, pm_runime*_get/put) so I guess it's common enough.

> On the long-term I could imagine using automated, destructor based
> p9_fid_put() calls when leaving a block/function scope. That would simplify
> code a load and avoid leaks in future.

__attribute__(__cleanup__()) is nice but I've not seen any in linux
(looking again kcsan and locking selftests seem to be using it, I didn't
think it was allowed)...
Just making it clear goes a long way though, my last patch is a good
first step (inconditionally put'ing all fids at the end of functions and
NULLing fid pointers when stashing it in inode is pretty much what we'd
be doing if there were destructors), but I feel it's still not clear
which functions give a new ref or not cf. walk that can reuse the same
fid depending on its parameters.

I think making that clear would be a good next step for cleanup next
time there are problems and/or someone has time for it...
(But there are plenty of interesting things to check first, like the
performance regression with recent fscache perhaps...)

-- 
Dominique


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
