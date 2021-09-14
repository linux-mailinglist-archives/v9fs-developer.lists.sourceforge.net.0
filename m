Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FB1940B499
	for <lists+v9fs-developer@lfdr.de>; Tue, 14 Sep 2021 18:27:50 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1mQBHg-00029p-Jm; Tue, 14 Sep 2021 16:27:48 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <torvalds@linuxfoundation.org>) id 1mQBHe-00029M-Hn
 for v9fs-developer@lists.sourceforge.net; Tue, 14 Sep 2021 16:27:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=3dYD2uKNORcxZ6YMCdwcOxjjHXEclNcfa/CTjAP47gc=; b=GyqkjHF5usoB2LVcsA/iKSNd0X
 zes21ojrfC3Ko5X93k3jFcYpIcIaDwg5G6saC/iXNoLRE1P/AgHq2HaOJyQdE6gECjAMyUQ+Ahkg4
 lY/tX595YBYJNza7L9SUqThkcwWB7MKX76DBJsTGYjvFLDU4jY7R5vTIlrvjKchLbdLc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=3dYD2uKNORcxZ6YMCdwcOxjjHXEclNcfa/CTjAP47gc=; b=iYAxYsqfB/hwXhLRRsUVTyk8NL
 /GGmKSWuLVmTo00+5oarcWqPmXERmHqF7lxq6RU0kfgTmybA2cu8pJFfpxNhj0ZsGEPQU90sb+NQb
 a1VcXh22JTVfm+z06Sesl6eVV7x2fKwFYDm3PFR182ZHtKwyNWMd7H5Vn5joGusbf9Ts=;
Received: from mail-ed1-f47.google.com ([209.85.208.47])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1mQBHZ-00AaBw-Ch
 for v9fs-developer@lists.sourceforge.net; Tue, 14 Sep 2021 16:27:46 +0000
Received: by mail-ed1-f47.google.com with SMTP id v5so20853137edc.2
 for <v9fs-developer@lists.sourceforge.net>;
 Tue, 14 Sep 2021 09:27:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux-foundation.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=3dYD2uKNORcxZ6YMCdwcOxjjHXEclNcfa/CTjAP47gc=;
 b=aWJRDZPRQV27jEUKoc4qE6zGbRoWbKwm9kcYSPpoNuqjBLGs9WKOvCqbYQZ04P3jy1
 4wsAum1KxojNT2yyO1DmteAlpzy+vIjQ6bjIvwLNB76bbbmj19VrvzgTZnYd6uwWG6vX
 yWKNOrbr5bi7cuk7kXat3qOTmWTGGPHSlwsBA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=3dYD2uKNORcxZ6YMCdwcOxjjHXEclNcfa/CTjAP47gc=;
 b=xFKbhtFXfRrOJAaDiDpEK5QtQnK8kHmcI3CeqWboiSHJFG4pbBY0JrnykxXcZ2ZZX6
 m4NbMpa8Jh1jSuiZm4TdxZNCYHaMCbs8t3GL8vxWGPB6/595YMFGiEJ+Iu7KFhCVc8CN
 Q3RJzJ1WoRtYGJhmu3cJDPBr8RY6LChlCLprfZvRFKt2+nffbURYBt1JoF8uK49C/r44
 laEltH14+WWPp6T6VsINOhVIzMXKWNMOG0MrqgP/1ue5Ii9w6RfBMcjnjRjN4eg8fvoa
 V7WOdIMIhVbSNm7J0t7AByUaDsqf0+/mmxYJRQ0a91lHZedZLLAWArVed3xlhGEzF2cj
 rxxg==
X-Gm-Message-State: AOAM531SrNUhyUd2WGWz6WBrcqVfIYU0Eq6HKHkh7liZ7qSUpmq6lvzI
 bxunFNYR1hZviOgzX8PvQq+IFN30KTHZd3bKgBE=
X-Google-Smtp-Source: ABdhPJxalC3bhXNNfpzgLQ3kWITQwaapIXOGoIoO/lydnEREeIzWMOCkWeM7QmckwEYCCzCOB3qYBg==
X-Received: by 2002:aa7:c81a:: with SMTP id a26mr20231996edt.323.1631636854785; 
 Tue, 14 Sep 2021 09:27:34 -0700 (PDT)
Received: from mail-wr1-f52.google.com (mail-wr1-f52.google.com.
 [209.85.221.52])
 by smtp.gmail.com with ESMTPSA id 11sm5102839ejw.50.2021.09.14.09.27.34
 for <v9fs-developer@lists.sourceforge.net>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 14 Sep 2021 09:27:34 -0700 (PDT)
Received: by mail-wr1-f52.google.com with SMTP id b6so21179952wrh.10
 for <v9fs-developer@lists.sourceforge.net>;
 Tue, 14 Sep 2021 09:27:34 -0700 (PDT)
X-Received: by 2002:a05:6512:3da5:: with SMTP id
 k37mr14013881lfv.655.1631636533920; 
 Tue, 14 Sep 2021 09:22:13 -0700 (PDT)
MIME-Version: 1.0
References: <163162767601.438332.9017034724960075707.stgit@warthog.procyon.org.uk>
In-Reply-To: <163162767601.438332.9017034724960075707.stgit@warthog.procyon.org.uk>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Tue, 14 Sep 2021 09:21:58 -0700
X-Gmail-Original-Message-ID: <CAHk-=wiVK+1CyEjW8u71zVPK8msea=qPpznX35gnX+s8sXnJTg@mail.gmail.com>
Message-ID: <CAHk-=wiVK+1CyEjW8u71zVPK8msea=qPpznX35gnX+s8sXnJTg@mail.gmail.com>
To: David Howells <dhowells@redhat.com>
X-Spam-Score: 0.1 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Tue, Sep 14,
 2021 at 6:54 AM David Howells <dhowells@redhat.com>
 wrote: > > (1) A simple fallback API is added that can read or write a single
 page > synchronously. The functions for this have "dep [...] 
 Content analysis details:   (0.1 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.47 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.47 listed in wl.mailspike.net]
X-Headers-End: 1mQBHZ-00AaBw-Ch
Subject: Re: [V9fs-developer] [RFC PATCH 0/8] fscache: Replace and remove
 old I/O API
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
Cc: Shyam Prasad N <nspmangalore@gmail.com>, CIFS <linux-cifs@vger.kernel.org>,
 "open list:NFS, SUNRPC, AND..." <linux-nfs@vger.kernel.org>,
 linux-afs@lists.infradead.org, Jeff Layton <jlayton@redhat.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Matthew Wilcox <willy@infradead.org>,
 Trond Myklebust <trond.myklebust@hammerspace.com>,
 Steve French <sfrench@samba.org>, linux-cachefs@redhat.com,
 Alexander Viro <viro@zeniv.linux.org.uk>,
 Trond Myklebust <trondmy@hammerspace.com>,
 linux-fsdevel <linux-fsdevel@vger.kernel.org>,
 v9fs-developer@lists.sourceforge.net, ceph-devel@vger.kernel.org,
 Anna Schumaker <anna.schumaker@netapp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Tue, Sep 14, 2021 at 6:54 AM David Howells <dhowells@redhat.com> wrote:
>
>  (1) A simple fallback API is added that can read or write a single page
>      synchronously.  The functions for this have "deprecated" in their names
>      as they have to be removed at some point.

I'm looking at those patches, and there's no way I'll apply anything
that starts out with moving to a "deprecated" interface.

Call it "fallback" or "simple" or something that shows the intent, but
no, I'm not taking patches that introduce a _new_ interface and call
it "deprecated".

            Linus


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
