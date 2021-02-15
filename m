Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A50331B3D1
	for <lists+v9fs-developer@lfdr.de>; Mon, 15 Feb 2021 02:02:15 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1lBSHF-0004sE-4w; Mon, 15 Feb 2021 01:02:13 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <torvalds@linuxfoundation.org>) id 1lBSHE-0004rz-3j
 for v9fs-developer@lists.sourceforge.net; Mon, 15 Feb 2021 01:02:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=8oLEqXUvdqy1QH/cRggvF58640ngzAUjBT8Tfk3Wjwg=; b=hmfkHUCirYuJTiOCMqPWxGzvgM
 50sTWAhdIm604pe+TEZASWSEBFnZFFI02Y2BCNL4gCNSPJYFssEL4AMqK9JO2W5uQwzcLnx3Nqny3
 QzYfmZY//Z5GFM+FNlKngmfFZ6v3mBXALkh3GM/JZZtr2Yam1QA6kAXUBuloWi+ezqzs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=8oLEqXUvdqy1QH/cRggvF58640ngzAUjBT8Tfk3Wjwg=; b=JD4a7O5VXf/R39dV3y2RKugFfE
 ic1Zi01kg1b/NNVFHrKlLuWYna9wLtPLFJ/RFVTf6j0qhdVaGHgBbtb7NpiGWf9UyQZK0TcfG0Od6
 hONTjX7TndTF+AcAof3LqpjdjWVHMPsIpIx0p0evXqdF84MrE9VigyyC3oN1s4Gh+qQ8=;
Received: from mail-lf1-f51.google.com ([209.85.167.51])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1lBSH1-0000Ww-Md
 for v9fs-developer@lists.sourceforge.net; Mon, 15 Feb 2021 01:02:11 +0000
Received: by mail-lf1-f51.google.com with SMTP id f1so7849457lfu.3
 for <v9fs-developer@lists.sourceforge.net>;
 Sun, 14 Feb 2021 17:01:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux-foundation.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=8oLEqXUvdqy1QH/cRggvF58640ngzAUjBT8Tfk3Wjwg=;
 b=eb+VDAyVwB6RZ6vXNDSIXjjY5/KGJonBZpcw4InpSNpoqcKC9wCYBknhMsgf9sPklg
 GzCvnbIRKgTg7gtA7teRfKAGGFk9BR9qw3HHsG7GJ3+trFjsmHXqEUXRQMhyaGXIHFPG
 +BYG0bBsO6r2Y7DOTssLQQLnPqsDN5e1ysQAo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=8oLEqXUvdqy1QH/cRggvF58640ngzAUjBT8Tfk3Wjwg=;
 b=tVpOR3etqXeMO8kVAugMnk+FOl/6j2KdGAJ9yDwx8/Z0tUcsc6YypLWpadFuMk5Suj
 X2nnxGlVJ0WUiUEc+chmA7fAE5e56hvArh1bJ1uZXJr/8xwfKa8Uxw1gPlR0bAwCe8ky
 5Srfldleo68Kigja3KskySCIjXy3SQWxO2lxabJUP+HmkOaoPz8NyewaaEO2b2wG/Jlw
 cKU83zklyg+DbicVk/klV4mgK6MSgj7FyYFKzhrORbchSS/2wLv3Umn6fSYVmqdlTg0Y
 VkiLqEOJMJ7yzMvZ6H0ErHVys1mMM7bltXOZLPCcmcNN8NoTbMhHtVFfaPTV/ffbfsoW
 04UA==
X-Gm-Message-State: AOAM531HIKt+nlFuyaUomE05UFSyvwR7tlLrdS7guAl5NO1MUpN2Y5d9
 53jkoCYsbCFKMDn3Pdnvgwio52CfsccGAQ==
X-Google-Smtp-Source: ABdhPJx6iHA/5+LCfDOA6vb5ThjV+6lnYBzbaaOG9I8Q8xWmZT51zjjiDWOQ+eYFf8gPUjSWuxP/6w==
X-Received: by 2002:ac2:491d:: with SMTP id n29mr7361856lfi.18.1613350912892; 
 Sun, 14 Feb 2021 17:01:52 -0800 (PST)
Received: from mail-lj1-f175.google.com (mail-lj1-f175.google.com.
 [209.85.208.175])
 by smtp.gmail.com with ESMTPSA id a31sm3324320ljq.109.2021.02.14.17.01.52
 for <v9fs-developer@lists.sourceforge.net>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 14 Feb 2021 17:01:52 -0800 (PST)
Received: by mail-lj1-f175.google.com with SMTP id g11so5906756ljj.7
 for <v9fs-developer@lists.sourceforge.net>;
 Sun, 14 Feb 2021 17:01:52 -0800 (PST)
X-Received: by 2002:a05:651c:112:: with SMTP id
 a18mr8181174ljb.465.1613350911576; 
 Sun, 14 Feb 2021 17:01:51 -0800 (PST)
MIME-Version: 1.0
References: <CAHk-=wj-k86FOqAVQ4ScnBkX3YEKuMzqTEB2vixdHgovJpHc9w@mail.gmail.com>
 <591237.1612886997@warthog.procyon.org.uk>
 <1330473.1612974547@warthog.procyon.org.uk>
 <1330751.1612974783@warthog.procyon.org.uk>
 <CAHk-=wjgA-74ddehziVk=XAEMTKswPu1Yw4uaro1R3ibs27ztw@mail.gmail.com>
 <27816.1613085646@warthog.procyon.org.uk>
 <CAHk-=wi68OpbwBm6RCodhNUyg6x8N7vi5ufjRtosQSPy_EYqLA@mail.gmail.com>
 <860729.1613348577@warthog.procyon.org.uk>
In-Reply-To: <860729.1613348577@warthog.procyon.org.uk>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Sun, 14 Feb 2021 17:01:35 -0800
X-Gmail-Original-Message-ID: <CAHk-=wh7xY3UF7zEc0BNVNjOox59jYBW-Gfi7=emm+BXPWc6nQ@mail.gmail.com>
Message-ID: <CAHk-=wh7xY3UF7zEc0BNVNjOox59jYBW-Gfi7=emm+BXPWc6nQ@mail.gmail.com>
To: David Howells <dhowells@redhat.com>
X-Spam-Score: 0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.167.51 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1lBSH1-0000Ww-Md
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

On Sun, Feb 14, 2021 at 4:23 PM David Howells <dhowells@redhat.com> wrote:
>
> Anyway, I have posted my fscache modernisation patches multiple times for
> public review, I have tried to involve the wider community in aspects of the
> development on public mailing lists and I have been including the maintainers
> in to/cc.

So then add those links and the cc's to the commit logs, so that I can
*see* them.

I'm done with this discussion.

If I see a pull request from you, I DO NOT WANT TO HAVE TO HAVE A
WEEK-LONG EMAIL THREAD ABOUT HOW I CANNOT SEE THAT IT HAS EVER SEEN
ANY REVIEW.

So if all I see is "Signed-off-by:" from you, I will promptly throw
that pull request into the garbage, because it's just not worth my
time to try to have to get you kicking and screaming to show that
others have been involved.

Can you not understand that?

When I get that pull request, I need to see that yes, this has been
reviewed, people have been involved, and yes, it's been in linux-next.

I want to see "reviewed-by" and "tested-by", I want to see "cc", and I
want to see links to submission threads with discussion showing that
others actually were involved.

I do *not* want to see just a single signed-off-by line from you, and
then have to ask for "has anybody else actually seen this and reviewed
it".

Look, here's an entirely unrelated example from a single fairly recent
trivial one-liner memory leak fix:

    Fixes: 87c715dcde63 ("scsi: scsi_debug: Add per_host_store option")
    Link: https://lore.kernel.org/r/20210208111734.34034-1-mlombard@redhat.com
    Acked-by: Douglas Gilbert <dgilbert@interlog.com>
    Signed-off-by: Maurizio Lombardi <mlombard@redhat.com>
    Signed-off-by: Martin K. Petersen <martin.petersen@oracle.com>

that's from a quite a trivial commit. Yes, it's trivial, but it could
still be wrong, of course. And if somebody ever reports that it causes
problems despite how simple it was, look at what I have: I have three
people to contact, and I have a pointer to the actual original
submission of the patch.

Do we have that for all our commits? No. But it's also not at all
unusual any more, and in fact many commits have even more, with
testing etc.

And yes, sometimes the test results and acks come back later after
you've already pushed the changes out etc, and no, it's generally not
worth rebasing for that - maybe others have now started to rely on
whatever public branch you have. Which is why the "Link:" is useful,
so that if things come in later, the discussion can still be found.
But quite often, you shouldn't have pushed out some final branch
before you've gotten at least *some* positive response from people, so
I do kind of expect some "Acked-by" etc in the commit itself.

THAT is what you need to aim for.

And yes, I'm picking on you. Because we've had this problem before.
I've complained when you've sent me pull requests that don't even
build, that you in fact had been told by linux-next didn't build, and
you still sent them to me.

And as a result, I've asked for more involvement from other people before.

So now I'm clarifying that requirement - I  absolutely need to see
that it has actually seen testing, that it has seen other people being
involved, and that it isn't just you throwing spaghetti at the wall to
see what sticks.

And I'm not going to do that for every pull request. I want to see
that data *in* the pull request itself.

            Linus


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
