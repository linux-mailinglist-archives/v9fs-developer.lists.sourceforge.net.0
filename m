Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E91F4905D4
	for <lists+v9fs-developer@lfdr.de>; Mon, 17 Jan 2022 11:20:14 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1n9P7U-0008DO-RL; Mon, 17 Jan 2022 10:20:11 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <torvalds@linuxfoundation.org>) id 1n9P7T-0008DI-8z
 for v9fs-developer@lists.sourceforge.net; Mon, 17 Jan 2022 10:20:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=4/B8S0T6l/cNTFCwbllAbkeryrIurv7WGfpD2SElg7M=; b=fCzZDqp13FY7cCqYLh0xSJCgkw
 jLJyhu0QaurTN4BKA45TP4wbHS4DHoURv7TmqeNGoP7mMpmmkqX1vWNfsAtQQDLWjLpBnaKnnyATk
 h3Y/fhs5IgiuM/m4MOXdZn/VBXKLFyfWa6qj5GGyI+lVM0CXYKbQ8NpVPVrnUEIAejoQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=4/B8S0T6l/cNTFCwbllAbkeryrIurv7WGfpD2SElg7M=; b=PSpyj4u9raIUgWbXCM/yExxaA6
 uMnPP2dHbDPwjTqGov87QvB38s1w/BFXozpUXTO3jpIqfLMW/rWU9SMvgicLvA5BzduDekaAWxWW5
 6Q0MmRRxJcbZ5yS/F888dKCyrh1Q/TzTcCyhIKm0S3BN6Qd1RXG8cZo+tURasGe9F5KA=;
Received: from mail-ed1-f51.google.com ([209.85.208.51])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1n9P7L-000fid-1m
 for v9fs-developer@lists.sourceforge.net; Mon, 17 Jan 2022 10:20:10 +0000
Received: by mail-ed1-f51.google.com with SMTP id z22so63460646edd.12
 for <v9fs-developer@lists.sourceforge.net>;
 Mon, 17 Jan 2022 02:20:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux-foundation.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=4/B8S0T6l/cNTFCwbllAbkeryrIurv7WGfpD2SElg7M=;
 b=dv+17V5MOPEzuLfM1Cm4a6q4iFsZiMxvmb+0viRdfYd80RUx9gSegypMRnWQrTQsgq
 ELfJeQS4rdN44RZDM7QPPQ+LhOWupRIi2hAcGelXeM8j3ZRa1Ovn58l4OFMKbb0SCu+G
 sDzPWHuK7OWM2HO8kcdaLHy+dfHG+z9C+iDOU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=4/B8S0T6l/cNTFCwbllAbkeryrIurv7WGfpD2SElg7M=;
 b=ijNkX5IiL1z+qlXBdYv48cvdrVslH0vFcReqvOgrtI5OjW/SNsRQ4SETQ1luggrE6i
 2U0iSCSfO9BGTrGc5mAmytmpHStPOASMS4j9K9QdD2sQR76ohgmjqY5ns/VwBpGqh/TF
 TdTcVtpgzNzLgc8iIEMlLVhbfKIq9kQf/9LO3ScrbklzAKfo3fxXLwTDYJhS484spXRS
 lEcnKdXs1VE9ZunOuqrTgDjrV1WAB6Sp3Mx57R/BkP3GHdBZqIxZGIQkMCvE/p76+3aJ
 VK31H5fYHUhCTwMe3LODJ8RHEV8SWF4ErrDQsq/fJaZuPhUg5MqqNBEo9LNMET+U3Rxr
 vDgg==
X-Gm-Message-State: AOAM530uzeBU/XHxJ44DQzxvZ8j7GkbxuS0FYRDqIMw2HhoUzpBoEity
 WicnwI1Q0LRRSj00rBHyYjOuemrz6bFBTXhq
X-Google-Smtp-Source: ABdhPJzVmZMwiJUyAHRN2YEnuvPlsA8Ux+vksW1DSHHWQWqVVa+5pK8OyQgTFZiL/J/8fiZXhGfBgA==
X-Received: by 2002:a17:906:478d:: with SMTP id
 cw13mr6852192ejc.614.1642414796525; 
 Mon, 17 Jan 2022 02:19:56 -0800 (PST)
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com.
 [209.85.128.47])
 by smtp.gmail.com with ESMTPSA id kg19sm2212666ejc.109.2022.01.17.02.19.56
 for <v9fs-developer@lists.sourceforge.net>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 17 Jan 2022 02:19:56 -0800 (PST)
Received: by mail-wm1-f47.google.com with SMTP id v123so19182556wme.2
 for <v9fs-developer@lists.sourceforge.net>;
 Mon, 17 Jan 2022 02:19:56 -0800 (PST)
X-Received: by 2002:a05:600c:3482:: with SMTP id
 a2mr3476469wmq.152.1642414785683; 
 Mon, 17 Jan 2022 02:19:45 -0800 (PST)
MIME-Version: 1.0
References: <2752208.1642413437@warthog.procyon.org.uk>
In-Reply-To: <2752208.1642413437@warthog.procyon.org.uk>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Mon, 17 Jan 2022 12:19:29 +0200
X-Gmail-Original-Message-ID: <CAHk-=wjQG5HnwQD98z8de1EvRzDnebZxh=gQUVTKCn0DOp7PQw@mail.gmail.com>
Message-ID: <CAHk-=wjQG5HnwQD98z8de1EvRzDnebZxh=gQUVTKCn0DOp7PQw@mail.gmail.com>
To: David Howells <dhowells@redhat.com>
X-Spam-Score: 0.1 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Mon, Jan 17,
 2022 at 11:57 AM David Howells <dhowells@redhat.com>
 wrote: > > Do you have an opinion on whether it's permissible for a filesystem
 to write > into the read() buffer beyond the amount [...] 
 Content analysis details:   (0.1 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.51 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.51 listed in wl.mailspike.net]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Headers-End: 1n9P7L-000fid-1m
Subject: Re: [V9fs-developer] Out of order read() completion and buffer
 filling beyond returned amount
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
Cc: Latchesar Ionkov <lucho@ionkov.net>, Peter Zijlstra <peterz@infradead.org>,
 Linux-MM <linux-mm@kvack.org>, Marc Dionne <marc.dionne@auristor.com>,
 linux-afs@lists.infradead.org, Shyam Prasad N <nspmangalore@gmail.com>,
 CIFS <linux-cifs@vger.kernel.org>, Matthew Wilcox <willy@infradead.org>,
 linux-cachefs@redhat.com, Trond Myklebust <trondmy@hammerspace.com>,
 v9fs-developer@lists.sourceforge.net, Alexander Viro <viro@zeniv.linux.org.uk>,
 ceph-devel@vger.kernel.org, "open list:NFS, SUNRPC,
 AND..." <linux-nfs@vger.kernel.org>, Dave Wysochanski <dwysocha@redhat.com>,
 Jeff Layton <jlayton@kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Steve French <sfrench@samba.org>,
 linux-fsdevel <linux-fsdevel@vger.kernel.org>,
 Omar Sandoval <osandov@osandov.com>,
 Anna Schumaker <anna.schumaker@netapp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Mon, Jan 17, 2022 at 11:57 AM David Howells <dhowells@redhat.com> wrote:
>
> Do you have an opinion on whether it's permissible for a filesystem to write
> into the read() buffer beyond the amount it claims to return, though still
> within the specified size of the buffer?

I'm pretty sure that would seriously violate POSIX in the general
case, and maybe even break some programs that do fancy buffer
management (ie I could imagine some circular buffer thing that expects
any "unwritten" ('unread'?) parts to stay with the old contents)

That said, that's for generic 'read()' cases for things like tty's or
pipes etc that can return partial reads in the first place.

If it's a regular file, then any partial read *already* violates
POSIX, and nobody sane would do any such buffer management because
it's supposed to be a 'can't happen' thing.

And since you mention DIO, that's doubly true, and is already outside
basic POSIX, and has already violated things like "all or nothing"
rules for visibility of writes-vs-reads (which admittedly most Linux
filesystems have violated even outside of DIO, since the strictest
reading of the rules are incredibly nasty anyway). But filesystems
like XFS which took some of the strict rules more seriously already
ignored them for DIO, afaik.

So I suspect you're fine. Buffered reads might care more, but even
there the whole "you can't really validly have partial reads anyway"
thing is a bigger violation to begin with.

With DIO, I suspect nobody cares about _those_ kinds of semantic
details. People who use DIO tend to care primarily about performance -
it's why they use it, after all - and are probably more than happy to
be lax about other rules.

But maybe somebody would prefer to have a mount option to specify just
how out-of-spec things can be (ie like the traditional old nfs 'intr'
thing). If only for testing, and for 'in case some odd app breaks'

                Linus


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
