Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C1B763D609
	for <lists+v9fs-developer@lfdr.de>; Wed, 30 Nov 2022 13:54:58 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1p0Mc4-0008Np-AI;
	Wed, 30 Nov 2022 12:54:56 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <asmadeus@codewreck.org>) id 1p0Mc1-0008Ne-36
 for v9fs-developer@lists.sourceforge.net;
 Wed, 30 Nov 2022 12:54:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=sh34+7lh2fTDO49r8VZu83HKmBn9XRjerEgAkN6tIEM=; b=K/Hgz2yY9+FVDO4peihB7Kj1Q9
 VdNzP2WU75+SSaDESc4+VmjtOXZ/VsfxObWlgf2dbmoJO5ETjuABVe7Qs79qcU7HibLTgyeNbYT4D
 DOfLxL+sTcYk4cokoiHFQkH8wTuMk+zqO2KE9c4QMviNrjGl5xE14ZnN+0t9Gj+T49jA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=sh34+7lh2fTDO49r8VZu83HKmBn9XRjerEgAkN6tIEM=; b=eqy3+Pgve/a3on4XbdiqM9jsRP
 xL5lyE8odVrT5ByUdUwVw5ibMwGvRyJrW2g63oLU/fU3rSLUKlOVK/ZRYw5VAV7KdmiWbzv7Btf2j
 lK2OjFojfiE3JwjCB56S4Gdp9bGOqvtJWFvj+uaEGChVUIXeuFVc4UR9jl3D0R0dH+ww=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1p0Mby-0007gr-Rp for v9fs-developer@lists.sourceforge.net;
 Wed, 30 Nov 2022 12:54:53 +0000
Received: by nautica.notk.org (Postfix, from userid 108)
 id 1FB1BC021; Wed, 30 Nov 2022 13:54:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1669812892; bh=sh34+7lh2fTDO49r8VZu83HKmBn9XRjerEgAkN6tIEM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=R2VgATjg/c6jZM/DKWUgnTwqUhg4Iwzc++IgGL9WrmXAmwyGDAeVgwkxGu6ON/YzN
 TllaExd+gHQjTCxTazomBDH4yZhS7BBgRfn/VCyD6q+nedWv7jz2YYG0jjEEavVbtS
 Lw+LQwVuwOrsNKmr8eEu/rk8xN7DleACoabN+HVIwJOiEh2Ozt9THL81Fh0j8GJ/N8
 b4QisLvJZhhAY6QpGAxNtCxZyY59MOce/5C8J/xr8MvCUoeDZODDfaZ1Fa7nbVj8WM
 lAOBTulcBk4X/mLWHXrrRKdz42ZqMqwTBAiZL9Z6IDaaeLhc6GXjFzP3eTEqPXcCu8
 imVO41MpaZkwg==
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on nautica.notk.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=UNPARSEABLE_RELAY
 autolearn=unavailable version=3.3.2
Received: from odin.codewreck.org (localhost [127.0.0.1])
 by nautica.notk.org (Postfix) with ESMTPS id 90068C009;
 Wed, 30 Nov 2022 13:54:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1669812891; bh=sh34+7lh2fTDO49r8VZu83HKmBn9XRjerEgAkN6tIEM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=PlvD8W9RyN0fV4z/kaCPpO0kwyi1JN/osxPTTd1SqRNduaoGuq63sXCTO6nNppvqd
 LhGBm/Ka2zP085wZl1iIHCaS8YjYN1ZfqrJvm56AuFD/0e/GXh2Deu9IQ9f9V02bcB
 kT9aiL1C4cqGntPctSSyCju/Wlxv2zLyYHS8Y4pJymXtFBDTRNNTmhBdu5MKsdhv2Z
 /zCWQ31/sFTCx+FG8gwibjWwOXLR2C8Flu7I94Zix2Gh3z+HyI3TEq79gQxnqx1z6e
 8DzVmocSBn4WM14GyUXBZjYdrvOVZETnAVpjD00FF5Ae68jOQSflMEUKwZzZQ6XAdN
 4Pm9oIZvE+wDQ==
Received: from localhost (odin.codewreck.org [local])
 by odin.codewreck.org (OpenSMTPD) with ESMTPA id 3fe9ae05;
 Wed, 30 Nov 2022 12:54:36 +0000 (UTC)
Date: Wed, 30 Nov 2022 21:54:21 +0900
From: asmadeus@codewreck.org
To: Christian Schoenebeck <linux_oss@crudebyte.com>
Message-ID: <Y4dSfYoU6F8+D8ac@codewreck.org>
References: <20221129162251.90790-1-schspa@gmail.com>
 <m2o7sowzas.fsf@gmail.com> <Y4c5N/SAuszTLiEA@codewreck.org>
 <2356667.R3SNuAaExM@silver>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <2356667.R3SNuAaExM@silver>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Christian Schoenebeck wrote on Wed, Nov 30,
 2022 at 01:43:20PM
 +0100: > > > As for the release case, the next request will have the same
 tag with > > > high probability. It's better to make the tag va [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: codewreck.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
X-Headers-End: 1p0Mby-0007gr-Rp
Subject: Re: [V9fs-developer] [PATCH] 9p: fix crash when transaction killed
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
Cc: lucho@ionkov.net, syzbot+8f1060e2aaf8ca55220b@syzkaller.appspotmail.com,
 Schspa Shi <schspa@gmail.com>, ericvh@gmail.com, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, edumazet@google.com,
 v9fs-developer@lists.sourceforge.net, kuba@kernel.org, pabeni@redhat.com,
 davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Christian Schoenebeck wrote on Wed, Nov 30, 2022 at 01:43:20PM +0100:
> > > As for the release case, the next request will have the same tag with
> > > high probability. It's better to make the tag value to be an increase
> > > sequence, thus will avoid very much possible req reuse.
> > 
> > I'd love to be able to do this, but it would break some servers that
> > assume tags are small (e.g. using it as an index for a tag array)
> > ... I thought nfs-ganesha was doing this but they properly put in in
> > buckets, so that's one less server to worry about, but I wouldn't put
> > it past some simple servers to do that; having a way to lookup a given
> > tag for flush is an implementation requirement.
> 
> I really think it's time to emit tag number sequentially. If it turns out that
> it's a server that is broken, we could then simply ignore replies with old/
> unknown tag number. It would also help a lot when debugging 9p issues in
> general when you know tag numbers are not re-used (in near future).
> 
> A 9p server must not make any assumptions how tag numbers are generated by
> client, whether dense or sparse, or whatever. If it does then server is
> broken, which is much easier to fix than synchronization issues we have to
> deal with like this one.

Well, it's a one line change: just replace the idr_alloc in the else
branch of p9_tag_alloc with idr_alloc_cyclic.
But linux has an history of not breaking userspace, even if it's broken.
One could argue that the server side of a networked protocol isn't
as tightly coupled but I still think we should be careful with it --
adding a new mount option to rever to the old behaviour at the very
least.

I'm also not convinced it'd fix anything here, we're not talking about a
real server but about a potential attacker -- if a reply comes in with
the next tag while we're allocating it, we'll get the exact same problem
as we have right now.
Frankly, 9p has no security at all so I'm not sure this is something we
really need to worry about, but bugs are bugs so we might as well fix
them if someone has the time for that...

Anyway, I can appreciate that logs will definitely be easier to read, so
an option to voluntarily switch to cyclic allocation would be more than
welcome as a first step and shouldn't be too hard to do...

-- 
Dominique


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
