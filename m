Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 42CF031718B
	for <lists+v9fs-developer@lfdr.de>; Wed, 10 Feb 2021 21:44:03 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1l9wLA-0006an-He; Wed, 10 Feb 2021 20:44:00 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <torvalds@linuxfoundation.org>) id 1l9wL9-0006ab-Qa
 for v9fs-developer@lists.sourceforge.net; Wed, 10 Feb 2021 20:43:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=bFCBVLmx4m3P8OJ7FexI4xTU+D+dqeOPB5L3zdP1j98=; b=KLsifVkOoHIQgBYrFAEKtiFKBc
 4whBuviyzi/Ksarcjm7JH8gt0FT3gk1tVZ/fB8YqGDnlRTli0L0lDby4BBiQIQcQbM2lGXjdZ3V9p
 lDGK9xmTd/sA9OBGcDxPO9CERUEt/Zw5xb9rgoa2fYSfXg4jwWngfvCQMpeIlPAPI/Pw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=bFCBVLmx4m3P8OJ7FexI4xTU+D+dqeOPB5L3zdP1j98=; b=gJsdJN/o0D6gsZC9GCRmdRRKcp
 ABte1BluK4L4sgYNA6VZ5c9+Ys00w6VF6iDxYW0PW3XrDUudueHiRB2vqbhSsob9ACGTni/i/hi2z
 whGyGtJYbMEBE9Urm9QVashFBbPV1RuBqzplsdjTdMLSJenuvJrwo/fW9ER1F0GcQk+s=;
Received: from mail-lf1-f48.google.com ([209.85.167.48])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1l9wKv-003aG0-RI
 for v9fs-developer@lists.sourceforge.net; Wed, 10 Feb 2021 20:43:59 +0000
Received: by mail-lf1-f48.google.com with SMTP id f1so4918750lfu.3
 for <v9fs-developer@lists.sourceforge.net>;
 Wed, 10 Feb 2021 12:43:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux-foundation.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=bFCBVLmx4m3P8OJ7FexI4xTU+D+dqeOPB5L3zdP1j98=;
 b=OlXMEGE3+YXDW20u82up+ZZJxFuT5KQPVaOZp56fIviL/ca54YrjE5bQPiM0jLbtr5
 JephDlBWc6ihBoJg5k8R1M7+hSbeoGkpREvy/8A8Bsg5/X4GhbjclPWfb060aUds7Xkf
 2bFaMcZ2LOg9RoALDj7udW/xyJ4i9lrqIzZcg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=bFCBVLmx4m3P8OJ7FexI4xTU+D+dqeOPB5L3zdP1j98=;
 b=SXs97ESYrcoB/gs+AG8NGhgNtLAsIrMG2YhzofVNL7xCDopCx4LrbSsWKK0ac22+vZ
 iAnUF7fegSXmKIMnUhc6Vn3RyTfvCU5asZPNs7K4lgojPOHlJcspd6nAaMgZwxorCdDr
 T1nOIbtKoPSHf0G/+EZGwdb8QuNSrWITZAdSKoWQAPieQt3bEQcQRL4d8xd6nu21TLHX
 rXdXX/jPQRSuMmom5AjbnrOVrAc5WeJBJt/Jogh+EY8gw0ASJhHKuYdMdXO4zEqIM4Ko
 Phee+UTEn8+WfG6TM7uIOoYnkqYdXPYN/qxMXJv1kPgW/SwsnVOd6l9RTiaH05IsLEKR
 1sgw==
X-Gm-Message-State: AOAM531zweVfOOWp+Az5C8Qo8eyRb8UOVhz7Mu87rfGZYKDG/HG+mUBn
 ND5hSXmkkqeZ4Fea7zBOxzTjToZ4sNbsiA==
X-Google-Smtp-Source: ABdhPJx5uA4xEgXJgysQjeypcogYb5GMLRoQQpL2TD6uWaqh9Tfwz7QOssUG1riZhgaUV5INWzsS7g==
X-Received: by 2002:ac2:5e7b:: with SMTP id a27mr2490211lfr.647.1612989818657; 
 Wed, 10 Feb 2021 12:43:38 -0800 (PST)
Received: from mail-lf1-f44.google.com (mail-lf1-f44.google.com.
 [209.85.167.44])
 by smtp.gmail.com with ESMTPSA id h15sm448308lfc.221.2021.02.10.12.43.35
 for <v9fs-developer@lists.sourceforge.net>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 10 Feb 2021 12:43:36 -0800 (PST)
Received: by mail-lf1-f44.google.com with SMTP id d3so4860088lfg.10
 for <v9fs-developer@lists.sourceforge.net>;
 Wed, 10 Feb 2021 12:43:35 -0800 (PST)
X-Received: by 2002:a05:6512:a8c:: with SMTP id
 m12mr2551518lfu.253.1612989815438; 
 Wed, 10 Feb 2021 12:43:35 -0800 (PST)
MIME-Version: 1.0
References: <CAHk-=wj-k86FOqAVQ4ScnBkX3YEKuMzqTEB2vixdHgovJpHc9w@mail.gmail.com>
 <591237.1612886997@warthog.procyon.org.uk>
 <1330473.1612974547@warthog.procyon.org.uk>
 <1330751.1612974783@warthog.procyon.org.uk>
In-Reply-To: <1330751.1612974783@warthog.procyon.org.uk>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Wed, 10 Feb 2021 12:43:19 -0800
X-Gmail-Original-Message-ID: <CAHk-=wjgA-74ddehziVk=XAEMTKswPu1Yw4uaro1R3ibs27ztw@mail.gmail.com>
Message-ID: <CAHk-=wjgA-74ddehziVk=XAEMTKswPu1Yw4uaro1R3ibs27ztw@mail.gmail.com>
To: David Howells <dhowells@redhat.com>
X-Spam-Score: 0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.167.48 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.48 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1l9wKv-003aG0-RI
Subject: Re: [V9fs-developer] [GIT PULL] fscache: I/O API modernisation and
 netfs helper library
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
 AND..." <linux-nfs@vger.kernel.org>, Jeff Layton <jlayton@redhat.com>,
 David Wysochanski <dwysocha@redhat.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Matthew Wilcox <willy@infradead.org>, linux-afs@lists.infradead.org,
 Steve French <sfrench@samba.org>, linux-cachefs@redhat.com,
 Alexander Viro <viro@zeniv.linux.org.uk>,
 Trond Myklebust <trondmy@hammerspace.com>,
 linux-fsdevel <linux-fsdevel@vger.kernel.org>,
 v9fs-developer@lists.sourceforge.net, ceph-devel@vger.kernel.org,
 Anna Schumaker <anna.schumaker@netapp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Wed, Feb 10, 2021 at 8:33 AM David Howells <dhowells@redhat.com> wrote:
>
> Then I could follow it up with this patch here, moving towards dropping the
> PG_fscache alias for the new API.

So I don't mind the alias per se, but I did mind the odd mixing of
names for the same thing.

So I think your change to make it be named "wait_on_page_private_2()"
fixed that mixing, but I also think that it's probably then a good
idea to have aliases in place for filesystems that actually include
the fscache.h header.

Put another way: I think that it would be even better to simply just
have a function like

   static inline void wait_on_page_fscache(struct page *page)
   {
        if (PagePrivate2(page))
                wait_on_page_bit(page, PG_private_2);
  }

and make that be *not* in <linux/pagemap.h>, but simply be in
<linux/fscache.h> under that big comment about how PG_private_2 is
used for the fscache bit. You already have that comment, putting the
above kind of helper function right there would very much explain why
a "wait for fscache bit" function then uses the PagePrivate2 function
to test the bit. Agreed?

Alternatively, since that header file already has

    #define PageFsCache(page)               PagePrivate2((page))

you could also just write the above as

   static inline void wait_on_page_fscache(struct page *page)
   {
        if (PageFsCache(page))
                wait_on_page_bit(page, PG_fscache);
  }

and now it is even more obvious. And there's no odd mixing of
"fscache" and "private_2", it's all consistent.

IOW, I'm not against "wait_on_page_fscache()" as a function, but I
*am* against the odd _mixing_ of things without a big explanation,
where the code itself looks very odd and questionable.

And I think the "fscache" waiting functions should not be visible to
any core VM or filesystem code - it should be limited explicitly to
those filesystems that use fscache, and include that header file.

Wouldn't that make sense?

Also, honestly, I really *REALLY* want your commit messages to talk
about who has been cc'd, who has been part of development, and point
to the PUBLIC MAILING LISTS WHERE THAT DISCUSSION WAS TAKING PLACE, so
that I can actually see that "yes, other people were involved"

No, I don't require this in general, but exactly because of the
history we have, I really really want to see that. I want to see a

   Link: https://lore.kernel.org/r/....

and the Cc's - or better yet, the Reviewed-by's etc - so that when I
get a pull request, it really is very obvious to me when I look at it
that others really have been involved.

So if I continue to see just

    Signed-off-by: David Howells <dhowells@redhat.com>

at the end of the commit messages, I will not pull.

Yes, in this thread a couple of people have piped up and said that
they were part of the discussion and that they are interested, but if
I have to start asking around just to see that, then it's too little,
too late.

No more of this "it looks like David Howells did things in private". I
want links I can follow to see the discussion, and I really want to
see that others really have been involved.

Ok?

                  Linus


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
