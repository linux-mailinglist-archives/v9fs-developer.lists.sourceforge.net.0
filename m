Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C87005477B9
	for <lists+v9fs-developer@lfdr.de>; Sat, 11 Jun 2022 23:43:35 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1o08tJ-0001l1-6r; Sat, 11 Jun 2022 21:43:32 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <asmadeus@codewreck.org>) id 1o08tH-0001kt-Fd
 for v9fs-developer@lists.sourceforge.net; Sat, 11 Jun 2022 21:43:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=bvw6fpwdTV3SdbFGxdCekho4gJarBysiPQpYO63U+ic=; b=kn91U6TfeJZtbCpfiYwPGw9Rim
 8rd3vkD1E2y0eCZlfEJQVivFzmMV83J02uGUkrN2CFG+WKWxHwV/fxEEXFp+hcOAAk8D6oP5h9YqY
 VeG7dn8Qzh97FR6kQLeLqB2ZkfBovnzCnRBJ1G7lAs/FXd+YIfYzXnLTwz3BekCY0ikU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=bvw6fpwdTV3SdbFGxdCekho4gJarBysiPQpYO63U+ic=; b=OlLzPohjm03s5jLlQ66NCmo4Wj
 8JIcfwxIAg9jmBAdi6xc7HE4nu8TVKgeKmTtyMnXYqermb11HRjviBiReXQGINM8iEV6RWQ9MUC1o
 gySGtOjSQ9wirizla1ByzheaINGEWt5KozCwQaK3JFcQstjbs2b12rmRD+KQ8lxfzl3o=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1o08tC-00FJje-Bk
 for v9fs-developer@lists.sourceforge.net; Sat, 11 Jun 2022 21:43:30 +0000
Received: by nautica.notk.org (Postfix, from userid 108)
 id 206E5C01A; Sat, 11 Jun 2022 23:43:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1654983798; bh=bvw6fpwdTV3SdbFGxdCekho4gJarBysiPQpYO63U+ic=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=IvqPhNv4qX/hFjV3+mci219xaVbtZK4VnYxnHkTTKrsES9W6CYiZbTGEAQl3OU4LB
 Op2g9f4k6sr0W+mvdWkMdGAW8zM9EyrNtyURYiCiufpbgzY4F4JphsFS/MbMHLqYuI
 jauwvaGTrKDlXoS4KZ3KSSgvmIom5RRJzjV33BNzMJ2AL8MjqJ069IfBgHqTfkph8w
 QIoyVKGjsssBtTSsROVBuQu38xAOghjt/4h1F8NpAupJFhQFncfkzaMFfosBQ7YbtE
 ohOrAo/8KO70m7jgblgvpANpVXuh6nobwpeVh4LoRrBhBvbZf+f7HW32BFiw1oKPk9
 ktcXK6x7m+seQ==
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on nautica.notk.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=UNPARSEABLE_RELAY
 autolearn=unavailable version=3.3.2
Received: from odin.codewreck.org (localhost [127.0.0.1])
 by nautica.notk.org (Postfix) with ESMTPS id B96C7C009;
 Sat, 11 Jun 2022 23:43:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1654983797; bh=bvw6fpwdTV3SdbFGxdCekho4gJarBysiPQpYO63U+ic=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=v7JUyo/Bpzv7XK3Jrw4a717BWUdSVz7IoptGPFjYP9lJFNYPrkPwO/TvfKPD/U0D3
 B7rX7ik3Cz9RsJ2bW4iH3fmk4/tFC3TvHLnOvKKAIZgSjDHCfo7mHs27qFopVJNkig
 vrlhFJmHW1GX1G9Nz4XtD/BMnSYw1rxOr8VNTi5P4K+TbQ76S2O39xcnzYv2gc6Sum
 cEFQeFzsagw4/9kPpWjSuFltnhVfJIvbyZbUnnFowBAh2R5iF4ZA3RX/TyD9gVVjcD
 GCFMD984koaK6YNO6RQRzGWfjF32XrGcC8fGzTd/g6Fkbpds9UQnwvoq/lSBlXpW+g
 TAjFg+v4KqI4g==
Received: from localhost (odin.codewreck.org [local])
 by odin.codewreck.org (OpenSMTPD) with ESMTPA id e7b3bd2d;
 Sat, 11 Jun 2022 21:43:13 +0000 (UTC)
Date: Sun, 12 Jun 2022 06:42:58 +0900
From: Dominique Martinet <asmadeus@codewreck.org>
To: Al Viro <viro@zeniv.linux.org.uk>
Message-ID: <YqUMYpqYiKOeEoha@codewreck.org>
References: <YqDfWho8+f2AXPrj@zeniv-ca.linux.org.uk>
 <YqSYWgeQqenOYwVf@codewreck.org>
 <YqSyaz0GNdZbu1bx@zeniv-ca.linux.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YqSyaz0GNdZbu1bx@zeniv-ca.linux.org.uk>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Al Viro wrote on Sat, Jun 11, 2022 at 03:19:07PM +0000: >
 > That makes me wonder just how much use we get for the legacy > > protocols
 -- I guess we do have some but all the filesystem-y > > implement [...] 
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
X-Headers-End: 1o08tC-00FJje-Bk
Subject: Re: [V9fs-developer] [RFC][CFT] handling Rerror without
 copy_from_iter_full()
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
Cc: linux-fsdevel@vger.kernel.org, v9fs-developer@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Al Viro wrote on Sat, Jun 11, 2022 at 03:19:07PM +0000:
> > That makes me wonder just how much use we get for the legacy
> > protocols -- I guess we do have some but all the filesystem-y
> > implementations that I would expect to be main users for large
> > IOs/zc are 9P2000.L as far as I know -- especially considering
> > virtio is pretty much limited to qemu? Are there other 9p virtio
> > servers?
> 
> Client can trivially force its use - -o version=9p2000.u and there
> you go...

Well, yes, but qemu supports .L -- even if we arbitrarily decide .u
won't go through the zero-copy path it's not going to harm the VM case.

If zc had been a thing for e.g. trans_fd there are plenty of servers
that could still be only used with older variants, but I don't think we
have to try supporting 9p2000.u + zc if it's a burden in the code.

> > Silly question, in case of a pipe we'll have written something we
> > shouldn't have, or is it not gone yet until we actually finish the IO
> > with iov_iter_advance?
> > (my understanding is that reader won't have anything to read until
> > someone else does the advance, and that someone else will have
> > overwritten the data with their own content so no garbage wlll be read)
> 
> More than that, pipe is locked through ->read_iter(), so transient garbage
> in it doesn't matter - we will either advance it by zero (it's an error)
> or, with iov_iter_get_pages_alloc() switching to advancing variant,
> we'll revert by the amount it had reserved there (error is the same as
> extremely short read).

Ok, thanks

> > ... With that said though your approach here definitely looks better
> > than what we currently have -- my main issue is that truncating is fine
> > for the original 9p2000 but for .U you'd be losing the ecode that we
> > currently trust for being errno-compatible.
> 
> No, we wouldn't - this
>                 len = req->rc.size - req->rc.offset;
> 		if (len > (P9_ZC_HDR_SZ - 7)) {
> 			err = -EFAULT;
> 			goto out_err;
> 		}
> in p9_check_zc_errors() means that mainline won't even look at that value.
> And we'll get the same -EFAULT when we get to
>                 err = p9pdu_readf(&req->rc, c->proto_version, "s?d",
> 				  &ename, &ecode);
> in p9_check_errors() and see that the length of string is too large to
> fit into (truncated) reply.


Right, I forgot the string itself has a size, so we're not looking at
the last bytes but something that is no longer there and readf will
fail. Ok.

Sure, I don't see any other problem with this code.
I still think it's complexity we don't really need, but it's better than
what we have -- care to resend it as a real patch? and I'll apply/run
through some basic tests with qemu+2000u a bit.
(well, I don't have to wait to run the tests)

-- 
Dominique


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
