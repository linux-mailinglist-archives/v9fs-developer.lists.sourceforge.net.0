Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 40CF463D6A1
	for <lists+v9fs-developer@lfdr.de>; Wed, 30 Nov 2022 14:26:36 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1p0N6g-0002yz-75;
	Wed, 30 Nov 2022 13:26:34 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <linux_oss@crudebyte.com>) id 1p0N6T-0002ym-W3
 for v9fs-developer@lists.sourceforge.net;
 Wed, 30 Nov 2022 13:26:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Content-Transfer-Encoding:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=a26lIzJ4dptbrOGi0GFPN+IgCtoaj1aHi7+e9iGicfE=; b=UdaYv1cSsyEjJaCkx038kbEwpk
 ns4Ep6uIajsvHxqIj0bgsY2yHkGQ2/Utf4QwKcPcGO8BizUZQ+GHnD+tMlJGU/V3OG0BU+tOzqAP/
 idPlmz97+d+ogo8dbEGeUxZNJzHiO+0Qjst1NiaK3horzlJzvb7XN8dC3CKSVBKVOCSs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=a26lIzJ4dptbrOGi0GFPN+IgCtoaj1aHi7+e9iGicfE=; b=jJWCk63Z4/tKV+3Ayi18qjWYAL
 6UZ1qDFij0AIa+9eU9ywTxXlCpH6tWUkIHrls4v+PkUOTy/Mzr87bXKROj5FIIYUBJ/VlLC1yMq9R
 ZtcfVWtAh/EBSfvaLrQ2eqL9lLGgXw0dRiiM00INXcpX8M2tWN2ZOG9RqMQwZE1mr2BE=;
Received: from kylie.crudebyte.com ([5.189.157.229])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1p0N6P-001R8Y-JB for v9fs-developer@lists.sourceforge.net;
 Wed, 30 Nov 2022 13:26:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=crudebyte.com; s=kylie; h=Content-Type:Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
 Content-ID:Content-Description;
 bh=a26lIzJ4dptbrOGi0GFPN+IgCtoaj1aHi7+e9iGicfE=; b=Kh/Dn3L6ycIIXU8wsJwzKY4WSB
 n+TEVb/X6z4AQG7GQETxE4KLClWaBBdYGqh3moY/8eXeLWYyzYVdJYrKl9VwdRA5DqNr6UvAkwmfU
 1mhRdHE7RYfBbJch9V3b0RNBzWimGXhpAw2ALBYb+9msmuVLi5dfZJtLF6F2LjHZq0yZE+chlJARm
 8uXqBLI+5D9/1knP7f3r62PqMHC2o4v9QLjHSAXjAQL8hcGvIqCYxOxZpdGAGaMPBo+LQu+4dAISS
 T6Vyfh3srdvx9KXruov3YrsZ3KfK1jyGrENJZKCjruMqWNQwVTNgLrCsOTZFfNXi2jtxV+ZOusJPq
 ynaNQii5LHhImkDbtw5BUzCAaCQ569TzySiksa4vynILiD9/WD1AlTFQH5cREfi8eBeLycPrild1X
 NlDRCAQQjE7dM7MYT8ULcvKcCmzn6ZG70UncJlxMitrUfKlCGxN09UO2PP31I1xgbm/kY44vRqyNc
 jwMRvUtQL/h1tBPwHktbtGBCj1xnyFBi7flXuDcrBLnOhWCEvUzX7jBRE6Y7TJPtt6flhTqzPAAuK
 q054eLNaGDGQCbPxRpoHATanim4e1XBYxMswLuxOo2Ho28gqyBgxYJu5IZhkeBMTkm7JFt6kGD4kV
 l/m7NFeqp6tLl4Q0DtONOEybY/kpXJGTn+4OeakxE=;
To: asmadeus@codewreck.org
Date: Wed, 30 Nov 2022 14:25:59 +0100
Message-ID: <4084178.bTz7GqEF8p@silver>
In-Reply-To: <Y4dSfYoU6F8+D8ac@codewreck.org>
References: <20221129162251.90790-1-schspa@gmail.com>
 <2356667.R3SNuAaExM@silver> <Y4dSfYoU6F8+D8ac@codewreck.org>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Wednesday, November 30,
 2022 1:54:21 PM CET asmadeus@codewreck.org
 wrote: > Christian Schoenebeck wrote on Wed, Nov 30, 2022 at 01:43:20PM +0100:
 > > > > As for the release case, the next request w [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: crudebyte.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-Headers-End: 1p0N6P-001R8Y-JB
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
From: Christian Schoenebeck via V9fs-developer
 <v9fs-developer@lists.sourceforge.net>
Reply-To: Christian Schoenebeck <linux_oss@crudebyte.com>
Cc: lucho@ionkov.net, syzbot+8f1060e2aaf8ca55220b@syzkaller.appspotmail.com,
 Schspa Shi <schspa@gmail.com>, ericvh@gmail.com, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, edumazet@google.com,
 v9fs-developer@lists.sourceforge.net, kuba@kernel.org, pabeni@redhat.com,
 davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Wednesday, November 30, 2022 1:54:21 PM CET asmadeus@codewreck.org wrote:
> Christian Schoenebeck wrote on Wed, Nov 30, 2022 at 01:43:20PM +0100:
> > > > As for the release case, the next request will have the same tag with
> > > > high probability. It's better to make the tag value to be an increase
> > > > sequence, thus will avoid very much possible req reuse.
> > > 
> > > I'd love to be able to do this, but it would break some servers that
> > > assume tags are small (e.g. using it as an index for a tag array)
> > > ... I thought nfs-ganesha was doing this but they properly put in in
> > > buckets, so that's one less server to worry about, but I wouldn't put
> > > it past some simple servers to do that; having a way to lookup a given
> > > tag for flush is an implementation requirement.
> > 
> > I really think it's time to emit tag number sequentially. If it turns out that
> > it's a server that is broken, we could then simply ignore replies with old/
> > unknown tag number. It would also help a lot when debugging 9p issues in
> > general when you know tag numbers are not re-used (in near future).
> > 
> > A 9p server must not make any assumptions how tag numbers are generated by
> > client, whether dense or sparse, or whatever. If it does then server is
> > broken, which is much easier to fix than synchronization issues we have to
> > deal with like this one.
> 
> Well, it's a one line change: just replace the idr_alloc in the else
> branch of p9_tag_alloc with idr_alloc_cyclic.
> But linux has an history of not breaking userspace, even if it's broken.
> One could argue that the server side of a networked protocol isn't
> as tightly coupled but I still think we should be careful with it --
> adding a new mount option to rever to the old behaviour at the very
> least.

+1 for the mount option.

> I'm also not convinced it'd fix anything here, we're not talking about a
> real server but about a potential attacker -- if a reply comes in with
> the next tag while we're allocating it, we'll get the exact same problem
> as we have right now.
> Frankly, 9p has no security at all so I'm not sure this is something we
> really need to worry about, but bugs are bugs so we might as well fix
> them if someone has the time for that...
> 
> Anyway, I can appreciate that logs will definitely be easier to read, so
> an option to voluntarily switch to cyclic allocation would be more than
> welcome as a first step and shouldn't be too hard to do...

I would actually do it the other way around: generating continuous sequential
tags by default and only reverting back to dense tags if requested by mount
option.

Is there any server implementation known to rely on current dense tag
generation?

If there is really some exotic server somewhere that uses e.g. a simple
constant size array to lookup tags and nobody is able to replace that array by
a hash table or something for whatever reason, then I am pretty sure that
server is limited at other ends as well (e.g. small 'msize'). So what we could
do is adjusting the default behaviour according to the other side and allow to
explicitly set both sequential and dense tags by mount option (i.e. not just
a boolean mount option).

Best regards,
Christian Schoenebeck




_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
