Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D2C37546FF4
	for <lists+v9fs-developer@lfdr.de>; Sat, 11 Jun 2022 01:20:16 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1nznvH-00084x-J9; Fri, 10 Jun 2022 23:20:12 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <torvalds@linuxfoundation.org>) id 1nznvG-00084r-1L
 for v9fs-developer@lists.sourceforge.net; Fri, 10 Jun 2022 23:20:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=mFUZ/4X/JukFzJtRWCj5IwVqnR0commkjm8Ld9IJoQA=; b=WVACnqO7dA9TwbLkK5/QjbBBCs
 egbV9LoYlsMZCoFUA9w+VaisoOvB+h9tEvZPfA3+T5D4MkbNhYO4iUpk2qiNvJX1BH3EO/vetrp53
 Lxj0IZbeHcCBXbzTunG4vjLkO3LT9n+2uJk5RiQaav/w9trcNhL9EEJ9Pfr3bCe7Gvz4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=mFUZ/4X/JukFzJtRWCj5IwVqnR0commkjm8Ld9IJoQA=; b=N3Om5o+GSOQ5DhjS1t11Q9gQ5r
 S9NYrPngFShDZL4r+CtLwzApYHxkSgZ4Rm85PqfZQZHklXnvR6Ghe+h4ev8TL4H8Q22M5b1Su4Fo/
 lJkdEE9LKjoD3QUNQbxiMw4F/ADNhEd7tSCjldQhr0CAEUiv5UJfPuh6tNXKyzAuifYE=;
Received: from mail-ed1-f50.google.com ([209.85.208.50])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.94.2)
 id 1nznv9-00ESZ5-5L
 for v9fs-developer@lists.sourceforge.net; Fri, 10 Jun 2022 23:20:10 +0000
Received: by mail-ed1-f50.google.com with SMTP id x62so696332ede.10
 for <v9fs-developer@lists.sourceforge.net>;
 Fri, 10 Jun 2022 16:20:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux-foundation.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=mFUZ/4X/JukFzJtRWCj5IwVqnR0commkjm8Ld9IJoQA=;
 b=AoxxrgfmaiG7fB01rWVX7//fR7hc8pfPaO6KuFkmEJpDpFR/HpqhwLdFQM6dVgzan3
 DB7+Ryy9LWRyARZSjDc1y62fbB3v6E3HNwslaXd4JIbxny9dkIOf8ftYNIIBC41esAeu
 4Gv6sMSeEfJjJ4Ad3imZr/QdI/L/mCWsQLeaA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=mFUZ/4X/JukFzJtRWCj5IwVqnR0commkjm8Ld9IJoQA=;
 b=vdQq2CofubLScq00FRdiP4kDdBOZcaxHU3TGVDszTfutLdVonvANlz0kY15CT5LhxQ
 fgJbKihtcfu1XC8gi4xtMFna3vfbpSG6iwRYudUM4vymIjVkImLfI7EcaQkoYP+W48dJ
 rBdKmVZsRbjaSEAvNo70/6hU0OL2y8jlmgGK1JAa56X/nmvJ0F4ahm3Ixqzxh4NBvkSH
 AyeoDSS9RYqFGSUJJqjbbaQB6vPe3Vs1TKAhf1ZUyGDOlPe0KSyfF6SJv5Xq+iUWcz8i
 rNgS5XT2ZrONpF0RWd/6BwrQWcmArQvWYaNGWFKymH5zvehpCOXJ/MO/2Tzr5RmWQjU2
 YR4w==
X-Gm-Message-State: AOAM531LlxG+4qe9iqx4L/61E2hHfiT+3WcPOnMbCF0ksq/i8BltNMYI
 adqkBpd4h80/VNoUyZsnm0nl4429rOpXM7/n
X-Google-Smtp-Source: ABdhPJzqyEARnmMFggCNVL9K74ae2rORG8Tggym6AuAlb0PSlrOYzpFyOXH5umcsuXMSZWUPXyH5xQ==
X-Received: by 2002:aa7:d758:0:b0:42d:b3ca:d647 with SMTP id
 a24-20020aa7d758000000b0042db3cad647mr53677342eds.63.1654903196272; 
 Fri, 10 Jun 2022 16:19:56 -0700 (PDT)
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com.
 [209.85.128.54]) by smtp.gmail.com with ESMTPSA id
 f22-20020a0564021e9600b0043173ab6728sm356880edf.7.2022.06.10.16.19.55
 for <v9fs-developer@lists.sourceforge.net>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 10 Jun 2022 16:19:55 -0700 (PDT)
Received: by mail-wm1-f54.google.com with SMTP id
 x6-20020a1c7c06000000b003972dfca96cso338695wmc.4
 for <v9fs-developer@lists.sourceforge.net>;
 Fri, 10 Jun 2022 16:19:55 -0700 (PDT)
X-Received: by 2002:a05:600c:3485:b0:39c:7db5:f0f7 with SMTP id
 a5-20020a05600c348500b0039c7db5f0f7mr2015707wmq.8.1654903194928; Fri, 10 Jun
 2022 16:19:54 -0700 (PDT)
MIME-Version: 1.0
References: <165489100590.703883.11054313979289027590.stgit@warthog.procyon.org.uk>
In-Reply-To: <165489100590.703883.11054313979289027590.stgit@warthog.procyon.org.uk>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Fri, 10 Jun 2022 16:19:38 -0700
X-Gmail-Original-Message-ID: <CAHk-=wgeW2nF5MZzmx6cPmS8mbq0kjP+VF5V76LNDLDjJ64hUA@mail.gmail.com>
Message-ID: <CAHk-=wgeW2nF5MZzmx6cPmS8mbq0kjP+VF5V76LNDLDjJ64hUA@mail.gmail.com>
To: David Howells <dhowells@redhat.com>
X-Spam-Score: 0.1 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Fri, Jun 10,
 2022 at 12:56 PM David Howells <dhowells@redhat.com>
 wrote: > > Here are some cleanups, one for afs and a couple for netfs: Pulled, 
 Linus Content analysis details:   (0.1 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.50 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.50 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1nznv9-00ESZ5-5L
Subject: Re: [V9fs-developer] [RFC][PATCH 0/3] netfs, afs: Cleanups
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
Cc: CIFS <linux-cifs@vger.kernel.org>, "open list:NFS, SUNRPC,
 AND..." <linux-nfs@vger.kernel.org>, Jeff Layton <jlayton@kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linux-cachefs@redhat.com, linux-fsdevel <linux-fsdevel@vger.kernel.org>,
 v9fs-developer@lists.sourceforge.net, ceph-devel@vger.kernel.org,
 linux-erofs@lists.ozlabs.org, linux-afs@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Fri, Jun 10, 2022 at 12:56 PM David Howells <dhowells@redhat.com> wrote:
>
> Here are some cleanups, one for afs and a couple for netfs:

Pulled,

               Linus


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
