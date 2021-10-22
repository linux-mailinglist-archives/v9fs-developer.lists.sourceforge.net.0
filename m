Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C51D1437F4F
	for <lists+v9fs-developer@lfdr.de>; Fri, 22 Oct 2021 22:25:15 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1me16H-0004Fp-Mz; Fri, 22 Oct 2021 20:25:13 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <torvalds@linuxfoundation.org>) id 1me16G-0004Fb-Cp
 for v9fs-developer@lists.sourceforge.net; Fri, 22 Oct 2021 20:25:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=VL4lca6iHsx6oQ/wg6H7clLpP/uNe7ZsGNa7hBqT+88=; b=NXtM4kCfU1bTJH8+RSsscsDmou
 25AGZDEE7XWy0shoObHmtGKJXH9wyqumIoIpwxOIyv/sgS1yf7P73JhBmozx9vD8Sb0l2dQLLjUoL
 Q+rrWUD9cGtY2QC9PoWIo3SkTAc6S9VTw4QKJ17A3SAhvz+HC718DooUFeN0q4+cX5Fg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=VL4lca6iHsx6oQ/wg6H7clLpP/uNe7ZsGNa7hBqT+88=; b=Pbo9HK5llcD+QWPegIm1aJOkvj
 GSKAMSFU3NB4UUeUC4ud+v5pf9A7C6xnKuUD9lRgxVqt8DSFLzUwta+e3qEkS8apdG49VUpYCIysG
 0QziuZsF2UCGKW1suOKaQezTcnJP7ifbvqnZ2SWJKcabeYvc4Roxdik5oDY2eIIsZN4Y=;
Received: from mail-lj1-f182.google.com ([209.85.208.182])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1me16B-00CN0g-9A
 for v9fs-developer@lists.sourceforge.net; Fri, 22 Oct 2021 20:25:12 +0000
Received: by mail-lj1-f182.google.com with SMTP id l5so1244552lja.13
 for <v9fs-developer@lists.sourceforge.net>;
 Fri, 22 Oct 2021 13:25:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux-foundation.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=VL4lca6iHsx6oQ/wg6H7clLpP/uNe7ZsGNa7hBqT+88=;
 b=Xm2NbmUwKJoW+515TkyEWt2nuCvePzoqxLYJAFPnOe+lbdK5JzMmyaBBRaBeBIIVr6
 5Y2Ltv7T1OVUR3yQVc1hEpZ4faavbhalIte0tSbwN89GggYecoOBuJphVvusUfCFdqxX
 UgjPbDpPnxZpf2xYUJtsUcqxyBe+gW6XgMyZo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=VL4lca6iHsx6oQ/wg6H7clLpP/uNe7ZsGNa7hBqT+88=;
 b=kDmHdlHVjilac9UYjQAvYE5Zr7YQI0dqaPwNiOdgPAao9/ZB3QqoZYydt8vH87ZwIp
 OLErixkW3nY2oG8QBUIgtK/YlObOUVo4VKgLsssbD2vrkf6DZLv1zmXcl9WjC/bsWYQs
 HMkGoDk/jVTkALYpzaiIO9JQiKTwXLxtgWM8Lc5McuadmU4lWpZQYW6oexaqt3IYs9M1
 BtC8RRLpKn9DgzGzPqDfVAGgsuLROPZPz1l0FCapNnrFz8lFzol07VA1eY0HUdPrIz4p
 9M11/fRJ7uz+gEHLG/ovYdAPLjWHAJuoi61c8i5djY1jUbsvkzKnWpWC9q/uP1w7wLeg
 o2Ag==
X-Gm-Message-State: AOAM532XfTxJLCHVVeCES/fM/6ZdYfUqK7l3YEz8iTyo+VnzkCpN43AP
 EXk+EB/i7bWTpRcAfAdJBja28N2Py9dK9znu9Xo=
X-Google-Smtp-Source: ABdhPJxMHfDG4kEGZAPUMpae4W0MM3wWitKI+sLENufrknr+Me9SVTLtTJC+PB0lsdwi0QqEJI97aA==
X-Received: by 2002:a05:651c:38c:: with SMTP id
 e12mr2196824ljp.21.1634934300264; 
 Fri, 22 Oct 2021 13:25:00 -0700 (PDT)
Received: from mail-lj1-f176.google.com (mail-lj1-f176.google.com.
 [209.85.208.176])
 by smtp.gmail.com with ESMTPSA id b15sm824283lfb.255.2021.10.22.13.24.57
 for <v9fs-developer@lists.sourceforge.net>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 22 Oct 2021 13:24:58 -0700 (PDT)
Received: by mail-lj1-f176.google.com with SMTP id e19so1075437ljk.12
 for <v9fs-developer@lists.sourceforge.net>;
 Fri, 22 Oct 2021 13:24:57 -0700 (PDT)
X-Received: by 2002:a2e:9945:: with SMTP id r5mr2174611ljj.249.1634934297582; 
 Fri, 22 Oct 2021 13:24:57 -0700 (PDT)
MIME-Version: 1.0
References: <163492911924.1038219.13107463173777870713.stgit@warthog.procyon.org.uk>
 <CAHk-=wjmx7+PD0hzWj5Bg2b807xYD2KCZApTvFje=ufo+MxBMQ@mail.gmail.com>
 <1041557.1634931616@warthog.procyon.org.uk>
 <CAHk-=wg2LQtWC3e4Z4EGQzEmsLjmk6jm67Ga6UMLY1MH6iDcNQ@mail.gmail.com>
In-Reply-To: <CAHk-=wg2LQtWC3e4Z4EGQzEmsLjmk6jm67Ga6UMLY1MH6iDcNQ@mail.gmail.com>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Fri, 22 Oct 2021 10:24:41 -1000
X-Gmail-Original-Message-ID: <CAHk-=wi7K64wo4PtROxq_cLhfq-c-3aCbW5CjRfnKYA439YFUw@mail.gmail.com>
Message-ID: <CAHk-=wi7K64wo4PtROxq_cLhfq-c-3aCbW5CjRfnKYA439YFUw@mail.gmail.com>
To: David Howells <dhowells@redhat.com>
X-Spam-Score: 0.1 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Fri, Oct 22,
 2021 at 9:58 AM Linus Torvalds <torvalds@linux-foundation.org>
 wrote: > > and if (c) is the thing that all the network filesystem people
 want, > then what the heck is the point in keep [...] 
 Content analysis details:   (0.1 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.182 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: linux-foundation.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.182 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-Headers-End: 1me16B-00CN0g-9A
Subject: Re: [V9fs-developer] [PATCH v2 00/53] fscache: Rewrite index API
 and management system
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
Cc: Latchesar Ionkov <lucho@ionkov.net>, Marc Dionne <marc.dionne@auristor.com>,
 linux-afs@lists.infradead.org, Shyam Prasad N <nspmangalore@gmail.com>,
 CIFS <linux-cifs@vger.kernel.org>,
 "Matthew Wilcox \(Oracle\)" <willy@infradead.org>,
 Jeff Layton <jlayton@kernel.com>, linux-cachefs@redhat.com,
 Trond Myklebust <trondmy@hammerspace.com>,
 v9fs-developer@lists.sourceforge.net, Eric Van Hensbergen <ericvh@gmail.com>,
 Alexander Viro <viro@zeniv.linux.org.uk>, ceph-devel@vger.kernel.org,
 Trond Myklebust <trond.myklebust@hammerspace.com>, "open list:NFS, SUNRPC,
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

On Fri, Oct 22, 2021 at 9:58 AM Linus Torvalds
<torvalds@linux-foundation.org> wrote:
>
> and if (c) is the thing that all the network filesystem people want,
> then what the heck is the point in keeping dead code around? At that
> point, all the rename crap is just extra work, extra noise, and only a
> distraction. There's no upside that I can see.

Again, I'm not a fan of (c) as an option, but if done, then the
simplest model would appear to be:

 - remove the old fscache code, obviously disabling the Kconfig for it
for each filesystem, all in one fell swoop.

 - add the new fscache code (possibly preferably in sane chunks that
explains the parts).

 - then do a "convert to new world order and enable" commit
individually for each filesystem

but as mentioned, there's no sane way to bisect things, or have a sane
development history in this kind of situation.

                Linus


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
