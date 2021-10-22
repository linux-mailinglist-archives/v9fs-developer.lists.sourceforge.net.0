Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E1B2C437F1B
	for <lists+v9fs-developer@lfdr.de>; Fri, 22 Oct 2021 22:06:01 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1me0nf-0006iG-Nq; Fri, 22 Oct 2021 20:05:59 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <torvalds@linuxfoundation.org>) id 1me0nd-0006i8-RK
 for v9fs-developer@lists.sourceforge.net; Fri, 22 Oct 2021 20:05:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=OyTESXkijXq7pnJGTLADUG+9VskuYUOHv78z9I+1K/4=; b=TrNryegsS7o9nu6mL4x1LaL6qY
 jeO7O5MQ3FAPz7bi6K2s7D7a1eQdPfzByDPw9ggw6iryOr22qiibR15XMiKAkB7g2uEqs7r4UnOek
 mWTxGnS2xnNgi+MwBIjMd9aOyNEqgrbJPbTrtbzBMkZ2mQEMGSBV7pm9drpM9ZiIbs1Q=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=OyTESXkijXq7pnJGTLADUG+9VskuYUOHv78z9I+1K/4=; b=Z5eVz9NisepJF8giDB8+6jbg/9
 VOu1ey3timqS+TxzaRmBG43RZ+KHVUj+Jrnp5fckGjG/ufi229YQAisqoUj8bKJ0EIloh9oQzLOYh
 eUhYCX9reN7nFAXJEsztrSzzDlgAG8DzQIg/XNjqmw4O13/bBGTK79levHj38T+JgCFo=;
Received: from mail-lf1-f54.google.com ([209.85.167.54])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1me0nd-00CL9h-9k
 for v9fs-developer@lists.sourceforge.net; Fri, 22 Oct 2021 20:05:57 +0000
Received: by mail-lf1-f54.google.com with SMTP id j21so11446548lfe.0
 for <v9fs-developer@lists.sourceforge.net>;
 Fri, 22 Oct 2021 13:05:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux-foundation.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=OyTESXkijXq7pnJGTLADUG+9VskuYUOHv78z9I+1K/4=;
 b=hM/XQhqnuwClqFHl0xmMUwVFiZI2zWX0Fsvmyov2HtrZf+eht/rZgRbn7tgV6JR5/t
 oaUf+A7xemNq2BqlSo7CgdMlfz4uNIfFdFMMG/GRhS1ONKFBhEIzCT11CSLKS+TAVP9U
 qBUMJuZF6FSADRHZc19vWgXXWGONFvtcXh0sM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=OyTESXkijXq7pnJGTLADUG+9VskuYUOHv78z9I+1K/4=;
 b=7FH4YGxbsRRBZX4ATCJ7QbT6i2rXWJecfBCB+EKvqj0UdQuYs9XbTAfSZmm8Zpm4c+
 Rm7j8Kq9wPshjHs41wk34gTmnV79pTiDhiXb90Sf6dEeDS1HNpw+AMsM40oLXZlqnbqz
 0zRb6A37E7+mBrV5gHs7WT/rDPaOvrJtJXdgB3M5OVcOPOgXBAIPsohgue1l6zRGpWE3
 bfIezD4Jp6VQbkaQ/EP9La8L2yp2PWwiZ8GxX81QMVi0IvKKXI4JzX2FMGll3BzXOjdQ
 D2JGS2VI3wH+EtyjM1XorBMcLbDvpkrzQme0VM3HgjaT2//g36V04uxsfMEQFvzl1iDA
 79Qg==
X-Gm-Message-State: AOAM530WygVhPDRlhoAMLJsfmPcNQCEkxQkbARWOqrfh5NdTO4l8k+P6
 V/ud3VJpguflkV4b3rUVFbRY/DJcVNU+y0LQMg4=
X-Google-Smtp-Source: ABdhPJwJn6oDsiKotC95blO9e8d0tLVCnKHftYlmWfMck9woo0i4jKSFGYfkJ/JX8R3z7jOcjUhfpw==
X-Received: by 2002:a2e:9e53:: with SMTP id g19mr2048315ljk.389.1634932709568; 
 Fri, 22 Oct 2021 12:58:29 -0700 (PDT)
Received: from mail-lj1-f169.google.com (mail-lj1-f169.google.com.
 [209.85.208.169])
 by smtp.gmail.com with ESMTPSA id g6sm815518lfu.245.2021.10.22.12.58.28
 for <v9fs-developer@lists.sourceforge.net>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 22 Oct 2021 12:58:28 -0700 (PDT)
Received: by mail-lj1-f169.google.com with SMTP id n7so681710ljp.5
 for <v9fs-developer@lists.sourceforge.net>;
 Fri, 22 Oct 2021 12:58:28 -0700 (PDT)
X-Received: by 2002:a2e:5cc7:: with SMTP id q190mr2066391ljb.494.1634932708154; 
 Fri, 22 Oct 2021 12:58:28 -0700 (PDT)
MIME-Version: 1.0
References: <163492911924.1038219.13107463173777870713.stgit@warthog.procyon.org.uk>
 <CAHk-=wjmx7+PD0hzWj5Bg2b807xYD2KCZApTvFje=ufo+MxBMQ@mail.gmail.com>
 <1041557.1634931616@warthog.procyon.org.uk>
In-Reply-To: <1041557.1634931616@warthog.procyon.org.uk>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Fri, 22 Oct 2021 09:58:12 -1000
X-Gmail-Original-Message-ID: <CAHk-=wg2LQtWC3e4Z4EGQzEmsLjmk6jm67Ga6UMLY1MH6iDcNQ@mail.gmail.com>
Message-ID: <CAHk-=wg2LQtWC3e4Z4EGQzEmsLjmk6jm67Ga6UMLY1MH6iDcNQ@mail.gmail.com>
To: David Howells <dhowells@redhat.com>
X-Spam-Score: 0.1 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Fri, Oct 22,
 2021 at 9:40 AM David Howells <dhowells@redhat.com>
 wrote: > > What's the best way to do this? Is it fine to disable caching
 in all the > network filesystems and then directly remove t [...] 
 Content analysis details:   (0.1 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: linux-foundation.org]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.54 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.54 listed in wl.mailspike.net]
X-Headers-End: 1me0nd-00CL9h-9k
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

On Fri, Oct 22, 2021 at 9:40 AM David Howells <dhowells@redhat.com> wrote:
>
> What's the best way to do this?  Is it fine to disable caching in all the
> network filesystems and then directly remove the fscache and cachefiles
> drivers and replace them?

So the basic issue with this whole "total rewrite" is that there's no
way to bisect anything.

And there's no way for people to say "I don't trust the rewrite, I
want to keep using the old tested model".

Which makes this all painful and generally the wrong way to do
anything like this, and there's fundamentally no "best way".

The real best way would be if the conversion could be done truly
incrementally. Flag-days simply aren't good for development, because
even if the patch to enable the new code might be some trivial
one-liner, that doesn't _help_ anything. The switch-over switches from
one code-base to another, with no help from "this is where the problem
started".

So in order of preference:

 (a) actual incremental changes where the code keeps working all the
time, and no flag days

 (b) same interfaces, so at least you can do A/B testing and people
can choose one or the other

 (c) total rewrite

and if (c) is the thing that all the network filesystem people want,
then what the heck is the point in keeping dead code around? At that
point, all the rename crap is just extra work, extra noise, and only a
distraction. There's no upside that I can see.

                   Linus


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
