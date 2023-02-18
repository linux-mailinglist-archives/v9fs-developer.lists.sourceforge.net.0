Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EDEF69BE02
	for <lists+v9fs-developer@lfdr.de>; Sun, 19 Feb 2023 00:52:40 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1pTX0Q-0008Be-DI;
	Sat, 18 Feb 2023 23:52:37 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <ericvh@gmail.com>) id 1pTX0O-0008Af-3P
 for v9fs-developer@lists.sourceforge.net;
 Sat, 18 Feb 2023 23:52:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=IurkXbKU0Uh98z15pjTpabseFIcGPSYDg4/lF+reuT8=; b=S2vAm/Qm1REv/HjfaHq3lFzIY0
 58ElEh7MQjOyZvDlmF575q+HRpROJZ8UjkjMkvSqCkLLpCpnXxjNHXZz3jXANlHFE3fz43pL7hZKc
 k2rYyTrkUymIW6PFzeHu0JOi17OO9SQJO9foGkK3aRd1ERsHIKYgo6ecYpF4NUDg2MG0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=IurkXbKU0Uh98z15pjTpabseFIcGPSYDg4/lF+reuT8=; b=kCKE1I7YuA4XO5cS5fXtrhTN/F
 dbyGODVAHEl22TsXpB66yKyr+M7DO14JYij9R2jIjg2vRZdVsuFPdCegtO8iZMlvmooYC0qUgVOX7
 QEFeIyK/m4lOgUJiuFROr+uVTHSUAsGrb+EcTP7QCl1/qUnMurV70felomn3pRqEg0IA=;
Received: from mail-wr1-f42.google.com ([209.85.221.42])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1pTX0L-0006po-TZ for v9fs-developer@lists.sourceforge.net;
 Sat, 18 Feb 2023 23:52:35 +0000
Received: by mail-wr1-f42.google.com with SMTP id 2so1331958wrz.9
 for <v9fs-developer@lists.sourceforge.net>;
 Sat, 18 Feb 2023 15:52:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=IurkXbKU0Uh98z15pjTpabseFIcGPSYDg4/lF+reuT8=;
 b=YpVpz5quK/a/7tlf5VJ5LyciKVDsd1Ti5rU6fYEcWynldxAGJOALY8HKG3yuZsVG93
 7sBeOCfsSKZfyghJCDzalxWBKuimOXRxb6t42o43EjRdgCJZWBZarPIahPzXEnBoyCPG
 1bXDLI7bn4V5a+bvNob/U88FUWgTfNJa1FhioateqoAPcfvfc6SwDsrBwawX3mMA19d5
 N8A/s+yCkyBpSuw768NJcc/XLlmONEFle1cuVn3nrtUr6kpO2QPZgLLfjuY8pMwl9nMu
 G79aEGf/LZ6BLlfxT9fumix7aHHNpbhpgUYN1IQSCEUAmdwdPyi7dGCE7lQolDTmTBgT
 VtRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=IurkXbKU0Uh98z15pjTpabseFIcGPSYDg4/lF+reuT8=;
 b=Mvrt2c4umQs3fXh+Fmfl6xwZAjqTv9aA5PSne5/M/ELAnGIDhOYLaAHaf0jWude2QG
 xKynLk7xh7eidwuob3RStFE5V2o/uq9oUA1nLTqYoaeV7dXcZFyRuOvaM6yKDkqNEhcw
 d6R5q5ny6/l5df64t0cETiYThWWQ/3EDRRcduNKIp6lVaZrGGPkZzmrLI/r9dVYzZy1i
 gvtNALxILy9pb6iankjTPvhDpMzaJxl6xIQ9Uyt0XXNUTavTb68uxrpzEy6VdhJaaCnc
 IQ1k8YuzcDRvtSktIv/hD8Jl/bYfo/LX1pvu3cyNq7QmX1ijNzmJv3kvcOgjoMNYsnny
 Mzcg==
X-Gm-Message-State: AO0yUKUKSS68xipApvzEooJ6Nln6HFtVFZzirbNOARMetI0XJCJZazeA
 GEnDGw4p85VDKLvL5ca7GaMMSpQe4nQQalm4Mu8=
X-Google-Smtp-Source: AK7set/QUBNYJTCrFvPrvhPkeriY10NgFjgJ/EyfJdnqvzsBmCnhzu5m6ImJ2NA+FxPAHvt39xWFfobvOrt+gn978L4=
X-Received: by 2002:a5d:6e8a:0:b0:2c5:50db:e9fc with SMTP id
 k10-20020a5d6e8a000000b002c550dbe9fcmr63254wrz.674.1676764347865; Sat, 18 Feb
 2023 15:52:27 -0800 (PST)
MIME-Version: 1.0
References: <20230124023834.106339-1-ericvh@kernel.org>
 <20230218003323.2322580-11-ericvh@kernel.org>
 <Y/Ch8o/6HVS8Iyeh@codewreck.org> <1983433.kCcYWV5373@silver>
 <CAFkjPT=xhEEedeYcyn1FFcngqOJf_+8ynz4zeLbsXPOGoY6aqw@mail.gmail.com>
 <Y/FiBbMQcEblQ/XR@codewreck.org>
In-Reply-To: <Y/FiBbMQcEblQ/XR@codewreck.org>
From: Eric Van Hensbergen <ericvh@gmail.com>
Date: Sat, 18 Feb 2023 17:52:15 -0600
Message-ID: <CAFkjPTk5GYk4mDR2+OcU1qsaW8Z7c-H8PQpJ0NrfgZRkx-4udA@mail.gmail.com>
To: asmadeus@codewreck.org
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Sat, Feb 18, 2023 at 5:41 PM wrote: > > For clarity though
 I'd use writeback in the documentation, and keep mmap > as a legacy mapping
 just for mount opts parsing; the behaviour is > slightly dif [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.221.42 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [ericvh[at]gmail.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.221.42 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-Headers-End: 1pTX0L-0006po-TZ
Subject: Re: [V9fs-developer] [PATCH v4 10/11] fs/9p: writeback mode fixes
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
Cc: lucho@ionkov.net, Christian Schoenebeck <linux_oss@crudebyte.com>,
 linux-kernel@vger.kernel.org, rminnich@gmail.com,
 linux-fsdevel@vger.kernel.org, v9fs-developer@lists.sourceforge.net,
 Eric Van Hensbergen <ericvh@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Sat, Feb 18, 2023 at 5:41 PM <asmadeus@codewreck.org> wrote:
>
> For clarity though I'd use writeback in the documentation, and keep mmap
> as a legacy mapping just for mount opts parsing; the behaviour is
> slightly different than it used to be (normal read/writes were sync) so
> it's good to be clear about that.
>

Yeah, that was my intent in the current form -- although it did occur to me
that at some point we might want something subtly different for mmap,
however, I couldn't ever work out in my head if there would be any way to
be consistent if we had mmap but no transient caching -- I guess one form
would be to only cache/buffer while file is mmapped which we should be
able to track and in that way it could be distinct from the others.

>
> Separating the two makes sense implementation-wise as well, I like this
> idea.
> What would the difference be between file_cache=writeback and loose?
> Do you plan some form of revalidation with writeback, e.g. using qid
> version that loose wouldn't do? (sorry if it's already done, I don't
> recall seeing that)
>

It would mostly have to do with when we validate the cache.  Loose
essentially means NEVER validate the cache and assume the cache
is always correct.  But in the file_cache= case we would only do it
for file contents
and not directory.

> fscache is currently a cache option but it's pretty much unrelated, we
> can have it as a separate option and alias cache=fscache to
> `file_cache=writeback(loose),dir_cache=loose,fscache=on`
> but on its own it ought to work with any level of file_cache and no
> dir_cache...
> The test matrix will be fun, though :|
>

Yeah - feels like fscache should just be seperate, but then it can follow
the consistency policies of file and/or dir as to when to revalidate with
server.

Test matrix is already a nightmare :). Right now I have a simple one
with multiple fstabs for various options (which I feed in with cpu), but
I'm gonna add this into my python notebook script so I can explore
all options (and all config options for 9p in the kernel configs) -- but
probably keep a smoke test "quick" regression as well.

> > It struck me as well with xattr enabled we may want to have separate
> > caches for xattr caching since it generates a load of traffic with
> > security on.
>
> xattr caching currently isn't done at all afaik, and it'd definitely
> make sense with any kind of dir_cache... That'd likely halve the
> requests for some find-like workloads.
> Probably another new option as well..

Yeah, I was going to tackle this after the dir cache stuff is fixed up.

      -eric


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
