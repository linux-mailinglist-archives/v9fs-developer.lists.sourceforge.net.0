Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 22A001FFBEA
	for <lists+v9fs-developer@lfdr.de>; Thu, 18 Jun 2020 21:41:20 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1jm0PW-0008FQ-40; Thu, 18 Jun 2020 19:41:18 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <alexander.kapshuk@gmail.com>) id 1jm0PV-0008FK-4j
 for v9fs-developer@lists.sourceforge.net; Thu, 18 Jun 2020 19:41:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=wZg6yRbftXiW6TCni10DoNGM70aOuUyAxCGfvTDR9XU=; b=iAl68eSDbeSTrlx4VSbsGkZ9+A
 Qf1dAhA3Xd0yLHDl+kc5nnTJl2BzVxMUwDyXIN3XrLFqiWAwZSGWQim2c1XOEc4yu102F+lEmJMZu
 xzKtAPtsUZRjjXjobbuLna9tHcf5OSyTXfWDxz4AUmwfYJqm/BdlQLAxjTzC8lOk8n/I=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=wZg6yRbftXiW6TCni10DoNGM70aOuUyAxCGfvTDR9XU=; b=NO4I27mHn3eSgi7gZmxIABs11w
 SP3a76ksK5SleZRGRDuVQ7XwNs9E/B37WHKQA6qTMAB8Z6APpSsIbRdeFeFvA/HupmGMG9t2iNFut
 +lLx2M8KBQ1FhM97tUvAVZEMgsAnA7KQqK16HqzX+R8lOF4FZpOiOxiLqoT5gak9r0sY=;
Received: from mail-il1-f195.google.com ([209.85.166.195])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1jm0PT-00B5nk-Un
 for v9fs-developer@lists.sourceforge.net; Thu, 18 Jun 2020 19:41:17 +0000
Received: by mail-il1-f195.google.com with SMTP id x18so7071117ilp.1
 for <v9fs-developer@lists.sourceforge.net>;
 Thu, 18 Jun 2020 12:41:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=wZg6yRbftXiW6TCni10DoNGM70aOuUyAxCGfvTDR9XU=;
 b=jjVpbJV1ixssIdVOYNxSsU8+EfmTLuFYsg3C1ud0mv2xDTmc9ddZCS0gJMFQYgE+5u
 Gv1oOxg3fM+2wUPW/j8PTyaEwY6DRtqXMN25FtLavH0DzButhP6O1K8rJ6XrqvHm6MGb
 w2xknfQGyBdA1Dt0SruZxJD+bMDkg6RP+DM+2qYKnUbcP51gyRyRtK14g5hg0xj5nmNV
 hMgicqY4Wn8Z81f8PGUsMqNgOFXPXAE1r5rh8S21EdY94jTHm70562zS/fhpb84I9gQn
 FxiI+kSx0Q9GUDzbqFFaFODcu3aBvPN/R+Wo++oDfJjLZ3Ue30bnDl93RSKpG0cZYsnK
 J/Eg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=wZg6yRbftXiW6TCni10DoNGM70aOuUyAxCGfvTDR9XU=;
 b=M9nb1NDYIRodYDDKOgVFIpmB9UXhbqoG1vIU7KK1bCFi0wQmPxM+zWvcYoqGcfy7p3
 81QK5NvG+hmrbG/kC/3vKF7JbkIY82PqsoM3R1BsgQr33eYaMz/6RLbft0ges0oOEf73
 Gnd/9oHAFXBuw7oGQ5ZyFv5AksoSp7bKFgGV+CiUq3Sz/h33OsWaUHwbb4mS99nSKRTW
 wnAQjoQwIQYL9PL0vXdWmQFDa+PSoqksP1rvOGGh8OWMMQBrYnnHSxTICc8aCVcyOdLp
 ckj+KwjnMOCa19Nt3c+hpGZemJBzoAHdDilCaI++C/m9+VvqlOpgk+K74ad9GMmja6g0
 Zrsg==
X-Gm-Message-State: AOAM531v4e6TVrfLmeqLcjh4T9UQJQUCY35FfRZm2j+rmB5FST0dkJi3
 SLygqYuoACCBaPxv46H+HdXDhYJalkYipH3hJ70=
X-Google-Smtp-Source: ABdhPJycBUSitplzrcQ5ab7GadNEq5wup1y9ndBKlbjuu5aP4JH5PshANb+lUZSaK4NWS1wdi+Xvozb0jGgJEcC28gE=
X-Received: by 2002:a05:6e02:13c7:: with SMTP id
 v7mr99568ilj.230.1592509270309; 
 Thu, 18 Jun 2020 12:41:10 -0700 (PDT)
MIME-Version: 1.0
References: <20200618183310.5352-1-alexander.kapshuk@gmail.com>
 <20200618190807.GA20699@nautica>
In-Reply-To: <20200618190807.GA20699@nautica>
From: Alexander Kapshuk <alexander.kapshuk@gmail.com>
Date: Thu, 18 Jun 2020 22:40:34 +0300
Message-ID: <CAJ1xhMX97LwVbTyGcV=bT2mYTPAZy=cU5SKtzYYqH4jbT_qPGw@mail.gmail.com>
To: Dominique Martinet <asmadeus@codewreck.org>
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.166.195 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (alexander.kapshuk[at]gmail.com)
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: codewreck.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.195 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1jm0PT-00B5nk-Un
Subject: Re: [V9fs-developer] [PATCH] net/9p: Fix sparse rcu warnings in
 client.c
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
Cc: lucho@ionkov.net, ericvh@gmail.com, netdev@vger.kernel.org,
 linux-kernel <linux-kernel@vger.kernel.org>, kuba@kernel.org,
 v9fs-developer@lists.sourceforge.net, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Thu, Jun 18, 2020 at 10:08 PM Dominique Martinet
<asmadeus@codewreck.org> wrote:
>
> Alexander Kapshuk wrote on Thu, Jun 18, 2020:
> > Address sparse nonderef rcu warnings:
> > net/9p/client.c:790:17: warning: incorrect type in argument 1 (different address spaces)
> > net/9p/client.c:790:17:    expected struct spinlock [usertype] *lock
> > net/9p/client.c:790:17:    got struct spinlock [noderef] <asn:4> *
> > net/9p/client.c:792:48: warning: incorrect type in argument 1 (different address spaces)
> > net/9p/client.c:792:48:    expected struct spinlock [usertype] *lock
> > net/9p/client.c:792:48:    got struct spinlock [noderef] <asn:4> *
> > net/9p/client.c:872:17: warning: incorrect type in argument 1 (different address spaces)
> > net/9p/client.c:872:17:    expected struct spinlock [usertype] *lock
> > net/9p/client.c:872:17:    got struct spinlock [noderef] <asn:4> *
> > net/9p/client.c:874:48: warning: incorrect type in argument 1 (different address spaces)
> > net/9p/client.c:874:48:    expected struct spinlock [usertype] *lock
> > net/9p/client.c:874:48:    got struct spinlock [noderef] <asn:4> *
> >
> > Signed-off-by: Alexander Kapshuk <alexander.kapshuk@gmail.com>
>
> Thanks for this patch.
> From what I can see, there are tons of other parts of the code doing the
> same noderef access pattern to access current->sighand->siglock and I
> don't see much doing that.
> A couple of users justify this by saying SLAB_TYPESAFE_BY_RCU ensures
> we'll always get a usable lock which won't be reinitialized however we
> access it... It's a bit dubious we'll get the same lock than unlock to
> me, so I agree to some change though.
>
> After a second look I think we should use something like the following:
>
> if (!lock_task_sighand(current, &flags))
>         warn & skip (or some error, we'd null deref if this happened currently);
> recalc_sigpending();
> unlock_task_sighand(current, &flags);
>
> As you can see, the rcu_read_lock() isn't kept until the unlock so I'm
> not sure it will be enough to please sparse, but I've convinced myself
> current->sighand cannot change while we hold the lock and there just are
> too many such patterns in the kernel.
>
> Please let me know if I missed something or if there is an ongoing
> effort to change how this works; I'll wait for a v2.
>
> --
> Dominique

Thanks for your prompt response.
I too made the same observation of the numerous patterns in the kernel
where current->sighand is accessed without being rcu_dereference()'d.
For this patch I used kernel/signal.c:1368,1398: __lock_task_sighand()
as an example.

I will give your suggestion a careful consideration and will get back
to you soon.
Thanks.


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
