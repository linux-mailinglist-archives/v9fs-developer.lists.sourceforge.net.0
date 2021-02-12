Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A729631A2EC
	for <lists+v9fs-developer@lfdr.de>; Fri, 12 Feb 2021 17:41:38 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1lAbVg-0005vb-Qu; Fri, 12 Feb 2021 16:41:36 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <dwysocha@redhat.com>) id 1lAbVg-0005vT-39
 for v9fs-developer@lists.sourceforge.net; Fri, 12 Feb 2021 16:41:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ft1B0dmqfZyPUoyDvwnAfTze1mns3d3CFcFjBHQ5YEA=; b=fcAu+CkWZpEw2nyid94Xzw+DZr
 lKRNzjp+mMH+rlP1WxMEoKkc4mii+IfojvARMGa9xuE4Ra+LcdbpdP1QGlZ9696p06VMrfYUAYGcz
 C3YlQAawwKP1W6tu+EMMZRbsUsEFxf3v4cULir9xpKZ/InI5/GdoDy90IdVFELmppIoY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=ft1B0dmqfZyPUoyDvwnAfTze1mns3d3CFcFjBHQ5YEA=; b=Am8Mq83y+42JrY7T+BLcry+zti
 9sjd7zRutvCCn3Cl+AV46U6/9/M+GPVrQZOxdMcK5cCt4wWwv7WxPWH5votsuCrwhvdzA48KYy5M4
 Nrx+g8OU0HAx5hIp9F4vc0C/USNjEAwANPk2NJMBWrfbO7QVIV+op81XHvpCbCTC9ca8=;
Received: from us-smtp-delivery-124.mimecast.com ([216.205.24.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.3)
 id 1lAbVV-0001yO-2q
 for v9fs-developer@lists.sourceforge.net; Fri, 12 Feb 2021 16:41:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1613148078;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=ft1B0dmqfZyPUoyDvwnAfTze1mns3d3CFcFjBHQ5YEA=;
 b=aNRt9Ee3sV2xdj2/G38YJVresg4eVETnPdP9xDWtHOPJMqJe0efT11qDj6gc7WEQExSZGP
 N7/Y+Gsts8Ww7CUbqTDLJqyaxZ5vprO30+olfCn9kIjcjU4OnFYwHGeWme5ErQJOdiPEfT
 cJJ9GTyWMLNlBxzi8f30HU2JxnQJd9A=
Received: from mail-ed1-f69.google.com (mail-ed1-f69.google.com
 [209.85.208.69]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-261-nlJl-fOOPpK7p9XMa95OFA-1; Fri, 12 Feb 2021 11:41:16 -0500
X-MC-Unique: nlJl-fOOPpK7p9XMa95OFA-1
Received: by mail-ed1-f69.google.com with SMTP id f21so301580edx.10
 for <v9fs-developer@lists.sourceforge.net>;
 Fri, 12 Feb 2021 08:41:16 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ft1B0dmqfZyPUoyDvwnAfTze1mns3d3CFcFjBHQ5YEA=;
 b=BWld3OaEagMigACh0lUNT07q0vrOTv2I847165JJzFgC2j4kipOd3Y3ZyYCFC1ydMT
 EWvXndeeHDvAiL/ttWzZ6RP5D66wZGErrZ87B1Of3dUze0LnzGw1VbrrN4Q/4DLJq3Iv
 UCQMt4P1CX//nDaneCGLW4FhA5mtNHPJAUhtObowDDSJr4cw4dWzx2lSLGjCdEDF/nOR
 v9D/f9r2rqxfsoetHN5LW1tRHP4pkC5c/DtuLvOpeB0yVbvvKr9FeDH2RqjzHZP+oM1o
 QX47EnJjHzV+9HOG5sJ/qlTA5MEnTBUVQ33cyc4VvI306hrIztKKoIRBsw0G7DbJqAfS
 8aIQ==
X-Gm-Message-State: AOAM531djws3xATvLuYRfBiIkxJ7tn9KDyQhe15tiXGOPP/v75W7t1Qp
 zB9srmVHi8IoADWQrDrmYU7TsnpaNrT4fFERwAwnl6CVapstOQG41RCujdD5MWcsgiuGJ0zUUkA
 6vNTpLgohs+9027v/QfTqUfIpa9ef95pGCA4/MUl0O2Ekr+seMmI=
X-Received: by 2002:a17:906:1681:: with SMTP id
 s1mr3897290ejd.229.1613148074948; 
 Fri, 12 Feb 2021 08:41:14 -0800 (PST)
X-Google-Smtp-Source: ABdhPJwTIgnx7LJiTFOW+mhqlshoZww0YFi52MiJxBqcnsY+RGcoAoY9xA8AY8Yu0JSD5ZHRlga8wGOKDsNd1QerD6Y=
X-Received: by 2002:a17:906:1681:: with SMTP id
 s1mr3897262ejd.229.1613148074745; 
 Fri, 12 Feb 2021 08:41:14 -0800 (PST)
MIME-Version: 1.0
References: <CAHk-=wj-k86FOqAVQ4ScnBkX3YEKuMzqTEB2vixdHgovJpHc9w@mail.gmail.com>
 <591237.1612886997@warthog.procyon.org.uk>
 <1330473.1612974547@warthog.procyon.org.uk>
 <1330751.1612974783@warthog.procyon.org.uk>
 <CAHk-=wjgA-74ddehziVk=XAEMTKswPu1Yw4uaro1R3ibs27ztw@mail.gmail.com>
 <27816.1613085646@warthog.procyon.org.uk>
In-Reply-To: <27816.1613085646@warthog.procyon.org.uk>
From: David Wysochanski <dwysocha@redhat.com>
Date: Fri, 12 Feb 2021 11:40:38 -0500
Message-ID: <CALF+zOkRhZ6SfotHbWFMDYJ-qJxxOSMd8SUbrXd4w7rpOMoPKw@mail.gmail.com>
To: David Howells <dhowells@redhat.com>
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=dwysocha@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-Spam-Score: -0.7 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: linux-foundation.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [216.205.24.124 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.6 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1lAbVV-0001yO-2q
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
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Matthew Wilcox <willy@infradead.org>, linux-afs@lists.infradead.org,
 Steve French <sfrench@samba.org>, linux-cachefs <linux-cachefs@redhat.com>,
 Alexander Viro <viro@zeniv.linux.org.uk>,
 Trond Myklebust <trondmy@hammerspace.com>,
 linux-fsdevel <linux-fsdevel@vger.kernel.org>,
 v9fs-developer@lists.sourceforge.net, ceph-devel@vger.kernel.org,
 Linus Torvalds <torvalds@linux-foundation.org>,
 Anna Schumaker <anna.schumaker@netapp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Thu, Feb 11, 2021 at 6:20 PM David Howells <dhowells@redhat.com> wrote:
>
> Linus Torvalds <torvalds@linux-foundation.org> wrote:
>
> > Also, honestly, I really *REALLY* want your commit messages to talk
> > about who has been cc'd, who has been part of development, and point
> > to the PUBLIC MAILING LISTS WHERE THAT DISCUSSION WAS TAKING PLACE, so
> > that I can actually see that "yes, other people were involved"
>
> Most of the development discussion took place on IRC and waving snippets of
> code about in pastebin rather than email - the latency of email is just too
> high.  There's not a great deal I can do about that now as I haven't kept IRC
> logs.  I can do that in future if you want.
>
> > No, I don't require this in general, but exactly because of the
> > history we have, I really really want to see that. I want to see a
> >
> >    Link: https://lore.kernel.org/r/....
>
> I can add links to where I've posted the stuff for review.  Do you want this
> on a per-patch basis or just in the cover for now?
>
> Also, do you want things like these:
>
>  https://lore.kernel.org/linux-fsdevel/3326.1579019665@warthog.procyon.org.uk/
>  https://lore.kernel.org/linux-fsdevel/4467.1579020509@warthog.procyon.org.uk/
>
> which pertain to the overall fscache rewrite, but where the relevant changes
> didn't end up included in this particular patchset?  Or this:
>
>  https://listman.redhat.com/archives/linux-cachefs/2020-December/msg00000.html
>
> where someone was testing the overall patchset of which this is a subset?
>
> > and the Cc's - or better yet, the Reviewed-by's etc - so that when I
> > get a pull request, it really is very obvious to me when I look at it
> > that others really have been involved.
> >
> > So if I continue to see just
> >
> >     Signed-off-by: David Howells <dhowells@redhat.com>
> >
> > at the end of the commit messages, I will not pull.
> >
> > Yes, in this thread a couple of people have piped up and said that
> > they were part of the discussion and that they are interested, but if
> > I have to start asking around just to see that, then it's too little,
> > too late.
> >
> > No more of this "it looks like David Howells did things in private". I
> > want links I can follow to see the discussion, and I really want to
> > see that others really have been involved.
> >
> > Ok?
>
> Sure.
>
> I can go and edit in link pointers into the existing patches if you want and
> add Jeff's Review-and-tested-by into the appropriate ones.  You would be able
> to compare against the existing tag, so it wouldn't entirely invalidate the
> testing.
>
You can add my Tested-by for your fscache-next branch series ending at
commit  235299002012 netfs: Hold a ref on a page when PG_private_2 is set
This series includes your commit c723f0232c9f8928b3b15786499637bda3121f41
discussed a little earlier in this email thread.

I ran over 24 hours of NFS tests (unit, connectathon, xfstests,
various servers and all NFS versions) on your latest series
and it looks good.  Note I did not run against pNFS servers
due to known issue, and I did not do more advanced tests like
error injections.  I did get one OOM on xfstest generic/551 on
one testbed, but that same' test passed on another testbed,
so it's not clear what is happening there and it could very
well be testbed or NFS related.

In addition, I reviewed various patches in the series, especially the
API portions of the netfs patches, so for those, Reviewed-by is
appropriate as well. I have also reviewed some of the internals
of the other infrastructure patches, but my review is more limited
there.





> Also, do you want links inserting into all the patches of the two keyrings
> pull requests I've sent you?
>
> David
>



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
